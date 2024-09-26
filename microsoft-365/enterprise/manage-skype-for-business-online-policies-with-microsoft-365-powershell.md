---
title: "Manage Skype for Business Online policies with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/02/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- Ent_O365
- must-keep
f1.keywords:
- NOCSH
ms.custom: 
ms.assetid: ff93a341-6f0f-4f06-9690-726052e1be64
description: "Summary: Use PowerShell to manage your Skype for Business Online user account properties with policies."
---

# Manage Skype for Business Online policies with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

To manage many properties of user accounts for Skype for Business Online, you must specify them as properties of policies with PowerShell for Microsoft 365.
  
## Before you begin

Use these instructions to get set up to run the commands (skip the steps you have already completed):

  > [!Note]
  > Skype for Business Online Connector is currently part of the latest Teams PowerShell module. If you're using the latest Teams PowerShell public release, you don't need to install the Skype for Business Online Connector.

1. Install the [Teams PowerShell module](/microsoftteams/teams-powershell-install).

2. Open a Windows PowerShell command prompt and run the following commands:

   ```powershell
   Import-Module MicrosoftTeams
   $userCredential = Get-Credential
   Connect-MicrosoftTeams -Credential $userCredential
   ```

   When prompted, enter your Skype for Business Online administrator account name and password.

## Manage user account policies

Many Skype for Business Online user account properties are configured by using policies. Policies are simply collections of settings that can be applied to one or more users. To take a look at how a policy has been configured, you can run this example command for the FederationAndPICDefault policy:
  
```powershell
Get-CsExternalAccessPolicy -Identity "FederationAndPICDefault"
```

In turn, you should get back something similar to this:
  
```powershell
Identity                          : Tag:FederationAndPICDefault
Description                       :
EnableFederationAccess            : True
EnableXmppAccess                  : False
EnablePublicCloudAccess           : True
EnablePublicCloudAudioVideoAccess : True
EnableOutsideAccess               : True
```

In this example, the values within this policy determine what a use can or can't do when it comes to communicating with federated users. For example, the EnableOutsideAccess property must be set to True for a user to be able to communicate with people outside the organization. This property doesn't appear in the Microsoft 365 admin center. Instead, the property is automatically set to True or False based on the other selections that you make. The other two properties of interest are:
  
- **EnableFederationAccess** indicates whether the user can communicate with people from federated domains.

- **EnablePublicCloudAccess** indicates whether the user can communicate with Windows Live users.

Therefore, you don't directly change federation-related properties on user accounts (for example, **Set-CsUser -EnableFederationAccess $True**). Instead, you assign an account an external access policy that has the desired property values preconfigured. If we want a user to be able to communicate with federated users and with Windows Live users, that user account must be assigned a policy that allows those types of communication.
  
If you want to know whether or not someone can communicate with users from outside the organization, you have to:
  
- Determine which external access policy is assigned to that user.

- Determine which capabilities are or aren't allowed by that policy.

For example, you can do that by using this command:
  
```powershell
Get-CsOnlineUser -Identity "Alex Darrow" | ForEach {Get-CsExternalAccessPolicy -Identity $_.ExternalAccessPolicy}
```

This command finds the policy assigned to the user, then finds the capabilities enabled or disabled within that policy.
  
To manage Skype for Business Online policies with PowerShell, see the cmdlets for:

- [Client policy](/previous-versions//mt228132(v=technet.10)#client-policy-cmdlets)
- [Conferencing policy](/previous-versions//mt228132(v=technet.10)#conferencing-policy-cmdlets)
- [Mobile policy](/previous-versions//mt228132(v=technet.10)#mobile-policy-cmdlets)
- [Online Voicemail policy](/previous-versions//mt228132(v=technet.10)#online-voicemail-policy-cmdlets)
- [Voice Routing policy](/previous-versions//mt228132(v=technet.10)#voice-routing-policy-cmdlets)

> [!NOTE]
> A Skype for Business Online dial plan is a policy in every respect except the name. The name "dial plan" was chosen instead of, say, "dialing policy" in order to provide backward compatibility with Office Communications Server and with Exchange.
  
For example, to look at all the voice policies available for your use, run this command:
  
```powershell
Get-CsVoicePolicy
```

> [!NOTE]
> That returns a list of all the voice policies available to you. Keep in mind, however, that not all policies can be assigned to all users. This is due to various restrictions involving licensing and geographic location. (The so-called "[usage location](/previous-versions/azure/dn194136(v=azure.100)).") If you want to know the external access policies and the conferencing policies that can be assigned to a particular user, use commands similar to these:

```powershell
Get-CsConferencingPolicy -ApplicableTo "Alex Darrow"
Get-CsExternalAccessPolicy -ApplicableTo "Alex Darrow"
```

The ApplicableTo parameter limits the returned data to policies that can be assigned to the specified user (for example, Alex Darrow). Depending on licensing and usage location restrictions, that might represent a subset of all the available policies.
  
In some cases, properties of policies aren't used with Microsoft 365, while others can only be managed by Microsoft support personnel.
  
With Skype for Business Online, users must be managed by a policy of some kind. If a valid policy-related property is blank, that means that the user in question is being managed by a global policy, which is a policy that is automatically applied to a user unless they're specifically assigned a per-user policy. Because we don't see a client policy listed for a user account, it's managed by the global policy. You can determine the global client policy with this command:
  
```powershell
Get-CsClientPolicy -Identity "Global"
```

## See also

[Manage Skype for Business Online with PowerShell](manage-skype-for-business-online-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
