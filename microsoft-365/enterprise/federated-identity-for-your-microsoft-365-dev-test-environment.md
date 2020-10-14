---
title: "Federated identity for your Microsoft 365 test environment"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 05/26/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
- TLG
- Ent_TLGs
ms.assetid: 65a6d687-a16a-4415-9fd5-011ba9c5fd80
description: "Summary: Configure federated authentication for your Microsoft 365 test environment."
---

# Federated identity for your Microsoft 365 test environment

*This Test Lab Guide can be used for both Microsoft 365 for enterprise and Office 365 Enterprise test environments.*

Microsoft 365 supports federated identity. This means that instead of performing the validation of credentials itself, Microsoft 365 refers the connecting user to a federated authentication server that Microsoft 365 trusts. If the user's credentials are correct, the federated authentication server issues a security token that the client then sends to Microsoft 365 as proof of authentication. Federated identity allows for the offloading and scaling up of authentication for a Microsoft 365 subscription and advanced authentication and security scenarios.
  
This article describes how to configure federated authentication for your Microsoft 365 test environment, resulting in the following:

![The federated authentication for Microsoft 365 test environment](../media/federated-identity-for-your-microsoft-365-dev-test-environment/federated-tlg-phase3.png)
  
This configuration consists of:
  
- A Microsoft 365 E5 trial or production subscription.
    
- A simplified organization intranet connected to the internet, consisting of five virtual machines on a subnet of an Azure virtual network (DC1, APP1, CLIENT1, ADFS1, and PROXY1). Azure AD Connect runs on APP1 to synchronize the list of accounts in the Active Directory Domain Services domain to Microsoft 365. PROXY1 receives the incoming authentication requests. ADFS1 validates credentials with DC1 and issues security tokens.
    
Setting up this test environment involves five phases:
- [Phase 1: Configure password hash synchronization for your Microsoft 365 test environment](#phase-1-configure-password-hash-synchronization-for-your-microsoft-365-test-environment)
- [Phase 2: Create the AD FS server](#phase-2-create-the-ad-fs-server)
- [Phase 3: Create the web proxy server](#phase-3-create-the-web-proxy-server)
- [Phase 4: Create a self-signed certificate and configure ADFS1 and PROXY1](#phase-4-create-a-self-signed-certificate-and-configure-adfs1-and-proxy1)
- [Phase 5: Configure Microsoft 365 for federated identity](#phase-5-configure-microsoft-365-for-federated-identity)
    
> [!NOTE]
> You can't configure this test environment with an Azure Trial subscription.
  
## Phase 1: Configure password hash synchronization for your Microsoft 365 test environment

Follow the instructions in [password hash synchronization for Microsoft 365](password-hash-sync-m365-ent-test-environment.md). Your resulting configuration looks like this:
  
![The simulated enterprise with password hash synchronization test environment](../media/federated-identity-for-your-microsoft-365-dev-test-environment/federated-tlg-phase1.png)
  
This configuration consists of:
  
- A Microsoft 365 E5 trial or paid subscriptions.
- A simplified organization intranet connected to the internet, consisting of the DC1, APP1, and CLIENT1 virtual machines on a subnet of an Azure virtual network. Azure AD Connect runs on APP1 to synchronize the TESTLAB Active Directory Domain Services (AD DS) domain to the Azure AD tenant of your Microsoft 365 subscriptions periodically.

## Phase 2: Create the AD FS server

An AD FS server provides federated authentication between Microsoft 365 and the accounts in the corp.contoso.com domain hosted on DC1.
  
To create an Azure virtual machine for ADFS1, fill in the name of your subscription and the resource group and Azure location for your Base Configuration, and then run these commands at the Azure PowerShell command prompt on your local computer.
  
```powershell
$subscrName="<your Azure subscription name>"
$rgName="<the resource group name of your Base Configuration>"
$vnetName="TlgBaseConfig-01-VNET"
# NOTE: If you built your simulated intranet with Azure PowerShell, comment the previous line with a "#" and remove the "#" from the next line.
#$vnetName="TestLab"
Connect-AzAccount
Select-AzSubscription -SubscriptionName $subscrName
$staticIP="10.0.0.100"
$locName=(Get-AzResourceGroup -Name $rgName).Location
$vnet=Get-AzVirtualNetwork -Name $vnetName -ResourceGroupName $rgName
$pip = New-AzPublicIpAddress -Name ADFS1-PIP -ResourceGroupName $rgName -Location $locName -AllocationMethod Dynamic
$nic = New-AzNetworkInterface -Name ADFS1-NIC -ResourceGroupName $rgName -Location $locName -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id -PrivateIpAddress $staticIP
$vm=New-AzVMConfig -VMName ADFS1 -VMSize Standard_D2_v2
$cred=Get-Credential -Message "Type the name and password of the local administrator account for ADFS1."
$vm=Set-AzVMOperatingSystem -VM $vm -Windows -ComputerName ADFS1 -Credential $cred -ProvisionVMAgent -EnableAutoUpdate
$vm=Set-AzVMSourceImage -VM $vm -PublisherName MicrosoftWindowsServer -Offer WindowsServer -Skus 2016-Datacenter -Version "latest"
$vm=Add-AzVMNetworkInterface -VM $vm -Id $nic.Id
$vm=Set-AzVMOSDisk -VM $vm -Name "ADFS-OS" -DiskSizeInGB 128 -CreateOption FromImage -StorageAccountType "Standard_LRS"
New-AzVM -ResourceGroupName $rgName -Location $locName -VM $vm
```

Next, use the [Azure portal](https://portal.azure.com) to connect to the ADFS1 virtual machine using the ADFS1 local administrator account name and password, and then open a Windows PowerShell command prompt.
  
To check name resolution and network communication between ADFS1 and DC1, run the **ping dc1.corp.contoso.com** command and check that there are four replies.
  
Next, join the ADFS1 virtual machine to the CORP domain with these commands at the Windows PowerShell prompt on ADFS1.
  
```powershell
$cred=Get-Credential -UserName "CORP\User1" -Message "Type the User1 account password."
Add-Computer -DomainName corp.contoso.com -Credential $cred
Restart-Computer
```

Your resulting configuration looks like this:
  
![The AD FS server added to the DirSync for Microsoft 365 test environment](../media/federated-identity-for-your-microsoft-365-dev-test-environment/federated-tlg-phase2.png)
  
## Phase 3: Create the web proxy server

PROXY1 provides proxying of authentication messages between users trying to authenticate and ADFS1.
  
To create an Azure virtual machine for PROXY1, fill in the name of your resource group and Azure location, and then run these commands at the Azure PowerShell command prompt on your local computer.
  
```powershell
$rgName="<the resource group name of your Base Configuration>"
$vnetName="TlgBaseConfig-01-VNET"
# NOTE: If you built your simulated intranet with Azure PowerShell, comment the previous line with a "#" and remove the "#" from the next line.
#$vnetName="TestLab"
$staticIP="10.0.0.101"
$locName=(Get-AzResourceGroup -Name $rgName).Location
$vnet=Get-AzVirtualNetwork -Name $vnetName -ResourceGroupName $rgName
$pip = New-AzPublicIpAddress -Name PROXY1-PIP -ResourceGroupName $rgName -Location $locName -AllocationMethod Static
$nic = New-AzNetworkInterface -Name PROXY1-NIC -ResourceGroupName $rgName -Location $locName -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id -PrivateIpAddress $staticIP
$vm=New-AzVMConfig -VMName PROXY1 -VMSize Standard_D2_v2
$cred=Get-Credential -Message "Type the name and password of the local administrator account for PROXY1."
$vm=Set-AzVMOperatingSystem -VM $vm -Windows -ComputerName PROXY1 -Credential $cred -ProvisionVMAgent -EnableAutoUpdate
$vm=Set-AzVMSourceImage -VM $vm -PublisherName MicrosoftWindowsServer -Offer WindowsServer -Skus 2016-Datacenter -Version "latest"
$vm=Add-AzVMNetworkInterface -VM $vm -Id $nic.Id
$vm=Set-AzVMOSDisk -VM $vm -Name "PROXY1-OS" -DiskSizeInGB 128 -CreateOption FromImage -StorageAccountType "Standard_LRS"
New-AzVM -ResourceGroupName $rgName -Location $locName -VM $vm
```

> [!NOTE]
> PROXY1 is assigned a static public IP address because you will create a public DNS record that points to it and it must not change when you restart the PROXY1 virtual machine.
  
Next, add a rule to the network security group for the CorpNet subnet to allow unsolicited inbound traffic from the internet to PROXY1's private IP address and TCP port 443. Run these commands at the Azure PowerShell command prompt on your local computer.
  
```powershell
$rgName="<the resource group name of your Base Configuration>"
Get-AzNetworkSecurityGroup -Name CorpNet -ResourceGroupName $rgName | Add-AzNetworkSecurityRuleConfig -Name "HTTPS-to-PROXY1" -Description "Allow TCP 443 to PROXY1" -Access "Allow" -Protocol "Tcp" -Direction "Inbound" -Priority 101 -SourceAddressPrefix "Internet" -SourcePortRange "*" -DestinationAddressPrefix "10.0.0.101" -DestinationPortRange "443" | Set-AzNetworkSecurityGroup
```

Next, use the [Azure portal](https://portal.azure.com) to connect to the PROXY1 virtual machine using the PROXY1 local administrator account name and password, and then open a Windows PowerShell command prompt on PROXY1.
  
To check name resolution and network communication between PROXY1 and DC1, run the **ping dc1.corp.contoso.com** command and check that there are four replies.
  
Next, join the PROXY1 virtual machine to the CORP domain with these commands at the Windows PowerShell prompt on PROXY1.
  
```powershell
$cred=Get-Credential -UserName "CORP\User1" -Message "Type the User1 account password."
Add-Computer -DomainName corp.contoso.com -Credential $cred
Restart-Computer
```

Display the public IP address of PROXY1 with these Azure PowerShell commands on your local computer.
  
```powershell
Write-Host (Get-AzPublicIpaddress -Name "PROXY1-PIP" -ResourceGroup $rgName).IPAddress
```

Next, work with your public DNS provider and create a new public DNS A record for **fs.testlab.**\<*your DNS domain name*> that resolves to the IP address displayed by the **Write-Host** command. The **fs.testlab.**\<*your DNS domain name*> is hereafter referred to as the  *federation service FQDN*.
  
Next, use the [Azure portal](https://portal.azure.com) to connect to the DC1 virtual machine using the CORP\\User1 credentials, and then run the following commands at an administrator-level Windows PowerShell command prompt:
  
```powershell
Add-DnsServerPrimaryZone -Name corp.contoso.com -ZoneFile corp.contoso.com.dns
Add-DnsServerResourceRecordA -Name "fs" -ZoneName corp.contoso.com -AllowUpdateAny -IPv4Address "10.0.0.100" -TimeToLive 01:00:00
```
These commands create an internal DNS A record so that virtual machines on the Azure virtual network can resolve the internal federation service FQDN to ADFS1's private IP address.
  
Your resulting configuration looks like this:
  
![The web application proxy server added to the DirSync for Microsoft 365 test environment](../media/federated-identity-for-your-microsoft-365-dev-test-environment/federated-tlg-phase3.png)
  
## Phase 4: Create a self-signed certificate and configure ADFS1 and PROXY1

In this phase, you create a self-signed digital certificate for your federation service FQDN and configure ADFS1 and PROXY1 as an AD FS farm.
  
First, use the [Azure portal](https://portal.azure.com) to connect to the DC1 virtual machine using the CORP\\User1 credentials, and then open an administrator-level Windows PowerShell command prompt.
  
Next, create an AD FS service account with this command at the Windows PowerShell command prompt on DC1:
  
```powershell
New-ADUser -SamAccountName ADFS-Service -AccountPassword (read-host "Set user password" -assecurestring) -name "ADFS-Service" -enabled $true -PasswordNeverExpires $true -ChangePasswordAtLogon $false
```
Note that this command prompts you to supply the account password. Choose a strong password and record it in a secured location. You will need it for this phase and for Phase 5.
  
Use the [Azure portal](https://portal.azure.com) to connect to the ADFS1 virtual machine using the CORP\\User1 credentials. Open an administrator-level Windows PowerShell command prompt on ADFS1, fill in your federation service FQDN, and then run these commands to create a self-signed certificate:
  
```powershell
$fedServiceFQDN="<federation service FQDN>"
New-SelfSignedCertificate -DnsName $fedServiceFQDN -CertStoreLocation "cert:\LocalMachine\My"
New-Item -path c:\Certs -type directory
New-SmbShare -name Certs -path c:\Certs -changeaccess CORP\User1
```

Next, use these steps to save the new self-signed certificate as a file.
  
1. Select **Start**, enter **mmc.exe**, and then press **Enter**.
    
2. Select **File** > **Add/Remove Snap-in**.
    
3. In **Add or Remove Snap-ins**, double-click **Certificates** in the list of available snap-ins, select **Computer account**, and then select **Next**.
    
4. In **Select Computer**, select **Finish**, and then select **OK**.
    
5. In the tree pane, open **Certificates (Local Computer) > Personal > Certificates**.
    
6. Select and hold (or right-click) the certificate with your federation service FQDN, select **All tasks**, and then select **Export**.
    
7. On the **Welcome** page, select **Next**.
    
8. On the **Export Private Key** page, select **Yes**, and then select **Next**.
    
9. On the **Export File Format** page, select **Export all extended properties**, and then select **Next**.
    
10. On the **Security** page, select **Password** and enter a password in **Password** and **Confirm password.**
    
11. On the **File to Export** page, select **Browse**.
    
12. Browse to the **C:\\Certs** folder, enter **SSL** in **File name**, and then select **Save.**
    
13. On the **File to Export** page, select **Next**.
    
14. On the **Completing the Certificate Export Wizard** page, select **Finish**. When prompted, select **OK**.
    
Next, install the AD FS service with this command at the Windows PowerShell command prompt on ADFS1:
  
```powershell
Install-WindowsFeature ADFS-Federation -IncludeManagementTools
```

Wait for the installation to complete.
  
Next, configure the AD FS service with these steps:
  
1. Select **Start**, and then select the **Server Manager** icon.
    
2. In the tree pane of Server Manager, select **AD FS**.
    
3. In the tool bar at the top, select the orange caution symbol, and then select **Configure the federation service on this server**.
    
4. On the **Welcome** page of the Active Directory Federation Services Configuration Wizard, select **Next**.
    
5. On the **Connect to AD DS** page, select **Next**.
    
6. On the **Specify Service Properties** page:
    
  - For **SSL Certificate**, select the down arrow, and then select the certificate with the name of your federation service FQDN.
    
  - In **Federation Service Display Name**, enter the name of your fictional organization.
    
  - Select **Next**.
    
7. On the **Specify Service Account** page, select **Select** for **Account name**.
    
8. In **Select User or Service Account**, enter **ADFS-Service**, select **Check Names**, and then select **OK**.
    
9. In **Account Password**, enter the password for the ADFS-Service account, and then select **Next**.
    
10. On the **Specify Configuration Database** page, select **Next**.
    
11. On the **Review Options** page, select **Next**.
    
12. On the **Pre-requisite Checks** page, select **Configure**.

13. On the **Results** page, select **Close**.
    
14. Select **Start**, select the power icon, select **Restart**, and then select **Continue**.
    
From the [Azure portal](https://portal.azure.com), connect to PROXY1 with the CORP\\User1 account credentials.
  
Next, use these steps to install the self-signed certificate on **both PROXY1 and APP1**.
  
1. Select **Start**, enter **mmc.exe**, and then press **Enter**.
    
2. Select **File > Add/Remove Snap-in**.
    
3. In **Add or Remove Snap-ins**, double-click **Certificates** in the list of available snap-ins, select **Computer account**, and then select **Next**.
    
4. In **Select Computer**, select **Finish**, and then select **OK**.
    
5. In the tree pane, open **Certificates (Local Computer)** > **Personal** > **Certificates**.
    
6. Select and hold (or right-click) **Personal**, select **All tasks**, and then select **Import**.
    
7. On the **Welcome** page, select **Next**.
    
8. On the **File to Import** page, enter **\\\\adfs1\\certs\\ssl.pfx**, and then select **Next**.
    
9. On the **Private key protection** page, enter the certificate password in **Password**, and then select **Next.**
    
10. On the **Certificate store** page, select **Next.**
    
11. On the **Completing** page, select **Finish**.
    
12. On the **Certificate Store** page, select **Next**.
    
13. When prompted, select **OK**.
    
14. In the tree pane, select **Certificates**.
    
15. Select and hold (or right-click) the certificate, and then select **Copy**.
    
16. In the tree pane, open **Trusted Root Certification Authorities** > **Certificates**.
    
17. Move your mouse pointer below the list of installed certificates, select and hold (or right-click), and then select **Paste**.
    
Open an administrator-level PowerShell command prompt and run the following command:
  
```powershell
Install-WindowsFeature Web-Application-Proxy -IncludeManagementTools
```

Wait for the installation to complete.
  
Use these steps to configure the web application proxy service to use ADFS1 as its federation server:
  
1. Select **Start**, and then select **Server Manager**.
    
2. In the tree pane, select **Remote Access**.
    
3. In the tool bar at the top, select the orange caution symbol, and then select **Open the Web Application Proxy Wizard**.
    
4. On the **Welcome** page of the Web Application Proxy Configuration Wizard, select **Next**.
    
5. On the **Federation Server** page:
    
  - In the **Federation service name** box, enter your federation service FQDN.
    
  - In the **User name** box, enter **CORP\\User1**.
    
  - In the **Password** box, enter the password for the User1 account.
    
  - Select **Next**.
    
6. On the **AD FS Proxy Certificate** page, select the down arrow, select the certificate with your federation service FQDN, and then select **Next**.
    
7. On the **Confirmation** page, select **Configure**.
    
8. On the **Results** page, select **Close**.
    
## Phase 5: Configure Microsoft 365 for federated identity

Use the [Azure portal](https://portal.azure.com) to connect to the APP1 virtual machine with the CORP\\User1 account credentials.
  
Use these steps to configure Azure AD Connect and your Microsoft 365 subscription for federated authentication:
  
1. From the desktop, double-click **Azure AD Connect**.
    
2. On the **Welcome to Azure AD Connect** page, select **Configure**.
    
3. On the **Additional tasks** page, select **Change user sign-in**, and then select **Next**.
    
4. On the **Connect to Azure AD** page, enter your global administrator account name and password, and then select **Next**.
    
5. On the **User sign-in** page, select **Federation with AD FS**, and then select **Next**.
    
6. On the **AD FS farm** page, select **Use an existing AD FS farm**, enter **ADFS1** in the **Server Name** box, and then select **Next**.
    
7. When prompted for server credentials, enter the credentials of the CORP\\User1 account, and then select **OK**.
    
8. On the **Domain Administrator** credentials page, enter **CORP\\User1** in the **Username** box, enter the account password in the **Password** box, and then select **Next**.
    
9. On the **AD FS service account** page, enter **CORP\\ADFS-Service** in the **Domain Username** box, enter the account password in the **Domain User Password** box, and then select **Next**.
    
10. On the **Azure AD Domain** page, in **Domain**, select the name of the domain that you previously created and added to your subscription in Phase 1, and then select **Next**.
    
11. On the **Ready to configure** page, select **Configure**.
    
12. On the **Installation complete** page, select **Verify**.
    
    You should see messages indicating that both the intranet and internet configuration was verified.
    
13. On the **Installation complete** page, select **Exit**.
    
To demonstrate that federated authentication is working:
  
1. Open a new private instance of your browser on your local computer and go to [https://admin.microsoft.com](https://admin.microsoft.com).
    
2. For the sign-in credentials, enter **user1@**\<*the domain created in Phase 1*>.
    
    For example, if your test domain is **testlab.contoso.com**, you would enter "user1@testlab.contoso.com". Press the **Tab** key or allow Microsoft 365 to automatically redirect you.
    
    You should now see a **Your connection is not private** page. You are seeing this because you installed a self-signed certificate on ADFS1 that your desktop computer can't validate. In a production deployment of federated authentication, you would use a certificate from a trusted certification authority and your users would not see this page.
    
3. On the **Your connection is not private** page, select **Advanced**, and then select **Proceed to \<*your federation service FQDN*>**. 
    
4. On the page with the name of your fictional organization, sign in with the following:
    
  - **CORP\\User1** for the name
    
  - The password for the User1 account
    
    You should see the **Microsoft Office Home** page.
    
This procedure demonstrates that your trial subscription is federated with the AD DS corp.contoso.com domain hosted on DC1. Here are the basics of the authentication process:
  
1. When you use the federated domain that you created in Phase 1 within the sign-in account name, Microsoft 365 redirects your browser to your federation service FQDN and PROXY1.
    
2. PROXY1 sends your local computer the fictional company sign-in page.
    
3. When you send CORP\\User1 and the password to PROXY1, it forwards them to ADFS1.
    
4. ADFS1 validates CORP\\User1 and the password with DC1 and sends your local computer a security token.
    
5. Your local computer sends the security token to Microsoft 365.
    
6. Microsoft 365 validates that the security token was created by ADFS1 and allows access.
    
Your trial subscription is now configured with federated authentication. You can use this dev/test environment for advanced authentication scenarios.
  
## Next step

When you are ready to deploy production-ready, high availability federated authentication for Microsoft 365 in Azure, see [Deploy high availability federated authentication for Microsoft 365 in Azure](deploy-high-availability-federated-authentication-for-microsoft-365-in-azure.md).
  
