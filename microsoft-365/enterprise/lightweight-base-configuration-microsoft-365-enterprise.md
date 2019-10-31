---
title: "Lightweight base configuration"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 05/01/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:
- Ent_TLGs
ms.assetid: 6f916a77-301c-4be2-b407-6cec4d80df76
description: Use this Test Lab Guide to create a lightweight test environment for testing Microsoft 365 Enterprise.
---

# The lightweight base configuration

This article provides you with step-by-step instructions to create a simplified environment with a Microsoft 365 E5 subscription and a computer running Windows 10 Enterprise. 

![The lightweight Microsoft 3656 Enterprise test environment](media/lightweight-base-configuration-microsoft-365-enterprise/Phase4.png)

Use the resulting environment to test the features and functionality of [Microsoft 365 Enterprise](https://www.microsoft.com/microsoft-365/enterprise).

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)
  
> [!TIP]
> Click [here](https://aka.ms/m365etlgstack) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.

## Phase 1: Create your Office 365 E5 subscription

Follow the steps in Phase 2 and Phase 3 of the [Office 365 dev/test environment](https://docs.microsoft.com/office365/enterprise/office-365-dev-test-environment) to create a lightweight Office 365 dev/test environment.

>[!Note]
>We have you create a trial subscription of Office 365 so that your dev/test environment has a separate Azure AD tenant from any paid subscriptions you currently have. This separation means you can add and remove users and groups in the test tenant without affecting your production subscriptions.
>
  
## Phase 2: Add a Microsoft 365 E5 trial subscription

In this phase, you sign up for the Microsoft 365 E5 trial subscription and add it to the same organization as your Office 365 E5 trial subscription.
  
First, add the Microsoft 365 E5 trial subscription and assign a Microsoft 365 license to your global administrator account.
  
1. With a private instance of an Internet browser, sign in to the Microsoft 365 admin center at [https://admin.microsoft.com](https://admin.microsoft.com) with your global administrator account credentials.
    
2. On the **Microsoft 365 admin center** page, in the left navigation, click **Billing > Purchase services**.
    
3. On the **Purchase services** page, find the **Microsoft 365 E5** item. Hover your mouse pointer over it and click **Start free trial**.

4. On the **Microsoft 365 E5 Trial** page, choose to receive a text or a call, enter your phone number, then click **Text me** or **Call me**.

5. On the **Confirm your order** page, click **Try now**.

6. On the **Order receipt** page, click **Continue**.

7. In the Microsoft 365 admin center, click **Active users**, and then your administrator account.

8. Click **Edit** for **Product licenses**.

9. Turn off the license for Office 365 Enterprise E5 and turn on the license for Microsoft 365 E5.

10. Click **Save > Close > Close**.

Next, ***if you completed Phase 3 of the*** [Office 365 dev/test environment](https://docs.microsoft.com/office365/enterprise/office-365-dev-test-environment), repeat steps 8 through 11 of the previous procedure for all of your other accounts (User 2, User 3, User 4, and User 5).
  
> [!NOTE]
> The Microsoft 365 E5 trial subscription is 30 days. For a permanent test environment, convert this trial subscription to a paid subscription with a small number of licenses. 
  
Your test environment now has:
  
- A Microsoft 365 E5 trial subscription.
- All your appropriate user accounts (either just the global administrator or all five user accounts) are enabled to use Microsoft 365 E5.
    
Figure 1 shows your resulting configuration, which adds Microsoft 365 E5, which includes both Office 365 and Enterprise Security + Management (EMS).
  
**Figure 1: Adding the Microsoft 365 trial subscription**

![Phase 2 of the Microsoft 3656 Enterprise test environment](media/lightweight-base-configuration-microsoft-365-enterprise/Phase2.png)
  
## Phase 3: Create a Windows 10 Enterprise computer

In this phase, you create a standalone computer running Windows 10 Enterprise as either a physical computer, a virtual machine, or an Azure virtual machine.
  
### Physical computer

Obtain a personal computer and install Windows 10 Enterprise on it. You can download the Windows 10 Enterprise trial [here](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise).
  
### Virtual machine

Create a virtual machine using the hypervisor of your choice and install Windows 10 Enterprise on it. You can download the Windows 10 Enterprise trial [here](https://www.microsoft.com/evalcenter/evaluate-windows-10-enterprise).
  
### Virtual machine in Azure

To create a Windows 10 virtual machine in Microsoft Azure, ***you must have a Visual Studio-based subscription***, which has access to the image for Windows 10 Enterprise. Other types of Azure subscriptions, such as trial and paid subscriptions, do not have access to this image. For the latest information, see [Use Windows client in Azure for dev/test scenarios](https://docs.microsoft.com/azure/virtual-machines/windows/client-images).
  
> [!NOTE]
> The following command sets use the latest version of Azure PowerShell. See [Get started with Azure PowerShell cmdlets](https://docs.microsoft.com/powershell/azureps-cmdlets-docs/). These command sets build a Windows 10 Enterprise virtual machine named WIN10 and all of its required infrastructure, including a resource group, a storage account, and a virtual network. If you are already familiar with Azure infrastructure services, please adapt these instructions to suit your currently deployed infrastructure. 
  
First, start a Microsoft PowerShell prompt.
  
Sign in to your Azure account with the following command.
  
```
Connect-AzAccount
```

Get your subscription name using the following command.
  
```
Get-AzSubscription | Sort Name | Select Name
```

Set your Azure subscription. Replace everything within the quotes, including the \< and > characters, with the correct name.
  
```
$subscr="<subscription name>"
Get-AzSubscription -SubscriptionName $subscr | Select-AzSubscription
```

Next, create a new resource group. To determine a unique resource group name, use this command to list your existing resource groups.
  
```
Get-AzResourceGroup | Sort ResourceGroupName | Select ResourceGroupName
```

Create your new resource group with these commands. Replace everything within the quotes, including the \< and > characters, with the correct names.
  
```
$rgName="<resource group name>"
$locName="<location name, such as West US>"
New-AzResourceGroup -Name $rgName -Location $locName
```

Next, you create a new virtual network and the WIN10 virtual machine with these commands. When prompted, provide the name and password of the local administrator account for WIN10 and store these in a secure location.
  
```
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
$vm=New-AzVMConfig -VMName WIN10 -VMSize Standard_D1_V2
$cred=Get-Credential -Message "Type the name and password of the local administrator account for WIN10."
$vm=Set-AzVMOperatingSystem -VM $vm -Windows -ComputerName WIN10 -Credential $cred -ProvisionVMAgent -EnableAutoUpdate
$vm=Set-AzVMSourceImage -VM $vm -PublisherName MicrosoftWindowsDesktop -Offer Windows-10 -Skus RS3-Pro -Version "latest"
$vm=Add-AzVMNetworkInterface -VM $vm -Id $nic.Id
$vm=Set-AzVMOSDisk -VM $vm -Name WIN10-TestLab-OSDisk -DiskSizeInGB 128 -CreateOption FromImage
New-AzVM -ResourceGroupName $rgName -Location $locName -VM $vm
```

## Phase 4: Join your Windows 10 computer to Azure AD

After the physical or virtual machine with Windows 10 Enterprise is created, sign in with a local administrator account.
  
> [!NOTE]
> For a virtual machine in Azure, connect to it using [these instructions](https://docs.microsoft.com/azure/virtual-machines/windows/connect-logon).
  
Next, join the WIN10 computer to the Azure AD tenant of your Microsoft 365 E5 subscription.
  
1. At the desktop of the WIN10 computer, click **Start > Settings > Accounts > Access work or school > Connect**.
    
2. In the **Set up a work or school account** dialog box, click **Join this device to Azure Active Directory**.
    
3. In **Work or school account**, type the global administrator account name of your Microsoft 365 E5 subscription, and then click **Next**.
    
4. In **Enter password**, type the password for your global administrator account, and then click **Sign in**.
    
5. When prompted to make sure this is your organization, click **Join**, and then click **Done**.
    
6. Close the settings window.
    
Next, install Office 365 ProPlus on the WIN10 computer.
  
1. Open the Microsoft Edge browser and sign in to the Office portal with your global administrator account credentials. For help, see [Where to sign in to Office 365](https://support.office.com/Article/Where-to-sign-in-to-Office-365-e9eb7d51-5430-4929-91ab-6157c5a050b4).
    
2. On the **Microsoft Office Home** tab, click **Install Office**.
    
3. When prompted with what to do, click **Run**, and then click **Yes** for **User Account Control**.
    
4. Wait for Office to complete its installation. When you see **You're all set!**, click **Close** twice.
    
Figure 3 shows your resulting environment, which includes the WIN10 computer that has:

- Joined the Azure AD tenant of your Microsoft 365 E5 subscription.
- Enrolled as an Azure AD device in Microsoft Intune (EMS).
- Has Office 365 ProPlus installed.
  
**Figure 2: The final configuration of the Microsoft 365 test environment**

![Phase 4 of the Microsoft 3656 Enterprise test environment](media/lightweight-base-configuration-microsoft-365-enterprise/Phase4.png)
  
You are now ready to experiment with additional features of [Microsoft 365 Enterprise](https://www.microsoft.com/microsoft-365/enterprise).
  
## Next steps

Explore these additional sets of Test Lab Guides:
  
- [Identity](m365-enterprise-test-lab-guides.md#identity)
- [Mobile device management](m365-enterprise-test-lab-guides.md#mobile-device-management)
- [Information protection](m365-enterprise-test-lab-guides.md#information-protection)
   

## See also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)

[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

[Microsoft 365 Enterprise documentation](https://docs.microsoft.com/microsoft-365-enterprise/)
