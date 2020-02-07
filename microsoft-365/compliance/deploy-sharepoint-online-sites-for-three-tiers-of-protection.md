---
title: "Deploy SharePoint Online sites for three tiers of protection"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 11/27/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
- SPO_Content
ms.custom:
- Ent_Solutions
ms.assetid: 1e8e3cfd-b878-4088-b941-9940363a5fae
description: "Summary: Create and configure SharePoint Online team sites for various levels of information protection."
---

# Deploy SharePoint Online sites for three tiers of protection

Use the steps in this article to design and deploy baseline, sensitive, and highly confidential SharePoint Online team sites. For more information about these three tiers of protection, see [Secure SharePoint Online sites and files](../security/office-365-security/secure-sharepoint-online-sites-and-files.md).
  
## Baseline SharePoint Online team sites

Baseline protection includes both public and private team sites. Public team sites can be discovered and accessed by anybody in the organization. Private sites can only be discovered and accessed by members of the Office 365 group associated with the team site. Both of these types of team sites allow members to share the site with others.
  
### Public

To create a baseline SharePoint Online team site with public access and permissions, follow [these instructions](https://support.office.com/article/create-a-team-site-in-sharepoint-ef10c1e7-15f3-42a3-98aa-b5972711777d).

Here is your resulting configuration.
  
![Baseline-level protection for a public SharePoint Online team site.](media/bcd46b8d-3f89-4398-80ce-4da17ee85e03.png)
  
### Private

To create a baseline SharePoint Online team site with private access and permissions, follow [these instructions](https://support.office.com/article/create-a-team-site-in-sharepoint-ef10c1e7-15f3-42a3-98aa-b5972711777d).
  
Here is your resulting configuration.
  
![Baseline-level protection for a private SharePoint Online team site.](media/91769026-37e3-4383-ac3c-dbf7aca98e41.png)
  
## Sensitive SharePoint Online team sites

A sensitive SharePoint Online team site starts as a private team site.
  
First, create the private SharePoint Online team site with [these instructions](https://support.office.com/article/create-a-team-site-in-sharepoint-ef10c1e7-15f3-42a3-98aa-b5972711777d).

Next, from the new SharePoint Online team site, configure additional permission settings with these steps.

1.  In the tool bar of the SharePoint team site, click the settings icon, and then click **Site permissions**.
2.  In the **Site permissions** pane, under **Sharing Settings**, click **Change sharing settings**.
3.  Under **Sharing permissions**, choose **Only site owners can share files, folders, and the site**, and then click **Save**.

The results of these permission settings are:

- The ability for members to share with other members is disabled.
- The ability for non-members to request access is enabled.

Here is your resulting configuration.
  
![Sensitive-level protection for an isolated SharePoint Online team site.](media/7a6ab9c6-560a-4674-ac39-8175644dbe6f.png)
  
The members of the site, through group membership in one of the access groups, can now securely collaborate on the resources of the site.
  
## Highly confidential SharePoint Online team sites

A highly confidential SharePoint Online team site is a private team site with additional permissions settings.

First, create the private SharePoint Online team site with [these instructions](https://support.office.com/article/create-a-team-site-in-sharepoint-ef10c1e7-15f3-42a3-98aa-b5972711777d).

Next, from the new SharePoint Online team site, configure additional permission settings with these steps.

1.  In the tool bar of the SharePoint team site, click the settings icon, and then click **Site permissions**.
2.  In the **Site permissions** pane, under **Sharing Settings**, click **Change sharing settings**.
3.  Under **Sharing permissions**, choose **Only site owners can share files, folders, and the site**.
4. Turn off **Allow access requests**, and then click **Save**.

The results of these permission settings are:

- The ability for members to share with other members is disabled.
- The ability for non-members to request access is disabled.

Here is your resulting configuration.
  
![Highly confidential-level protection for an isolated SharePoint Online team site.](media/196359ab-d7ed-4fcf-97b4-61820a74aca4.png)
  
The members of the site, through group membership in one of the access groups, can now securely collaborate on the resources of the site.
  
## Next step

[Protect SharePoint Online files with Office 365 labels and DLP](protect-sharepoint-online-files-with-office-365-labels-and-dlp.md)

## See also

[Microsoft Security Guidance for Political Campaigns, Nonprofits, and Other Agile Organizations](../security/office-365-security/microsoft-security-guidance-for-political-campaigns-nonprofits-and-other-agile-o.md)
  
[Cloud adoption and hybrid solutions](https://docs.microsoft.com/office365/enterprise/cloud-adoption-and-hybrid-solutions)
