---
title: "Microsoft Productivity Score - Privacy"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
monikerRange: 'o365-worldwide'
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- MET150
- MOE150
description: "How privacy is protected with the Productivity Score."
---

# Privacy controls for Productivity Score

Productivity Score provides insights into your organization’s digital transformation journey through its use of Microsoft 365 and the technology experiences that support it.  Your organization’s score reflects people and technology experience measurements and can be compared to benchmarks from organizations similar to yours. For more details, view the [Productivity Score overview](productivity-score.md).

Your privacy is important to Microsoft. To learn how we protect your privacy, see [Microsoft's privacy statement](https://privacy.microsoft.com/privacystatement). Productivity Score gives you, as your organization's IT administrator, access to privacy settings to help make sure any Productivity Score information you view is actionable, while not compromising the trust your organization places in Microsoft.

Within the people experiences area, metrics are available at the organizational level only. This area looks at how people use Microsoft 365 by looking at the categories of content collaboration, mobility, meetings, teamwork, and communication. We enable you with several levels of controls to help you meet your internal privacy policy needs.
The controls give you:

- Flexible admin roles to control who can see the information in Productivity Score.
- The capability to opt out of the people experiences area.

## Flexible admin roles to control who can see the information in Productivity Score

To view the entire Productivity Score, you need be one of the following admin roles:

- Global admin
- Exchange admins
- SharePoint admin
- Skype for Business admin
- Teams admin
- Global Reader
- Reports Reader
- Usage Summary Reports Reader

Assign the Reports Reader or the Usage Summary Reports Reader role to anyone who's responsible for change management and adoption, but not necessarily an IT administrator. This role gives them access to the complete Productivity Score experience in the Microsoft 365 admin Center.

The Usage Summary Reports Reader role will have to be assigned through PowerShell cmdlets until it becomes assignable from the Microsoft 365 admin center later in 2020.

To assign the Usage Summary Reports Reader role with PowerShell:

- Run the following PowerShell:

```powershell
Connect-AzureAD
Enable-AzureADDirectoryRole -RoleTemplateId '75934031-6c7e-415a-99d7-48dbd49e875e'
$role=Get-AzureADDirectoryRole -Filter "roleTemplateId eq '75934031-6c7e-415a-99d7-48dbd49e875e'"
Get-AzureADDirectoryRoleMember -ObjectId $role.ObjectId
$u=Get-AzureADUser -ObjectId <user upn>
Add-AzureADDirectoryRoleMember -ObjectId $role.ObjectId -RefObjectId $u.ObjectId
```

</br>


## Capability to opt out of people experiences

You can also opt out of the people experiences area of Productivity Score. If you opt out, no one from your organization will be able to view these metrics, and your organization will be removed from any calculations that involve communication, meetings, teamwork, content collaboration, and mobility. You have to be a Global admin to opt your organization out of the people experiences reports.

To opt out:

1. In the admin center, go to **Settings**  >  **Org Settings** > **Productivity Score**.
2. Un-check the box that says  **Allow Microsoft 365 usage data to be used for people experiences insights**. To understand how to modify data-sharing settings for Endpoint Analytics in the Intune configuration manager, select **Learn more**.
3. Select  **Save**.

:::image type="content" source="../../media/orgsettingspageoptout.png" alt-text="Org settings page where you can opt out from people experiences.":::
