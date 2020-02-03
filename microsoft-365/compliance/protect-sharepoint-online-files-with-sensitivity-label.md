---
title: "Protect SharePoint Online files with a sensitivity label"
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
ms.assetid: 5b9c8e41-25d2-436d-89bb-9aecb9ec2b80
description: "Summary: Apply Azure Information Protection to protect files in a highly confidential SharePoint Online team site."
---

# Protect SharePoint Online files with a sensitivity label

Use the steps in this article to configure an Office 365 sensitivity label to provide encryption and permissions for files. These files can be added to a SharePoint library configured for highly confidential protection. Or, you can open a file directly from the site and apply the label. The encryption and permissions protection travels with a file even when it is downloaded from the site. 

These steps are part of a larger solution for configuring highly confidential protection for SharePoint sites and the files within these sites. For more information, see [Secure SharePoint Online sites and files](../security/office-365-security/secure-sharepoint-online-sites-and-files.md). 

Using sensitivity labels for files in SharePoint Online is not recommended for all customers, but is an option for customers who need this level of protection for a subset of files.

Some important notes about this solution:
- When encryption is applied to files stored in Office 365, the service cannot process the contents of these files. Co-authoring, eDiscovery, search, Delve, and other collaborative features do not work. Data Loss Prevention (DLP) policies can only work with the metadata (including Office 365 labels) but not the contents of these files (such as credit card numbers within files).

- This solution requires a user to select a label that applies the protection. If you require automatic encryption and the ability for SharePoint to index and inspect the files, consider using Information Rights Management (IRM) in SharePoint Online. When you configure a SharePoint library for IRM, files are automatically encrypted when they are downloaded for editing.  SharePoint IRM includes limitations that might influence your decision. For more information, see [Set up Information Rights Management (IRM) in SharePoint admin center](https://support.office.com/article/Set-up-Information-Rights-Management-IRM-in-SharePoint-admin-center-239CE6EB-4E81-42DB-BF86-A01362FED65C).

## Admin setup

To accomplish this additional level of security for files in a specific SharePoint Online team site, you must configure a customized sensitivity label that is either its own label or a sublabel of the general label for highly regulated data. Only members of the Office 365 group for the SharePoint Online team site will see the customized label or sublabel in their list of labels.

- Use a sensitivity label when you need a small number of labels for both global use and individual private teams.

- Use a sensitivity sublabel when you have a large number of labels or want to organize labels for highly confidential teams under a general-purpose label for highly confidential files.

Use [these instructions](encryption-sensitivity-labels.md) to configure a separate label or a sublabel with the following settings:

- The name of the label or sublabel contains the name of the team site
- Encryption is enabled
- The Office 365 group for the team site has Co-Author permissions

After creating, publish the new label or sublabel for your users, who can then apply them to files either locally before uploading them to the team or later once the file is stored in the team.
 
Once your uses can select the sensitivity label from the **Sensitivity** option from the **Home** ribbon in Microsoft Word, Excel, and PowerPoint.
  
> [!NOTE]
> If you have multiple highly sensitive SharePoint Online team sites, you should create multiple sensitivity labels. 
  
## Adding permissions for external users
There are two ways you can grant external users access to files protected with a sensitivity label. In both cases, external users must have an Azure AD account. If external users aren't members of an organization that uses Azure AD, they can obtain an Azure AD account as an individual by using this signup page: [https://aka.ms/aip-signup](https://aka.ms/aip-signup).

 - Add external users to the Office 365 group for the team site. You'll need to first add the account as a B2B user in your directory. It can take a couple of hours for [group membership caching by Azure Rights Management](https://docs.microsoft.com/azure/information-protection/plan-design/prepare#group-membership-caching-by-azure-information-protection).  
 - Add external user accounts directly to the label configuration. You can add all users from an organization (e.g. Fabrikam.com), an Office 365 group (such as a finance group within an organization), or user. For example, you can add an external team of regulators to the permissions of your sensitivity label.

## See Also

[Secure SharePoint Online sites and files](../security/office-365-security/secure-sharepoint-online-sites-and-files.md)
  
[Microsoft Security Guidance for Political Campaigns, Nonprofits, and Other Agile Organizations](/security/office-365-security/microsoft-security-guidance-for-political-campaigns-nonprofits-and-other-agile-o.md)
  
[Cloud adoption and hybrid solutions](https://docs.microsoft.com/office365/enterprise/cloud-adoption-and-hybrid-solutions)
