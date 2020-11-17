---
title: "Microsoft Productivity Score - Privacy"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: Sirkkuw
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

Productivity Score helps organizations transform how work gets done with metrics that help you evaluate and improve people and technology experiences. It helps you gain visibility into how your organization works, and provides metrics that help you focus on enabling improved experiences.  You can also connect the metrics to actions to help you update skills and systems so everyone can do their best work. The score reflects your organization’s performance and also enables you to safely compare your score with other organizations like yours.  For more details, check out [Productivity Score overview](productivity-score.md).

Your privacy is important to us. To learn how we protect your privacy, see [Microsoft's privacy statement](https://privacy.microsoft.com/privacystatement). Productivity Score provides vital information on how people in your organizations work along with controls to make sure the information is actionable while not compromising the trust you place in Microsoft.

Within the people experiences area, metrics are available at the organizational level and include all users in your Microsoft 365 tenant. This area looks at how people use Microsoft 365 by looking at the categories of content collaboration, mobility, meetings, teamwork and communication. To help you drive   training and awareness  to the right set of people who may need support with our products we have also provided you with information on the  individual level. While we provide this level of transparency, we also enable you with several levels of controls to help you meet your internal privacy policy needs.
The following controls give you:

- Flexible admin roles to control who can see the information in Productivity Score.
- The ability to de-identify user level metrics.
- Capability to opt out of People experiences.
- The capability to opt out of the people   experiences area

## Flexible admin roles to control who can see the information in Productivity Score

To view the entire Productivity Score, including tenant-level metrics and per-user details, your role should be one of the following admin roles:

- Global admin
- Exchange admins
- SharePoint admin
- Skype for Business admin
- Teams admin
- Global Reader
- Reports Reader

Assign the Reports Reader role to anyone who's responsible for change management and adoption. This role gives them access to the complete experience including tenant level metrics and per-user level details.

The People experiences report contains per-user activity details for each category detail page. Assign a custom role called Usage Summary Reports Reader (available starting 29th October 2020) to enable access to only the aggregate metrics of the People experiences. This role will have to be assigned through PowerShell cmdlets until it becomes assignable from the Microsoft admin center on 11/15/2020.

To assign the Usage Summary Reports Reader role with PowerShell:

- Run the following PowerShell:

```powershell
Connect-AzureAD
$role=Get-AzureADDirectoryRole -Filter "roleTemplateId eq '75934031-6c7e-415a-99d7-48dbd49e875e'"
Get-AzureADDirectoryRoleMember -ObjectId $role.ObjectId
$u=Get-AzureADUser -ObjectId <user upn>
Add-AzureADDirectoryRoleMember -ObjectId $role.ObjectId -RefObjectId $u.ObjectId
```

</br>

:::image type="content" source="../../media/communicationspage.jpg" alt-text="Communications page in Productivity reports.":::

## De-identification of user-level metrics

To make the data that is collected for all reports anonymous, you must be a global administrator. This action will hide identifiable information such as user, group, and site names in all reports – including Productivity Score and Microsoft 365 Usage.

1. In the admin center, go to the  **Settings**  >  **Org Settings**, and under  **Services**  tab, choose  **Reports**.
2. Select  **Reports**, and then choose to  **Display anonymous identifiers for user, group, and site names in Productivity Score and Usage Reports**. This setting is applied both to the usage reports and to the template app.
3. Select  **Save changes**.

:::image type="content" source="../../media/orgsettings_anonymous.png" alt-text="Make user info anonymous for reports.":::

