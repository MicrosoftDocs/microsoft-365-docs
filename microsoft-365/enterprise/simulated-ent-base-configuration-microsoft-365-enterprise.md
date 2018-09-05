---
title: "Simulated enterprise base configuration for Microsoft 365"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 08/09/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
- Ent_TLGs
ms.assetid: 6f916a77-301c-4be2-b407-6cec4d80df76
description: Use this Test Lab Guide to create a simulated enterprise test environment for testing Microsoft 365 Enterprise.
---

# The simulated enterprise base configuration

This article provides you with step-by-step instructions to create a simplified environment for Microsoft 365 Enterprise that includes:

- Office 365 E5 and EMS E5 trial or permanent subscriptions.
- A simplified organization intranet connected to the Internet, consisting of three virtual machines on an Azure virtual network (DC1, APP1, and CLIENT1).
 
![Phase 4 of the simulated enterprise base configuration](media/simulated-ent-base-configuration-microsoft-365-enterprise/Phase4.png)

You can use the resulting environment to test the features and functionality of [Microsoft 365 Enterprise](https://www.microsoft.com/microsoft-365/enterprise), with additional Microsoft 365 Enterprise [Test Lab Guides](m365-enterprise-test-lab-guides.md) or on your own.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> Click [here](https://aka.ms/m365etlgstack) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.

## Phase 1: Create DC1

In this phase, we create an Azure virtual network and add DC1, a virtual machine which is a domain controller for a Windows Server Active Directory (AD) domain.

First, start a Windows PowerShell command prompt on your local computer.
  
> [!NOTE]
> The following command sets use the latest version of Azure PowerShell. See [Get started with Azure PowerShell cmdlets](https://docs.microsoft.com/powershell/azureps-cmdlets-docs/). 
  
Sign in to your Azure account with the following command.
  
```
Login-AzureRMAccount
```

Get your subscription name using the following command.
  
```
Get-AzureRMSubscription | Sort Name | Select Name
```

Set your Azure subscription. Replace everything within the quotes, including the < and > characters, with the correct name.
  
```
$subscr="<subscription name>"
Get-AzureRmSubscription -SubscriptionName $subscr | Select-AzureRmSubscription
```

Next, create a new resource group for your simulated enterprise test lab. To determine a unique resource group name, use this command to list your existing resource groups.
  
```
Get-AzureRMResourceGroup | Sort ResourceGroupName | Select ResourceGroupName
```

Create your new resource group with these commands. Replace everything within the quotes, including the < and > characters, with the correct names.
  
```
$rgName="<resource group name>"
$locName="<location name, such as West US>"
New-AzureRMResourceGroup -Name $rgName -Location $locName
```

Next, you create the TestLab virtual network that will host the Corpnet subnet of the simulated enterprise environment and protect it with a network security group. Fill in the name of your resource group and run these commands at the PowerShell command prompt on your local computer.
  
```
$rgName="<name of your new resource group>"
$locName=(Get-AzureRmResourceGroup -Name $rgName).Location
$corpnetSubnet=New-AzureRMVirtualNetworkSubnetConfig -Name Corpnet -AddressPrefix 10.0.0.0/24
New-AzureRMVirtualNetwork -Name TestLab -ResourceGroupName $rgName -Location $locName -AddressPrefix 10.0.0.0/8 -Subnet $corpnetSubnet -DNSServer 10.0.0.4
$rule1=New-AzureRMNetworkSecurityRuleConfig -Name "RDPTraffic" -Description "Allow RDP to all VMs on the subnet" -Access Allow -Protocol Tcp -Direction Inbound -Priority 100 -SourceAddressPrefix Internet -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389
New-AzureRMNetworkSecurityGroup -Name Corpnet -ResourceGroupName $rgName -Location $locName -SecurityRules $rule1
$vnet=Get-AzureRMVirtualNetwork -ResourceGroupName $rgName -Name TestLab
$nsg=Get-AzureRMNetworkSecurityGroup -Name Corpnet -ResourceGroupName $rgName
Set-AzureRMVirtualNetworkSubnetConfig -VirtualNetwork $vnet -Name Corpnet -AddressPrefix "10.0.0.0/24" -NetworkSecurityGroup $nsg
```

Next, you create the DC1 virtual machine and configure it as a domain controller for the **testlab.**\<your public domain> Windows Server AD domain and a DNS server for the virtual machines of the TestLab virtual network. For example, if your public domain name is **<span>contoso</span>.com**, the DC1 virtual machine will be a domain controller for the **<span>testlab</span>.contoso.com** domain.
  
To create an Azure virtual machine for DC1, fill in the name of your resource group and run these commands at the PowerShell command prompt on your local computer.
  
```
$rgName="<resource group name>"
$locName=(Get-AzureRmResourceGroup -Name $rgName).Location
$vnet=Get-AzureRMVirtualNetwork -Name TestLab -ResourceGroupName $rgName
$pip=New-AzureRMPublicIpAddress -Name DC1-PIP -ResourceGroupName $rgName -Location $locName -AllocationMethod Dynamic
$nic=New-AzureRMNetworkInterface -Name DC1-NIC -ResourceGroupName $rgName -Location $locName -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id -PrivateIpAddress 10.0.0.4
$vm=New-AzureRMVMConfig -VMName DC1 -VMSize Standard_A1
$cred=Get-Credential -Message "Type the name and password of the local administrator account for DC1."
$vm=Set-AzureRMVMOperatingSystem -VM $vm -Windows -ComputerName DC1 -Credential $cred -ProvisionVMAgent -EnableAutoUpdate
$vm=Set-AzureRMVMSourceImage -VM $vm -PublisherName MicrosoftWindowsServer -Offer WindowsServer -Skus 2016-Datacenter -Version "latest"
$vm=Add-AzureRMVMNetworkInterface -VM $vm -Id $nic.Id
$vm=Set-AzureRmVMOSDisk -VM $vm -Name "DC1-OS" -DiskSizeInGB 128 -CreateOption FromImage -StorageAccountType "Standard_LRS"
$diskConfig=New-AzureRmDiskConfig -AccountType "Standard_LRS" -Location $locName -CreateOption Empty -DiskSizeGB 20
$dataDisk1=New-AzureRmDisk -DiskName "DC1-DataDisk1" -Disk $diskConfig -ResourceGroupName $rgName
$vm=Add-AzureRmVMDataDisk -VM $vm -Name "DC1-DataDisk1" -CreateOption Attach -ManagedDiskId $dataDisk1.Id -Lun 1
New-AzureRMVM -ResourceGroupName $rgName -Location $locName -VM $vm
```

You will be prompted for a user name and password for the local administrator account on DC1. Use a strong password and record both the name and password in a secure location.
  
Next, connect to the DC1 virtual machine.
  
### Connect to DC1 using local administrator account credentials

1. In the [Azure portal](https://portal.azure.com), click **Resource Groups >** [the name of your new resource group] **> DC1 > Connect**.
    
2. In the open pane, click **Download RDP file**. Open the DC1.rdp file that is downloaded, and then click **Connect**.
    
3. Specify the DC1 local administrator account name:
    
  - For Windows 7:
    
    In the **Windows Security** dialog box, click **Use another account**. In **User name**, type **DC1\\**[Local administrator account name].
    
  - For Windows 8 or Windows 10:
    
    In the **Windows Security** dialog box, click **More choices**, and then click **Use a different account**. In **User name**, type **DC1\\**[Local administrator account name].
    
4. In **Password**, type the password of the local administrator account, and then click **OK**.
    
5. When prompted, click **Yes**.
    
Next, add an extra data disk as a new volume with the drive letter F: with this command at an administrator-level Windows PowerShell command prompt on DC1.
  
```
Get-Disk | Where PartitionStyle -eq "RAW" | Initialize-Disk -PartitionStyle MBR -PassThru | New-Partition -AssignDriveLetter -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "WSAD Data"
```

Next, configure DC1 as a domain controller and DNS server for the **testlab.**\<your public domain> domain. Specify your public domain name, remove the \< and > characters, and then run these commands at an administrator-level Windows PowerShell command prompt on DC1.
  
```
$yourDomain="<your public domain>"
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName testlab.$yourDomain -DatabasePath "F:\NTDS" -SysvolPath "F:\SYSVOL" -LogPath "F:\Logs"
```
You will need to specify a safe mode administrator password. Store this password in a secure location.
  
Note that these commands can take a few minutes to complete.
  
After DC1 restarts, reconnect to the DC1 virtual machine.
  
### Connect to DC1 using domain credentials

1. In the [Azure portal](https://portal.azure.com), click **Resource Groups >** [your resource group name] **> DC1 > Connect**.
    
2. Run the DC1.rdp file that is downloaded, and then click **Connect**.
    
3. In **Windows Security**, click **Use another account**. In **User name**, type **TESTLAB\\**[Local administrator account name].
    
4. In **Password**, type the password of the local administrator account, and then click **OK**.
    
5. When prompted, click **Yes**.
    
Next, create a user account in Active Directory that will be used when logging in to TESTLAB domain member computers. Run this command at an administrator-level Windows PowerShell command prompt.
  
```
New-ADUser -SamAccountName User1 -AccountPassword (read-host "Set user password" -assecurestring) -name "User1" -enabled $true -PasswordNeverExpires $true -ChangePasswordAtLogon $false
```

Note that this command prompts you to supply the User1 account password. Because this account will be used for remote desktop connections for all TESTLAB domain member computers, choose a strong password. Record the User1 account password and store it in a secured location.
  
Next, configure the new User1 account as a domain, enterprise, and schema administrator. Run this command at the administrator-level Windows PowerShell command prompt.
  
```
$yourDomain="<your public domain>"
$domainName = "testlab"+$yourDomain
$userName="user1@" + $domainName
$userSID=(New-Object System.Security.Principal.NTAccount($userName)).Translate([System.Security.Principal.SecurityIdentifier]).Value
$groupNames=@("Domain Admins","Enterprise Admins","Schema Admins")
ForEach ($name in $groupNames) {Add-ADPrincipalGroupMembership -Identity $userSID -MemberOf (Get-ADGroup -Identity $name).SID.Value}
```

Close the Remote Desktop session with DC1 and then reconnect using the TESTLAB\\User1 account.
  
Next, to allow traffic for the Ping tool, run this command at an administrator-level Windows PowerShell command prompt.
  
```
Set-NetFirewallRule -DisplayName "File and Printer Sharing (Echo Request - ICMPv4-In)" -enabled True
```

This is your current configuration.
  
![Phase 1 of the simulated enterprise base configuration](media/simulated-ent-base-configuration-microsoft-365-enterprise/Phase1.png)
  
## Phase 2: Configure APP1

In this phase, you create and configure APP1, which is an application server that initially provides web and file sharing services.

To create an Azure Virtual Machine for APP1, fill in the name of your resource group and run these commands at the  command prompt on your local computer.
  
```
$rgName="<resource group name>"
$locName=(Get-AzureRmResourceGroup -Name $rgName).Location
$vnet=Get-AzureRMVirtualNetwork -Name TestLab -ResourceGroupName $rgName
$pip=New-AzureRMPublicIpAddress -Name APP1-PIP -ResourceGroupName $rgName -Location $locName -AllocationMethod Dynamic
$nic=New-AzureRMNetworkInterface -Name APP1-NIC -ResourceGroupName $rgName -Location $locName -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id
$vm=New-AzureRMVMConfig -VMName APP1 -VMSize Standard_A1
$cred=Get-Credential -Message "Type the name and password of the local administrator account for APP1."
$vm=Set-AzureRMVMOperatingSystem -VM $vm -Windows -ComputerName APP1 -Credential $cred -ProvisionVMAgent -EnableAutoUpdate
$vm=Set-AzureRMVMSourceImage -VM $vm -PublisherName MicrosoftWindowsServer -Offer WindowsServer -Skus 2016-Datacenter -Version "latest"
$vm=Add-AzureRMVMNetworkInterface -VM $vm -Id $nic.Id
$vm=Set-AzureRmVMOSDisk -VM $vm -Name "APP1-OS" -DiskSizeInGB 128 -CreateOption FromImage -StorageAccountType "Standard_LRS"
New-AzureRMVM -ResourceGroupName $rgName -Location $locName -VM $vm
```

Next, connect to the APP1 virtual machine using the APP1 local administrator account name and password, and then open a Windows PowerShell command prompt.
  
To check name resolution and network communication between APP1 and DC1, run the **ping dc1.testlab.**\<your public domain name> command and verify that there are four replies.
  
Next, join the APP1 virtual machine to the TESTLAB domain with these commands at the Windows PowerShell prompt.
  
```
$yourDomain="<your public domain name>"
Add-Computer -DomainName ("testlab" + $yourDomain)
Restart-Computer
```

Note that you must supply the TESTLAB\\User1 domain account credentials after running the **Add-Computer** command.
  
After APP1 restarts, connect to it using the TESTLAB\\User1 account, and then open an administrator-level Windows PowerShell command prompt.
  
Next, make APP1 a web server with this command at an administrator-level Windows PowerShell command prompt on APP1.
  
```
Install-WindowsFeature Web-WebServer -IncludeManagementTools
```

Next, create a shared folder and a text file within the folder on APP1 with these PowerShell commands.
  
```
New-Item -path c:\files -type directory
Write-Output "This is a shared file." | out-file c:\files\example.txt
New-SmbShare -name files -path c:\files -changeaccess TESTLAB\User1
```

This is your current configuration.
  
![Phase 2 of the simulated enterprise base configuration](media/simulated-ent-base-configuration-microsoft-365-enterprise/Phase2.png)
  
## Phase 3: Configure CLIENT1

In this phase, you create and configure CLIENT1, which acts as a typical laptop, tablet, or desktop computer on the intranet.

> [!NOTE]  
> The following command set creates CLIENT1 running Windows Server 2016 Datacenter, which can be done for all types of Azure subscriptions. If you have an Visual Studio-based Azure subscription, you can create CLIENT1 running Windows 10 with the [Azure portal](https://portal.azure.com). 
  
To create an Azure Virtual Machine for CLIENT1, fill in the name of your resource group and run these commands at the  command prompt on your local computer.
  
```
$rgName="<resource group name>"
$locName=(Get-AzureRmResourceGroup -Name $rgName).Location
$vnet=Get-AzureRMVirtualNetwork -Name TestLab -ResourceGroupName $rgName
$pip=New-AzureRMPublicIpAddress -Name CLIENT1-PIP -ResourceGroupName $rgName -Location $locName -AllocationMethod Dynamic
$nic=New-AzureRMNetworkInterface -Name CLIENT1-NIC -ResourceGroupName $rgName -Location $locName -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id
$vm=New-AzureRMVMConfig -VMName CLIENT1 -VMSize Standard_A1
$cred=Get-Credential -Message "Type the name and password of the local administrator account for CLIENT1."
$vm=Set-AzureRMVMOperatingSystem -VM $vm -Windows -ComputerName CLIENT1 -Credential $cred -ProvisionVMAgent -EnableAutoUpdate
$vm=Set-AzureRMVMSourceImage -VM $vm -PublisherName MicrosoftWindowsServer -Offer WindowsServer -Skus 2016-Datacenter -Version "latest"
$vm=Add-AzureRMVMNetworkInterface -VM $vm -Id $nic.Id
$vm=Set-AzureRmVMOSDisk -VM $vm -Name "CLIENT1-OS" -DiskSizeInGB 128 -CreateOption FromImage -StorageAccountType "Standard_LRS"
New-AzureRMVM -ResourceGroupName $rgName -Location $locName -VM $vm
```

Next, connect to the CLIENT1 virtual machine using the CLIENT1 local administrator account name and password, and then open an administrator-level Windows PowerShell command prompt.
  
To check name resolution and network communication between CLIENT1 and DC1, run the **ping dc1.testlab.**\<your public domain name> command at a Windows PowerShell command prompt and verify that there are four replies.
  
Next, join the CLIENT1 virtual machine to the TESTLAB domain with these commands at the Windows PowerShell prompt.
  
```
$yourDomain="<your public domain name>"
Add-Computer -DomainName ("testlab" + $yourDomain)
Restart-Computer
```

Note that you must supply your TESTLAB\\User1 domain account credentials after running the **Add-Computer** command.
  
After CLIENT1 restarts, connect to it using the TESTLAB\\User1 account name and password, and then open an administrator-level Windows PowerShell command prompt.
  
Next, verify that you can access web and file share resources on APP1 from CLIENT1.
  
### Verify CLIENT access to APP1

1. In Server Manager, in the tree pane, click **Local Server**.
    
2. In **Properties for CLIENT1**, click **On** next to **IE Enhanced Security Configuration**.
    
3. In **Internet Explorer Enhanced Security Configuration**, click **Off** for **Administrators** and **Users**, and then click **OK**.
    
4. From the Start screen, click **Internet Explorer**, and then click **OK**.
    
5. In the Address bar, type **http<span>://</span>app1.testab.**\<your public domain name>**/**, and then press ENTER. You should see the default Internet Information Services web page for APP1.
    
6. From the desktop taskbar, click the File Explorer icon.
    
7. In the address bar, type **\\\\app1\\Files**, and then press ENTER. You should see a folder window with the contents of the Files shared folder.
    
8. In the **Files** shared folder window, double-click the **Example.txt** file. You should see the contents of the Example.txt file.
    
9. Close the **example.txt - Notepad** and the **Files** shared folder windows.
    
This is your current configuration.
  
![Phase 3 of the simulated enterprise base configuration](media/simulated-ent-base-configuration-microsoft-365-enterprise/Phase3.png)


## Phase 4: Create your Office 365 E5 and EMS E5 subscriptions

In this phase, you create new Office 365 E5 and EMS E5 subscriptions that use a new and common Azure AD tenant, one that is separate from your production subscription. You can do this in two ways:

- Use trial subscriptions of Office 365 E5 and EMS E5. 

  The Office 365 E5 trial subscription is 30 days, which can be easily extended to 60 days. The EMS E5 trial subscription is 90 days. When the trial subscriptions expire, you must either convert them to paid subscriptions or create new trial subscriptions. Creating new trial subscriptions means you will leave your configuration, which could include complex scenarios, behind.  
- Use a separate production subscription of Microsoft 365 Enterprise with a small number of licenses.

  This is an additional cost, but ensures that you have a working test environment to try features, configurations, and scenarios that does not expire. You can use the same test environment over the long term for proofs of concept, demonstration to peers and management, and application development and testing. This is the recommended method.

### Use trial subscriptions

If you must use trial subscriptions, follow the steps in Phase 2 and Phase 3 of the [Office 365 dev/test environment](https://docs.microsoft.com/office365/enterprise/office-365-dev-test-environment).
  
Next, you sign up for the EMS E5 trial subscription and add it to the same organization as your Office 365 E5 subscription.
  
First, add the EMS E5 trial subscription and assign an EMS license to your global administrator account.
  
1. With a private instance of an Internet browser, sign in to the Office 365 portal with your global administrator account credentials. For help, see [Where to sign in to Office 365](https://support.office.com/Article/Where-to-sign-in-to-Office-365-e9eb7d51-5430-4929-91ab-6157c5a050b4).
    
2. Click the **Admin** tile.
    
3. On the **Office Admin center** tab in your browser, in the left navigation, click **Billing > Purchase services**.
    
4. On the **Purchase services** page, find the **Enterprise Mobility + Security E5** item. Hover your mouse pointer over it and click **Start free trial**.
    
5. On the **Confirm your order** page, click **Try now**.
    
6. On the **Order receipt** page, click **Continue**.
    
7. On the **Office 365 Admin center** tab in your browser, in the left navigation, click **Users > Active users**.
    
8. Click your global administrator account, and then click **Edit** for **Product licenses**.
    
9. On the **Product licenses** pane, turn the product license for **Enterprise Mobility + Security E5** to **On**, click **Save,** and then click **Close** twice.
    
> [!NOTE]
>  For a permanent test environment, create a new permanent subscription with a small number of licenses. 
  
Next, repeat steps 8 and 9 of the previous procedure for all of your other accounts (User 2, User 3, User 4, and User 5).
  
### Results

Your test environment now has:
  
- Office 365 E5 Enterprise and EMS E5 trial subscriptions sharing the same Azure AD tenant with your list of user accounts.
- All your appropriate user accounts (either just the global administrator or all five user accounts) are enabled to use Office 365 E5 and EMS E5.
    
This is your final configuration.
  
![Phase 4 of the simulated enterprise base configuration](media/simulated-ent-base-configuration-microsoft-365-enterprise/Phase4.png)
  
You are now ready to experiment with additional features of [Microsoft 365 Enterprise](https://www.microsoft.com/microsoft-365/enterprise).
  
## Next steps

Explore identity features and capabilities of Microsoft 365 Enterprise with these articles:

- [Password hash synchronization](password-hash-sync-m365-ent-test-environment.md)
- [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md)
- [Azure AD Seamless Single Sign-on](single-sign-on-m365-ent-test-environment.md)
- [Multi-factor authentication](multi-factor-authentication-microsoft-365-test-environment.md)
- [Protect global administrator accounts](protect-global-administrator-accounts-microsoft-365-test-environment.md)
- [Automatic licensing and group membership](automate-licenses-group-membership-microsoft-365-test-environment.md)
- [Azure AD Identity Protection](azure-ad-identity-protection-microsoft-365-test-environment.md)

Explore mobile device management features and capabilities of Microsoft 365 Enterprise with these articles:

- [MAM policies for your Microsoft 365 Enterprise test environment](mam-policies-for-your-microsoft-365-enterprise-dev-test-environment.md)
- [Enroll iOS and Android devices in your Microsoft 365 Enterprise test environment](enroll-ios-and-android-devices-in-your-microsoft-enterprise-365-dev-test-environ.md)
   

## See also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)
