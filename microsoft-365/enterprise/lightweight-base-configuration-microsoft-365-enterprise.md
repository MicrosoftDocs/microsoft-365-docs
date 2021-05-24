---
title: "Lightweight base configuration"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 11/14/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:
- Ent_TLGs
- seo-marvel-apr2020
ms.assetid: 6f916a77-301c-4be2-b407-6cec4d80df76
description: Use this Test Lab Guide to create a lightweight test environment for testing Microsoft 365 for enterprise.
---

# The lightweight base configuration

*This Test Lab Guide can be used for both Microsoft 365 for enterprise and Office 365 Enterprise test environments.*

This article describes how to create a simplified environment with a Microsoft 365 E5 subscription and a computer running Windows 10 Enterprise.

![The lightweight Microsoft 3656 Enterprise test environment](../media/lightweight-base-configuration-microsoft-365-enterprise/Phase4.png)

Creating a lightweight test environment involves five phases:
- [Phase 1: Create your Microsoft 365 E5 subscription](#phase-1-create-your-microsoft-365-e5-subscription)
- [Phase 2: Configure your Office 365 trial subscription](#phase-2-configure-your-office-365-trial-subscription)
- [Phase 3: Add a Microsoft 365 E5 trial subscription](#phase-3-add-a-microsoft-365-e5-trial-subscription)
- [Phase 4: Create a Windows 10 Enterprise computer](#phase-4-create-a-windows-10-enterprise-computer)
- [Phase 5: Join your Windows 10 computer to Azure AD](#phase-5-join-your-windows-10-computer-to-azure-ad)

Use the resulting environment to test the features and functionality of [Microsoft 365 for enterprise](https://www.microsoft.com/microsoft-365/enterprise).

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)
  
> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, see [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).

>[!NOTE]
>You might want to print this article to record the specific information that you will need for this environment over the 30 days of the Office 365 trial subscription. You can easily extend the trail subscription for another 30 days. For a permanent test environment, create a new paid subscription with a separate Azure AD tenant and a small number of licenses.

## Phase 1: Create your Microsoft 365 E5 subscription

We start with an Microsoft 365 E5 trial subscription and then add the Microsoft 365 E5 subscription to it.

>[!NOTE]
>We recommend that you create a trial subscription of Office 365 so that your test environment has a separate Azure AD tenant from any paid subscriptions you currently have. This separation means that you can add and remove users and groups in the test tenant without affecting your production subscriptions.

To start your Microsoft 365 E5 trial subscription, you first need a fictitious company name and a new Microsoft account.
  
1. We recommend that you use a variant of the company name Contoso for your company name, which is a fictitious company used in Microsoft sample content, but it isn't required. Record your fictitious company name here: ![Line](../media/Common-Images/TableLine.png)
    
2. To sign up for a new Microsoft account, go to [https://outlook.com](https://outlook.com) and create an account with a new email account and address. You will use this account to sign up for Office 365.
    
    - Record the first and last name of your new account here: ![Line](../media/Common-Images/TableLine.png)
    
    - Record the new email account address here: ![Line](../media/Common-Images/TableLine.png)@outlook.com
    
### Sign up for an Office 365 E5 trial subscription

1. In your browser, go to [https://aka.ms/e5trial](https://aka.ms/e5trial).
    
2. In step 1 of the **Thank you for choosing Office 365 E5** page, enter your new email account address.
3. In step 2 of the trail subscription process, enter the requested information, and then perform the verification.
4. In step 3, enter an organization name and then an account name that will be the global admin for the subscription.
5. For step 4, record the sign-in page here (select and copy): ![Line](../media/Common-Images/TableLine.png)
6. Record the user ID here: ![Line](../media/Common-Images/TableLine.png).onmicrosoft.com  
   Record the password that you entered in a secure location.
   This value will be referred to as the **global administrator name**.
7. Select **Go to Setup**.
8. In Office 365 E5 Setup, select **Continue using *your organization*.onmicrosoft.com for email and signing in**, and then select **Exit and continue later**.

You should see the Microsoft 365 admin center.
    
## Phase 2: Configure your Office 365 trial subscription

In this phase, you configure your subscription with additional users and assign them Office 365 E5 licenses.
  
To connect to your subscription with the Azure Active Directory PowerShell for Graph module from your computer, use the instructions in [Connect to Microsoft 365 with PowerShell](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).
    
In the **Windows PowerShell Credential Request** dialog box, enter the global administrator name (for example, *jdoe@contosotoycompany.onmicrosoft.com*) and password.
  
Fill in your organization name (for example, *contosotoycompany*), the two-character country code for your location, a common account password, and then run the following commands from the PowerShell prompt:

```powershell
$orgName="<organization name>"
$loc="<two-character country code, such as US>"
$commonPW="<common user account password>"
$PasswordProfile=New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password=$commonPW

$userUPN= "user2@" + $orgName + ".onmicrosoft.com"
New-AzureADUser -DisplayName "User 2" -GivenName User -SurName 2 -UserPrincipalName $userUPN -UsageLocation $loc -AccountEnabled $true -PasswordProfile $PasswordProfile -MailNickName "user2"
$License = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicense
$License.SkuId = (Get-AzureADSubscribedSku | Where-Object -Property SkuPartNumber -Value "ENTERPRISEPREMIUM" -EQ).SkuID
$LicensesToAssign = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicenses
$LicensesToAssign.AddLicenses = $License
Set-AzureADUserLicense -ObjectId $userUPN -AssignedLicenses $LicensesToAssign

$userUPN= "user3@" + $orgName + ".onmicrosoft.com"
New-AzureADUser -DisplayName "User 3" -GivenName User -SurName 3 -UserPrincipalName $userUPN -UsageLocation $loc -AccountEnabled $true -PasswordProfile $PasswordProfile -MailNickName "user3"
$License = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicense
$License.SkuId = (Get-AzureADSubscribedSku | Where-Object -Property SkuPartNumber -Value "ENTERPRISEPREMIUM" -EQ).SkuID
$LicensesToAssign = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicenses
$LicensesToAssign.AddLicenses = $License
Set-AzureADUserLicense -ObjectId $userUPN -AssignedLicenses $LicensesToAssign

$userUPN= "user4@" + $orgName + ".onmicrosoft.com"
New-AzureADUser -DisplayName "User 4" -GivenName User -SurName 4 -UserPrincipalName $userUPN -UsageLocation $loc -AccountEnabled $true -PasswordProfile $PasswordProfile -MailNickName "user4"
$License = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicense
$License.SkuId = (Get-AzureADSubscribedSku | Where-Object -Property SkuPartNumber -Value "ENTERPRISEPREMIUM" -EQ).SkuID
$LicensesToAssign = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicenses
$LicensesToAssign.AddLicenses = $License
Set-AzureADUserLicense -ObjectId $userUPN -AssignedLicenses $LicensesToAssign
```
> [!NOTE]
> The use of a common password here is for automation and ease of configuration for a test environment. Obviously, this is highly discouraged for production subscriptions. 

### Record key information for future reference

If you haven't already recorded these values, record them now:
  
- Global administrator name: ![Line](../media/Common-Images/TableLine.png).onmicrosoft.com (from step 6 of Phase 1)
    
    Also record the password for this account in a secure location.
    
- Your trial subscription organization name: ![Line](../media/Common-Images/TableLine.png) (from step 4 of Phase 1)
    
- To list the accounts for User 2, User 3, User 4, and User 5, run the following command from the Windows Azure Active Directory Module for Windows PowerShell prompt:
    
  ```powershell
  Get-AzureADUser | Sort UserPrincipalName | Select UserPrincipalName
  ```

    Record the account names here:
    
  - User 2 account name: user2@![Line](../media/Common-Images/TableLine.png).onmicrosoft.com
    
  - User 3 account name: user3@![Line](../media/Common-Images/TableLine.png).onmicrosoft.com
    
  - User 4 account name: user4@![Line](../media/Common-Images/TableLine.png).onmicrosoft.com
    
  - User 5 account name: user5@![Line](../media/Common-Images/TableLine.png).onmicrosoft.com
    
    Also record the common password for these accounts in a secure location.
   
### Using an Office 365 test environment

If you need only an Office 365 test environment, you do not need to read the rest of this article.

For additional Test Lab Guides that apply to both Office 365 and Microsoft 365, see [Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md).
  
## Phase 3: Add a Microsoft 365 E5 trial subscription

In this phase, you sign up for the Microsoft 365 E5 trial subscription and add it to the same organization as your Office 365 E5 trial subscription.
  
First, add the Microsoft 365 E5 trial subscription and assign the new Microsoft 365 license to your global administrator account.
  
1. In an internet browser private window, use your global administrator account credentials to sign in to the Microsoft 365 admin center at [https://admin.microsoft.com](https://admin.microsoft.com).
    
2. On the **Microsoft 365 admin center** page, in the left navigation, select **Billing > Purchase services**.
    
3. On the **Purchase services** page, select **Microsoft 365 E5**, and then select **Get free trial**.

4. On the **Microsoft 365 E5 Trial** page, decide to receive a text message or a phone call, enter your phone number, and then select **Text me** or **Call me**. Perform the verification.

5. On the **Confirm your order** page, select **Try now**.

6. On the **Order receipt** page, select **Continue**.

7. In the Microsoft 365 admin center, select **Users > Active users**.

8. In **Active users**, select your administrator account.

9. Select **Licenses and apps**.

10. Disable the license for Office 365 Enterprise E5 and enable the license for Microsoft 365 E5.

11. Select **Save changes**, and then close the user account information pane.

Next, repeat steps 8 through 11 of the previous procedure for all of your other accounts (User 2, User 3, User 4, and User 5).
  
> [!NOTE]
> The length of the Microsoft 365 E5 trial subscription is 30 days. For a permanent test environment, convert this trial subscription into a paid subscription with a small number of licenses.
  
Your test environment now has:
  
- A Microsoft 365 E5 trial subscription.
- All your appropriate user accounts (either just the global administrator or all five user accounts) are enabled to use Microsoft 365 E5.
    
Your resulting configuration, which adds Microsoft 365 E5, looks like this:
  
![Phase 3 of the Microsoft 3656 Enterprise test environment](../media/lightweight-base-configuration-microsoft-365-enterprise/Phase2.png)
  
## Phase 4: Create a Windows 10 Enterprise computer

In this phase, you create a standalone computer running Windows 10 Enterprise as either a physical computer, a virtual machine, or an Azure virtual machine.
  
### Physical computer

On a personal computer, install Windows 10 Enterprise. You can download the Windows 10 Enterprise trial [here](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise).
  
### Virtual machine

Use the hypervisor of your choice to create a virtual machine, and then install Windows 10 Enterprise on it. You can download the Windows 10 Enterprise trial [here](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise).
  
### Virtual machine in Azure

To create a Windows 10 virtual machine in Microsoft Azure, ***you must have a Visual Studio-based subscription***, which has access to the image for Windows 10 Enterprise. Other types of Azure subscriptions, such as trial and paid subscriptions, do not have access to this image. For the latest information, see [Use Windows client in Azure for dev/test scenarios](/azure/virtual-machines/windows/client-images).
  
> [!NOTE]
> The following command sets use the latest version of Azure PowerShell. See [Get started with Azure PowerShell cmdlets](/powershell/azureps-cmdlets-docs/). These command sets build a Windows 10 Enterprise virtual machine named WIN10 and all of its required infrastructure, including a resource group, a storage account, and a virtual network. If you are already familiar with Azure infrastructure services, adapt these instructions to suit your currently deployed infrastructure.
  
First, start a Microsoft PowerShell prompt.
  
Sign in to your Azure account with this command.
  
```powershell
Connect-AzAccount
```

Get your subscription name using this  command.
  
```powershell
Get-AzSubscription | Sort Name | Select Name
```

Set your Azure subscription. Replace everything within the quotation marks, including the \< and > characters, with the correct name.
  
```powershell
$subscr="<subscription name>"
Get-AzSubscription -SubscriptionName $subscr | Select-AzSubscription
```

Next, create a new resource group. To determine a unique resource group name, use this command to list your existing resource groups.
  
```powershell
Get-AzResourceGroup | Sort ResourceGroupName | Select ResourceGroupName
```

Create your new resource group with these commands. Replace everything within the quotation marks, including the \< and > characters, with the correct names.
  
```powershell
$rgName="<resource group name>"
$locName="<location name, such as West US>"
New-AzResourceGroup -Name $rgName -Location $locName
```

Next, create a new virtual network and the WIN10 virtual machine with these commands. When prompted, provide the name and password of the local administrator account for WIN10 and store these in a secure location.
  
```powershell
$corpnetSubnet=New-AzVirtualNetworkSubnetConfig -Name Corpnet -AddressPrefix 10.0.0.0/24
New-AzVirtualNetwork -Name "M365Ent-TestLab" -ResourceGroupName $rgName -Location $locName -AddressPrefix 10.0.0.0/8 -Subnet $corpnetSubnet
$rule1=New-AzNetworkSecurityRuleConfig -Name "RDPTraffic" -Description "Allow RDP to all VMs on the subnet" -Access Allow -Protocol Tcp -Direction Inbound -Priority 100 -SourceAddressPrefix Internet -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389
New-AzNetworkSecurityGroup -Name Corpnet -ResourceGroupName $rgName -Location $locName -SecurityRules $rule1
$vnet=Get-AzVirtualNetwork -ResourceGroupName $rgName -Name "M365Ent-TestLab"
$nsg=Get-AzNetworkSecurityGroup -Name Corpnet -ResourceGroupName $rgName
Set-AzVirtualNetworkSubnetConfig -VirtualNetwork $vnet -Name Corpnet -AddressPrefix "10.0.0.0/24" -NetworkSecurityGroup $nsg
$vnet | Set-AzVirtualNetwork
$pip=New-AzPublicIpAddress -Name WIN10-PIP -ResourceGroupName $rgName -Location $locName -AllocationMethod Dynamic
$nic=New-AzNetworkInterface -Name WIN10-NIC -ResourceGroupName $rgName -Location $locName -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id
$vm=New-AzVMConfig -VMName WIN10 -VMSize Standard_A2_V2
$cred=Get-Credential -Message "Type the name and password of the local administrator account for WIN10."
$vm=Set-AzVMOperatingSystem -VM $vm -Windows -ComputerName WIN10 -Credential $cred -ProvisionVMAgent -EnableAutoUpdate
$vm=Set-AzVMSourceImage -VM $vm -PublisherName MicrosoftWindowsDesktop -Offer Windows-10 -Skus RS3-Pro -Version "latest"
$vm=Add-AzVMNetworkInterface -VM $vm -Id $nic.Id
$vm=Set-AzVMOSDisk -VM $vm -Name WIN10-TestLab-OSDisk -DiskSizeInGB 128 -CreateOption FromImage
New-AzVM -ResourceGroupName $rgName -Location $locName -VM $vm
```

## Phase 5: Join your Windows 10 computer to Azure AD

After the physical or virtual machine with Windows 10 Enterprise is created, sign in with a local administrator account.
  
> [!NOTE]
> For a virtual machine in Azure, use  [these instructions](/azure/virtual-machines/windows/connect-logon) to connect to it.
  
Next, join the WIN10 computer to the Azure AD tenant of your Microsoft 365 E5 subscription.
  
1. On the desktop of the WIN10 computer, select **Start > Settings > Accounts > Access work or school > Connect**.
    
2. In the **Set up a work or school account** dialog box, select **Join this device to Azure Active Directory**.
    
3. In **Work or school account**, enter the global administrator account name of your Microsoft 365 E5 subscription, and then select **Next**.
    
4. In **Enter password**, enter the password for your global administrator account, and then select **Sign in**.
    
5. When prompted to make sure that this is your organization, select **Join**, and then select **Done**.
    
6. Close the settings window.
    
Next, install Microsoft 365 Apps for enterprise on the WIN10 computer:
  
1. Open the Microsoft Edge browser and sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) with your global administrator account credentials.
    
2. On the **Microsoft Office Home** tab, select **Install Office**.
    
3. When prompted with what to do, select **Run**, and then select **Yes** for **User Account Control**.
    
4. Wait for Office to complete its installation. When you see **You're all set!**, select **Close** twice.
    
Your resulting environment looks like this:

![Phase 5 of the Microsoft 3656 Enterprise test environment](../media/lightweight-base-configuration-microsoft-365-enterprise/Phase4.png)

This includes the WIN10 computer that has:

- Joined the Azure AD tenant of your Microsoft 365 E5 subscription.
- Enrolled as an Azure AD device in Microsoft Intune (EMS).
- Microsoft 365 Apps for enterprise installed.
  
You are now ready to experiment with additional features of [Microsoft 365 for enterprise](https://www.microsoft.com/microsoft-365/enterprise).
  
## Next steps

Explore these additional sets of Test Lab Guides:
  
- [Identity](m365-enterprise-test-lab-guides.md#identity)
- [Mobile device management](m365-enterprise-test-lab-guides.md#mobile-device-management)
- [Information protection](m365-enterprise-test-lab-guides.md#information-protection)
   

## See also

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Microsoft 365 for enterprise documentation](/microsoft-365-enterprise/)