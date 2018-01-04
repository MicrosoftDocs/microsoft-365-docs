---
title: Secure SharePoint Online sites and files | Microsoft Docs
description: Configuration recommendations for protecting files for SharePoint Online team sites in Office 365.
services: active-directory
keywords: Office 365, Windows 10, Enterprise Mobility and Security, Microsoft 365 Enterprise
documentationcenter: ''
author: JoeDavies-MSFT
manager: laurawi
ms.assetid: 
ms.prod: microsoft-365-enterprise
ms.service: 
ms.workload:
ms.tgt_pltfrm: na
ms.devlang: na
ms.topic: article
ms.date: 11/15/2017
ms.author: josephd

---

# Secure SharePoint Online sites and files

This article provides recommendations for configuring SharePoint Online team sites and file protection that balances security with ease of collaboration. This article defines four different configurations, starting with a public site within your organization with the most open sharing policies. Each additional configuration represents a meaningful step up in protection, but the ability to access and collaborate on resources is reduced to the relevant set of users. 

Use these recommendations as a starting point and adjust the configurations to meet the needs of your organization. 

The configurations in this article align with Microsoft's recommendations for three tiers of protection for data, identities, and devices:

* Baseline protection
* Sensitive protection
* Highly confidential protection

For more information about these tiers and capabilities recommended for each tier, see the following resources. 

* [Identity and Device Protection for Office 365](https://technet.microsoft.com/library/28986107-e2fb-4116-bfdd-f66d751a7c16#BKMK_O365IDP)
* [File Protection Solutions in Office 365](https://technet.microsoft.com/library/28986107-e2fb-4116-bfdd-f66d751a7c16#BKMK_O365fileprotect)

## Capability overview
Recommendations for SharePoint Online team sites draw on a variety of Office 365 capabilities. For highly confidential sites, Azure Information Protection is recommended. This is included in Enterprise Mobility + Security (EMS). 

This diagram shows the recommended configurations for four SharePoint Online team sites.

 ![Recommended SharePoint Configurations](./media/secure-sharepoint-online-sites-and-files/capabilityoverview.png)

As illustrated:

* Baseline protection includes two options for SharePoint Online team sites — a public site and private site. Public sites can be discovered and accessed by anybody in the organization. Private sites can only be discovered and accessed by members of the site. Both of these site configurations allow for sharing outside the group. 
* Sites for sensitive and highly confidential protection are private sites with access limited only to members of specific groups.
* Office 365 labels provide a way to classify data with a needed protection level. Each of the SharePoint Online team sites are configured to automatically label files in document libraries with a default label for the site. Corresponding to the four site configurations, the labels in this example are Internal Public, Private, Sensitive, and Highly Confidential. Users can change the labels, but this configuration ensures all files receive a default label.
* Data loss prevention (DLP) policies are configured for the Sensitive and Highly Confidential Office 365 labels to either warn or prevent users when they attempt to send these types of files outside the organization.
* For sites configured with highly confidential protection, Azure Information Protection encrypts and grants permissions for files.

## Tenant-wide settings for SharePoint Online and OneDrive for Business
SharePoint Online and OneDrive for Business include tenant-wide settings that affect all sites and users. Some of these settings can also be adjusted at the site level to be more restrictive (but not less). This section discusses tenant-wide settings that affect security and collaboration. 

### Sharing
For this solution, we recommend the following tenant-wide settings:

* Keep the default sharing policy that allows all sharing with all account types, including anonymous sharing.
* Set anonymous links to expire, if desired.
* Change the default link type for sharing to Internal. This helps prevent accidental data leakage outside your organization.

While it might seem counterintuitive to allow external sharing, this approach provides more control over file sharing compared to sending files in email. SharePoint Online and Outlook work together to provide secure collaboration on files. 

* By default, Outlook shares a link to a file instead of sending the file in email. 
* SharePoint Online and OneDrive for Business make it easy to share links to files with contributors who are both inside and outside your organization.

You also have controls to help govern external sharing. For example, you can:

* Disable an anonymous guest link.
* Revoke user access to a site.
* See who has access to a specific site or document.
* Set anonymous sharing links to expire (tenant setting).
* Limit who can share outside your organization (tenant setting).

### Use external sharing together with data loss prevention (DLP)
If you don’t allow external sharing, users with a business need will find alternate tools and methods. Microsoft recommends you combine external sharing with DLP policies to protect sensitive and highly confidential files.

### Device access settings
Device access settings for SharePoint Online and OneDrive for Business let you determine whether access is limited to browser only (files can’t be downloaded) or if access is blocked. These settings are currently in First Release and apply tenant-wide. Coming soon is the ability to configure device access policies at the site level. For this solution, we recommend not using device access settings that apply tenant-wide.

To use device access settings while these are in first release: [Set up the Standard or First Release Options in Office 365](https://support.office.com/article/Set-up-the-Standard-or-First-Release-options-in-Office-365-3B3ADFA4-1777-4FF0-B606-FB8732101F47).

### OneDrive for Business
Visit these settings to decide if you want to change the default settings for OneDrive for Business sites. Currently, the sharing and device access settings are duplicated from the SharePoint Online admin center and apply to both environments.

## SharePoint team site configuration
The following table summarizes the configuration for each of the team sites described earlier in this article. Use these configurations as starting point recommendations and adjust the site types and configurations to meet the needs of your organization. Not every organization needs every type of site. Only a small number of organizations require highly confidential protection.

| |**Baseline protection #1**|**Baseline protection #2**|**Sensitive protection**|**Highly confidential**|
|:-----|:-----|:-----|:-----|:-----|
|Description|Open discovery and collaboration within the organization.|Private site and group with sharing allowed outside the group.|Isolated site, in which levels of access are defined by membership in specific groups. Sharing is only allowed to members of the site. DLP warns users when attempting to send files outside the organization.|Isolated site + file encryption and permissions with Azure Information Protection. DLP prevents users from sending files outside the organization.|
|Private or public team site|Public|Private|Private|Private|
|Who has access?|Everybody in the organization, including B2B users and guest users.|Members of the site only. Others can request access.|Members of the site only. Others can request access.|Members only. Others cannot request access.|
|Site-level sharing controls|Sharing allowed with anybody. Default settings.	|Sharing allowed with anybody. Default settings.|Members cannot share access to the site. <br>Non-members can request access to the site, but these requests need to be addressed by a site administrator.|Members cannot share access to the site. <br>Non-members cannot request access to the site or contents.|
|Site-level device access controls|No additional controls.|No additional controls.|Site-level controls are coming soon, which prevents users from downloading files to non-compliant or non-domain joined devices. This allows browser-only access from all other devices.|Site-level controls are coming soon, which blocks downloading of files to non-compliant or non-domain joined devices.|
|Office 365 labels|Internal Public|Private|Sensitive|Highly Confidential|
|DLP policies|||Warn users when sending files that are labeled as Sensitive outside the organization. <br>To block external sharing of sensitive data types, such as credit card numbers or other personal data, you can configure additional DLP policies for these data types (including custom data types you configure).|Block users from sending files that are labeled as highly confidential outside organization. Allow users to override this by providing justification, including who they are sharing the file with.|
|Azure Information Protection||||Use Azure Information Protection to automatically encrypt and grant permissions to files. This protection travels with the files in case they are leaked. Office 365 cannot read files encrypted with Azure Information Protection. Additionally, DLP policies can only work with the metadata (including labels) but not the contents of these files (such as credit card numbers within files).|

For the steps to deploy the four different types of SharePoint Online team sites in this solution, see [Deploy sites for three tiers of protection](deploy-sites-for-three-tiers-of-protection.md).

For step-by-step instructions to set this up for demonstration, proof of concept, or dev/test, see [Secure SharePoint Online sites in a dev/test environment](secure-sharepoint-online-sites-dev-test.md).

## Office 365 classification and labels
Using Office 365 labels is recommended for environments with sensitive data. After you configure and publish Office 365 labels, you can:

* Apply a default label to a document library in a SharePoint Online team site, so that all documents in that library get the default label. 
* Apply labels to content automatically if it matches specific conditions.
* Create DLP policies that are based on Office 365 labels.
* Enable people in your organization to apply a label manually to content in Outlook on the web, Outlook 2010 and later, OneDrive for Business, SharePoint Online, and Office 365 groups. Users often know best what type of content they’re working with, so they can classify it and have the appropriate DLP policy applied.

 ![Office 365 Labels](./media/secure-sharepoint-online-sites-and-files/labels.png)
 
As illustrated, this solution includes creating the following labels:

* Highly Confidential
* Sensitive
* Private
* Internal Public

These labels are mapped to the recommended sites in the illustrations and charts earlier in this article. This solution recommends configuring DLP policies to help prevent the leakage of files labeled as Sensitive and Highly Confidential outside the organization.

For the steps to configure Office 365 labels and DLP policies in this solution, see [Protect SharePoint Online files with Office 365 labels and DLP](protect-files-with-o365-labels-dlp.md).

For step-by-step instructions to set this up for demonstration, proof of concept, or dev/test, see [Secure SharePoint Online sites in a dev/test environment](secure-sharepoint-online-sites-dev-test.md).

## Azure Information Protection
Use Azure Information Protection to apply labels and protections that follow the files wherever they go. For this solution, we recommend you use a scoped Azure Information Protection policy and a sub-label of the Highly Confidential label to encrypt and grant permissions to files that need to be protected with the highest level of security. 

Be aware that when Azure Information Protection encryption is applied to files stored in Office 365, the service cannot process the contents of these files. Co-authoring, eDiscovery, search, Delve, and other collaborative features do not work. DLP policies can only work with the metadata (including Office 365 labels) but not the contents of these files (such as credit card numbers within files).

 ![Office 365 Labels](./media/secure-sharepoint-online-sites-and-files/azureinfoprotect.png)

As illustrated:

* You configure Azure Information Protection policies and labels in the Microsoft Azure portal. Configuring a sub-label of a scoped policy is recommended.
* Azure Information Protection labels show up as a **Information protection** bar in Office applications. 

### Adding permissions for external users
There are two ways you can grant external users access to files protected with Azure Information Protection. In both these cases, external users must have an Azure AD account. If external users aren’t members of an organization that uses Azure AD, they can obtain an Azure AD account as an individual by using this sign-up page: [https://aka.ms/aip-signup](https://aka.ms/aip-signup).

* **Add external users to an Azure AD group that is used to configure protection for a label**.
 You’ll need to first add the account as a B2B user in your directory. It can take a couple of hours for [group membership caching by Azure Rights Management](https://docs.microsoft.com/information-protection/plan-design/prepare#group-membership-caching-by-azure-rights-management). With this method, permissions are granted to all existing files protected with the label (even files protected before a user is added to the Azure AD group).

* **Add external users directly to the label protection**.
 You can add all users from an organization (e.g. Fabrikam.com), an Azure AD group (such as a finance group within an organization), or an individual user. For example, you can add an external team of regulators to the protection for a label. With this method, permissions are granted only to files protected with the label after the external entity is added to the protection.

### Deploying and using Azure Information Protection
For the steps to configure Azure Information Protection in this solution, see [Protect SharePoint Online files with Azure Information Protection](protect-files-with-aip.md).

For step-by-step instructions to set this up for demonstration, proof of concept, or dev/test, see [Secure SharePoint Online sites in a dev/test environment](secure-sharepoint-online-sites-dev-test.md).

## Next steps 

[Deploy sites for three tiers of protection](deploy-sites-for-three-tiers-of-protection.md)
