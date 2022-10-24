---
title: "Manage sensitivity labels in Office apps"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- purview-compliance
- tier1
search.appverid: 
- MOE150
- MET150
description: Information for IT administrators to manage sensitivity labels in Office apps for desktop, mobile, and the web.
ms.custom: seo-marvel-apr2020
---

# Manage sensitivity labels in Office apps

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

When you have [published](create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy) sensitivity labels from the Microsoft Purview compliance portal, they start to appear in Office apps for users to classify and protect data as it's created or edited.

Use the information in this article to help you successfully manage sensitivity labels in Office apps. For example, identify the minimum versions of apps you need for features that are specific to built-in labeling, any additional configuration information for these features, and understand interactions with the Azure Information Protection unified labeling client and other apps and services.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Labeling client for desktop apps

To use sensitivity labels that are built into Office desktop apps for Windows and Mac, you must use a subscription edition of Office. This labeling client doesn't support standalone editions of Office, sometimes called "Office Perpetual".

The [Azure Information Protection (AIP) unified labeling client](/azure/information-protection/rms-client/aip-clientv2) is now in [maintenance mode](https://techcommunity.microsoft.com/t5/security-compliance-and-identity/announcing-aip-unified-labeling-client-maintenance-mode-and/ba-p/3043613). If you currently use this client for labeling in Office apps, we recommend you move to built-in labeling. For more information, see [Migrate the Azure Information Protection (AIP) add-in to built-in labeling for Office apps](sensitivity-labels-aip.md).

## Support for sensitivity label capabilities in apps

The following tables list the minimum Office version that introduced specific capabilities for sensitivity labels built in to Office apps. Or, if the label capability is in public preview or under review for a future release:

- [Capabilities table for Word, Excel, and PowerPoint](#sensitivity-label-capabilities-in-word-excel-and-powerpoint)
- [Capabilities table for Outlook](#sensitivity-label-capabilities-in-outlook)

Use the [Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=Microsoft%20Information%20Protection&searchterms=label) for details about new labeling capabilities that are planned for future releases.

New versions of Office apps are made available at different times for different update channels. For Windows, you'll get the new capabilities earlier when you are on the Current Channel or Monthly Enterprise Channel, rather than Semi-Annual Enterprise Channel. The minimum version numbers can also be different from one update channel to the next. For more information, see [Overview of update channels for Microsoft 365 Apps](/deployoffice/overview-update-channels) and [Update history for Microsoft 365 Apps](/officeupdates/update-history-microsoft365-apps-by-date).

New capabilities that are in private preview are not included in the tables but you might be able to join these previews by nominating your organization for the [Microsoft Information Protection private preview program](https://aka.ms/mip-preview).

Office for iOS and Office for Android: Sensitivity labels are built into the [Office app](https://www.microsoft.com/en-us/microsoft-365/blog/2020/02/19/new-office-app-android-ios-available/).

> [!TIP]
> When you compare the minimum versions in the tables with the versions you have, remember the common practice of release versions to omit leading zeros.
> 
> For example, you have version 4.2128.0 and read that 4.7.1+ is the minimum version. For easier comparison, read 4.7.1 (no leading zeros) as 4.**0007**.1 (and not 4.**7000**.1). Your version of 4.2128.0 is higher than 4.0007.1, so your version is supported.

### Sensitivity label capabilities in Word, Excel, and PowerPoint

The numbers listed are the minimum Office application versions required for each capability. 

> [!NOTE]
> For Windows and the Semi-Annual Enterprise Channel, the minimum supported version numbers might not yet be released. [Learn more](/officeupdates/update-history-microsoft365-apps-by-date#supported-versions)
 
|Capability |Windows |Mac |iOS |Android |Web |
|-----------|-------:|----|----|--------|----|
|[AIP add-in disabled by default](sensitivity-labels-aip.md#how-to-configure-newer-versions-of-office-to-enable-the-aip-add-in)| Preview: Rolling out to [Beta Channel](https://office.com/insider) | Not relevant  | Not relevant | Not relevant| Not relevant |
|[Manually apply, change, or remove label](https://support.microsoft.com/en-us/office/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)| Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+     | 2.21+ | 16.0.11231+ | [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Multi-language support](create-sensitivity-labels.md#additional-label-settings-with-security--compliance-powershell)| Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+     | 2.21+ | 16.0.11231+ | Under review |
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do) to new documents                                         | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+     | 2.21+ | 16.0.11231+ | [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md)                                                        |
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do) to existing documents | Current Channel: 2208+ <br /><br> Monthly Enterprise Channel: 2207+  <br /><br> Semi-Annual Enterprise Channel: Under review | 16.63+ | Under review | Under review | [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Require a justification to change a label](sensitivity-labels.md#what-label-policies-can-do)                     | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+  <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+     | 2.21+ | 16.0.11231+ | [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Provide help link to a custom help page](sensitivity-labels.md#what-label-policies-can-do)                       | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+     | 2.21+ | 16.0.11231+ | [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Mark the content](sensitivity-labels.md#what-sensitivity-labels-can-do)                                              | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+     | 2.21+ | 16.0.11231+ | [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Dynamic markings with variables](#dynamic-markings-with-variables)                                              | Current Channel: 2010+ <br /><br> Monthly Enterprise Channel: 2010+ <br /><br> Semi-Annual Enterprise Channel: 2102+ | 16.42+     | 2.42+ | 16.0.13328+ | [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Assign permissions now](encryption-sensitivity-labels.md#assign-permissions-now)                                 | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+     | 2.21+ | 16.0.11231+ | [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Let users assign permissions: <br /> - Prompt users for custom permissions (users and groups)](encryption-sensitivity-labels.md#let-users-assign-permissions)                     |Current Channel: 2004+ <br /><br> Monthly Enterprise Channel: 2004+ <br /><br> Semi-Annual Enterprise Channel: 2008+ | 16.35+   | Under review   | Under review         | Under review                                                        |
|[Let users assign permissions: <br /> - Prompt users for custom permissions (users, groups, and organizations)](encryption-sensitivity-labels.md#support-for-organization-wide-custom-permissions)                     |Preview: Rolling out to [Current Channel (Preview)](https://office.com/insider)  | Under review   | Under review   | Under review         | Under review                                                        |
|[Audit label-related user activity](#auditing-labeling-activities)                      | Current Channel: 2011+ <br /><br> Monthly Enterprise Channel: 2011+ <br /><br> Semi-Annual Enterprise Channel: 2108+ | 16.43+ | 2.46+ | 16.0.13628+ | Yes |
|[Require users to apply a label to their email and documents](#require-users-to-apply-a-label-to-their-email-and-documents)   | Current Channel: 2101+ <br /><br> Monthly Enterprise Channel: 2101+ <br /><br> Semi-Annual Enterprise Channel: 2108+ | 16.45+         | 2.47+ | 16.0.13628+ | [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md)                                            
|[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md) <br /> - Using sensitive info types                    | Current Channel: 2009+ <br /><br> Monthly Enterprise Channel: 2009+ <br /><br> Semi-Annual Enterprise Channel: 2102+ | 16.44+ | Under review | Under review | [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md) <br /> - Using trainable classifiers                    | Current Channel: 2105+ <br /><br> Monthly Enterprise Channel: 2105+ <br /><br> Semi-Annual Enterprise Channel: 2108+ | 16.49+ | Under review | Under review | [Under review |
|[Support co-authoring and AutoSave](sensitivity-labels-coauthoring.md) for labeled and encrypted documents | Current Channel: 2107+ <br /><br> Monthly Enterprise Channel: 2107+ <br /><br> Semi-Annual Enterprise Channel: 2202+ |  16.51+ | 2.58+ | 16.0.14931+  | [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[PDF support](#pdf-support)| Current Channel: 2208+ <br /><br> Monthly Enterprise Channel: 2208+ <br /><br> Semi-Annual Enterprise Channel: Under review|  Under review | Under review | Under review | Under review |
|[Sensitivity bar](#sensitivity-bar) and [display label color](#label-colors) | Preview: Rolling out to [Beta Channel](https://office.com/insider) | Under review | Under review | Under review | Under review |

### Sensitivity label capabilities in Outlook

The numbers listed are the minimum Office application versions required for each capability. 

> [!NOTE]
> For Windows and the Semi-Annual Enterprise Channel, the minimum supported version numbers might not yet be released. [Learn more](/officeupdates/update-history-microsoft365-apps-by-date#supported-versions)

|Capability |Outlook for Windows |Outlook for Mac |Outlook on iOS |Outlook on Android |Outlook on the web |
|-----------|-------------------:|----------------|---------------|-------------------|-------------------|
|[AIP add-in disabled by default](sensitivity-labels-aip.md#how-to-configure-newer-versions-of-office-to-enable-the-aip-add-in)| Preview: Rolling out to [Beta Channel](https://office.com/insider) | Not relevant  | Not relevant | Not relevant| Not relevant |
|[Manually apply, change, or remove label](https://support.microsoft.com/en-us/office/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)| Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Multi-language support](create-sensitivity-labels.md#additional-label-settings-with-security--compliance-powershell)| Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+ | 4.7.1+ | 4.0.39+ | Yes |
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do)                                         | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Require a justification to change a label](sensitivity-labels.md#what-label-policies-can-do)                     | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Provide help link to a custom help page](sensitivity-labels.md#what-label-policies-can-do)                       | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Mark the content](sensitivity-labels.md#what-sensitivity-labels-can-do)                                              | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Dynamic markings with variables](#dynamic-markings-with-variables)                                              | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Assign permissions now](encryption-sensitivity-labels.md#assign-permissions-now)                                 | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Let users assign permissions: <br /> - Do Not Forward](encryption-sensitivity-labels.md#let-users-assign-permissions)                     | Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Let users assign permissions: <br /> - Encrypt-Only](encryption-sensitivity-labels.md#let-users-assign-permissions)  | Current Channel: 2011+ <br /><br> Monthly Enterprise Channel: 2011+ <br /><br> Semi-Annual Enterprise Channel: 2108+ | 16.48+ <sup>\*</sup> | 4.2112.0+  | 4.2112.0+ | Yes |
|[Require users to apply a label to their email and documents](#require-users-to-apply-a-label-to-their-email-and-documents)   | Current Channel: 2101+ <br /><br> Monthly Enterprise Channel: 2101+ <br /><br> Semi-Annual Enterprise Channel: 2108+ | 16.43+ <sup>\*</sup>                    | 4.2111+            | 4.2111+                | Yes                |
|[Audit label-related user activity](#auditing-labeling-activities) | Current Channel: 2011+ <br /><br> Monthly Enterprise Channel: 2011+ <br /><br> Semi-Annual Enterprise Channel: 2108+ | 16.51+ <sup>\*</sup> | 4.2126+ | 4.2126+ | Yes |
|[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md) <br /> - Using sensitive info types                    | Current Channel: 2009+ <br /><br> Monthly Enterprise Channel: 2009+ <br /><br> Semi-Annual Enterprise Channel: 2102+ | 16.44+ <sup>\*</sup>                    | Under review           | Under review               | Yes |
|[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md) <br /> - Using trainable classifiers                    | Current Channel: 2105+ <br /><br> Monthly Enterprise Channel: 2105+ <br /><br> Semi-Annual Enterprise Channel: 2108+ | 16.49+ | Under review           | Under review               | Yes |
|[Different settings for default label and mandatory labeling](#outlook-specific-options-for-default-label-and-mandatory-labeling)                    | Current Channel: 2105+ <br /><br> Monthly Enterprise Channel: 2105+ <br /><br> Semi-Annual Enterprise Channel: 2108+ | 16.43+ <sup>\*</sup>                   | 4.2111+           | 4.2111+               | Yes |
|[PDF support](#pdf-support) | Preview: Rolling out to [Beta Channel](https://office.com/insider)|  Under review | Under review | Under review | Under review |
|[Apply S/MIME protection](#configure-a-label-to-apply-smime-protection-in-outlook) | Preview: Rolling out to [Beta Channel](https://office.com/insider) | 16.61+ <sup>\*</sup>                   | 4.2226+ | 4.2203+ | Under review |
|[Sensitivity bar](#sensitivity-bar) and [display label color](#label-colors) | Under review |  Under review | Under review | Under review | Under review |

**Footnotes:**

<sup>\*</sup>
Requires the [new Outlook for Mac](https://support.microsoft.com/office/the-new-outlook-for-mac-6283be54-e74d-434e-babb-b70cefc77439)

## Office built-in labeling client and the Azure Information Protection client

If users have the [Azure Information Protection (AIP) client](/azure/information-protection/rms-client/aip-clientv2) installed on their Windows computers, built-in labels are the new default for the latest Windows Office apps that [support labeling](#labeling-client-for-desktop-apps). Because built-in labels don't use an Office add-in, as used by the AIP client, they have the benefit of more stability and better performance. They also support the latest features, such as advanced classifiers.

> [!NOTE]
> If you're not seeing the labeling features you expect on Windows computers, despite confirming the minimum supported versions for your Office update channel, it might be because you need to [disable the AIP add-in](sensitivity-labels-aip.md#how-to-disable-the-aip-add-in-to-use-built-in-labeling-for-office-apps) for older versions of Office.

To learn more about labeling support with the AIP client, and how to disable this client just in Office apps, see [Migrate the Azure Information Protection (AIP) add-in to built-in labeling for Office apps](sensitivity-labels-aip.md).

## If you need to turn off built-in labeling in Office apps on Windows

The Office built-in labeling client downloads sensitivity labels and sensitivity label policy settings from the Microsoft Purview compliance portal.

To use the Office built-in labeling client, you must have one or more [label policies published](create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy) to users from the Microsoft Purview compliance portal, and a [supported version of Office](#support-for-sensitivity-label-capabilities-in-apps).

If both of these conditions are met but you need to turn off the built-in labels in Windows Office apps, use the following Group Policy setting:

1. Navigate to **User Configuration/Administrative Templates/Microsoft Office 2016/Security Settings**.

2. Set **Use the Sensitivity feature in Office to apply and view sensitivity labels** to **0**.

If you later need to revert this configuration, change the value to **1**. You might also need to change this value to 1 if the **Sensitivity** button isn't displayed on the ribbon as expected. For example, a previous administrator turned this labeling setting off.
 
Deploy this setting by using Group Policy, or by using the [Office cloud policy service](/DeployOffice/overview-office-cloud-policy-service). The setting takes effect when these Office apps restart. 

Because this setting is specific to Windows Office apps, it has no impact on other apps on Windows that support sensitivity labels (such as Power BI) or other platforms (such as macOS, mobile devices, and Office for the web). If you don't want some or all users to see and use sensitivity labels across all apps and all platforms, don't assign a sensitivity label policy to those users.

## Office file types supported

Generally, Office apps that have built-in labeling for Word, Excel, and PowerPoint files support the Open XML format (such as .docx and .xlsx) but not the Microsoft Office 97-2003 format (such as .doc and .xls), Open Document Format (such as .odt and .ods), or other formats. When a file type is not supported for built-in labeling, the **Sensitivity** button is not available in the Office app.

For specific file types supported for SharePoint and OneDrive when these services are enabled for sensitivity labels, see [Enable sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md#supported-file-types).

The Azure Information Protection unified labeling client supports both the Open XML format and the Microsoft Office 97-2003 format. For more information, see [File types supported by the Azure Information Protection unified labeling client](/azure/information-protection/rms-client/clientv2-admin-guide-file-types) from that client's admin guide.

For other labeling solutions, check their documentation for file types supported.

## Protection templates and sensitivity labels

Administrator-defined [protection templates](/azure/information-protection/configure-policy-templates), such as those you define for Office 365 Message Encryption, aren't visible in Office apps when you're using built-in labeling. This simplified experience reflects that there's no need to select a protection template, because the same settings are included with sensitivity labels that have encryption enabled.

You can convert an existing template into a sensitivity label when you use the [New-Label](/powershell/module/exchange/new-label) cmdlet with the *EncryptionTemplateId* parameter.

## Information Rights Management (IRM) options and sensitivity labels

Sensitivity labels that you configure to apply encryption remove the complexity from users to specify their own encryption settings. In many Office apps, these individual encryption settings can still be manually configured by users by using Information Rights Management (IRM) options. For example, for Windows apps:

- For a document:  **File** > **Info** > **Protect Document** > **Restrict Access**
- for an email: From the **Options** tab > **Encrypt** 
  
When users initially label a document or email, they can override your label configuration settings with their own encryption settings. For example:

- A user applies the **Confidential \ All Employees** label to a document and this label is configured to apply encryption settings for all users in the organization. This user then manually configures the IRM settings to restrict access to a user outside your organization. The end result is a document that's labeled **Confidential \ All Employees** and encrypted, but users in your organization can't open it as expected.

- A user applies the **Confidential \ Recipients Only** label to an email and this email is configured to apply the encryption setting of **Do Not Forward**. In the Outlook app, this user then manually selects the IRM setting for Encrypt-Only. The end result is that while the email does remain encrypted, it can be forwarded by recipients, despite having the **Confidential \ Recipients Only** label.
    
    As an exception, for Outlook on the web, the options from the **Encrypt** menu aren't available for a user to select when the currently selected label applies encryption.

- A user applies the **General** label to a document, and this label isn't configured to apply encryption. This user then manually configures the IRM settings to restrict access to the document. The end result is a document that's labeled **General** but that also applies encryption so that some users can't open it as expected.

If the document or email is already labeled, a user can do any of these actions if the content isn't already encrypted, or they have the [usage right](/azure/information-protection/configure-usage-rights#usage-rights-and-descriptions) Export or Full Control. 

For a more consistent label experience with meaningful reporting, provide appropriate labels and guidance for users to apply only labels to protect documents and emails. For example:

- For exception cases where users must assign their own permissions, provide labels that [let users assign their own permissions](encryption-sensitivity-labels.md#let-users-assign-permissions). 

- Instead of users manually removing encryption after selecting a label that applies encryption, provide a sublabel alternative when users need a label with the same classification, but no encryption. Such as:
    - **Confidential \ All Employees**
    - **Confidential \ Anyone (no encryption)**

- Consider disabling IRM settings to prevent users from selecting them:
    - Outlook for Windows: 
        - Registry keys `DWORD:00000001` *DisableDNF* and *DisableEO* from `HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Common\DRM`
        - Make sure that the Group Policy setting **Configure default encryption option for the Encrypt button** isn't configured
    - Outlook for Mac: 
        - Keys *DisableEncryptOnly* and *DisableDoNotForward* security settings documented in [Set preferences for Outlook for Mac](/DeployOffice/mac/preferences-outlook)
    - Outlook on the web: 
        - Parameters *SimplifiedClientAccessDoNotForwardDisabled* and *SimplifiedClientAccessEncryptOnlyDisabled* documented for [Set-IRMConfiguration](/powershell/module/exchange/set-irmconfiguration)
    - Outlook for iOS and Android: These apps don't support users applying encryption without labels, so nothing to disable.

> [!NOTE]
> If users manually remove encryption from a labeled document that's stored in SharePoint or OneDrive and you've [enabled sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md), the label encryption will be automatically restored the next time the document is accessed or downloaded. 

## Encryption-based label matching for documents

When a document has been encrypted with administrator-defined permissions, the encryption policy is embedded in the document. This happens independently from labeling. For example, when an Office attachment inherits encryption from an email message, or a user has applied a protection template by using Information Rights Management (IRM) in their Office app. If a sensitivity label in the tenant matches that same encryption policy, Office apps will automatically assign that matching label to the document.

In this scenario, the matching sensitivity label can label an unlabeled document, and replace an existing label that doesn't apply encryption. For example, the **General** label is replaced with **Confidential / All Employees**. Content markings from the matching label aren't automatically applied, unless the document was previously unlabeled and you're using the AIP Add-in.

This scenario helps to move older encryption solutions from protection templates to sensitivity labels that apply encryption.

However, you will also see this behavior with a labeling scenario for email attachments when they are opened by the recipient. For example:

1. A user creates an email and attaches an unencrypted Office document, and then applies a label to the email.
    
    The label applies encryption with permissions that are set by the administrator, rather than the Do Not Forward or Encrypt-Only options. For example, for the label configuration, the admin selects **Assign permissions now**, and specifies all employees have read access.

2. When the email is sent, the [attachment automatically inherits the encryption, but not the label](encryption-sensitivity-labels.md#email-attachments-for-encrypted-email-messages).

3. When a recipient in the same tenant opens the encrypted document, a matching label for the admin-defined permissions is automatically displayed for the document, and persists if the document is saved.
    
    As an auditing event that's displayed in Activity Explorer, this user applied the label, not the email sender.

Encryption-based label matching works only within the tenant, for admin-defined permissions, and the matching sensitivity label must be published to the user who opens the document. The matching label persists if the document is saved.

## Sensitivity label compatibility

**With RMS-enlightened apps**: If you open a labeled and encrypted document or email in an [RMS-enlightened application](/azure/information-protection/requirements-applications#rms-enlightened-applications) that doesn't support sensitivity labels, the app still enforces encryption and rights management.

**With the Azure Information Protection client**: You can view and change sensitivity labels that you apply to documents and emails with the Office built-in labeling client by using the Azure Information Protection client, and the other way around.

**With other versions of Office**: Any authorized user can open labeled documents and emails in other versions of Office. However, you can only view or change the label in supported Office versions or by using the Azure Information Protection client. Supported Office app versions are listed in the [previous section](#support-for-sensitivity-label-capabilities-in-apps).

## Support for SharePoint and OneDrive files protected by sensitivity labels

To use the Office built-in labeling client with Office on the web for documents in SharePoint or OneDrive, make sure you've [enabled sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).

## Support for external users and labeled content

When you label a document or email, the label is stored as metadata that includes your tenant and a label GUID. When a labeled document or email is opened by an Office app that supports sensitivity labels, this metadata is read and only if the user belongs to the same tenant, the label displays in their app. For example, for built-in labeling for Word, PowerPoint, and Excel, the label name displays on the status bar. 

This means that if you share documents with another organization that uses different label names, each organization can apply and see their own label applied to the document. However, the following elements from an applied label are visible to users outside your organization:

- Content markings. When a label applies a header, footer, or watermark, these are added directly to the content and remain visible until somebody modifies or deletes them.

- The name and description of the underlying protection template from a label that applied encryption. This information displays in a message bar at the top of the document, to provide information about who is authorized to open the document, and their usage rights for that document.

### Sharing encrypted documents with external users

Although you can restrict access to users in your own organization, you can also extend access to any other user who has an account in Azure Active Directory (Azure AD). By default, these external users will be authenticated without any additional configuration. However, there might be additional configuration required for Azure AD [External Identities cross-tenant access settings](/azure/active-directory/external-identities/cross-tenant-access-overview) and [Conditional Access](/azure/active-directory/conditional-access/overview). 

If external users don't have an account in Azure AD, they can authenticate by using guest accounts in your tenant. These guest accounts can also be used to access shared documents in SharePoint or OneDrive when you have [enabled sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).

For more information about the optional Azure AD features and using guest accounts for authentication requirements, see [Azure AD configuration for encryption content](encryption-azure-ad-configuration.md).

All Office apps and other [RMS-enlightened application](/azure/information-protection/requirements-applications#rms-enlightened-applications) can open encrypted documents after the user has successfully authenticated. 

## When Office apps apply content marking and encryption

Office apps apply content marking and encryption with a sensitivity label differently, depending on the app you use.

| App | Content marking | Encryption |
| --- | --- | --- |
| Word, Excel, PowerPoint on all platforms | Immediately | Immediately |
| Outlook for PC and Mac | After Exchange Online sends the email | Immediately |
| Outlook on the web, iOS, and Android | After Exchange Online sends the email | After Exchange Online sends the email |
|

Solutions that apply sensitivity labels to files outside Office apps do so by applying labeling metadata to the file. In this scenario, content marking from the label's configuration isn't inserted into the file but encryption is applied. 

When those files are opened in an Office desktop app, the content markings are automatically applied by the Azure Information Protection unified labeling client when the file is first saved. The content markings are not automatically applied when you use built-in labeling for desktop, mobile, or web apps.

Scenarios that include applying a sensitivity label outside Office apps include:

- The scanner, File Explorer, and PowerShell from the Azure Information Protection unified labeling client 

- Auto-labeling policies for SharePoint and OneDrive

- Exported labeled and encrypted data from Power BI

- Microsoft Defender for Cloud Apps

For these scenarios, using their Office apps, a user with built-in labeling can apply the label's content markings by temporarily removing or replacing the current label and then reapplying the original label.

### Dynamic markings with variables

> [!IMPORTANT]
> If your Office apps don't support this capability, they apply the markings as the original text specified in the label configuration, rather than resolving the variables.
> 
> The Azure Information Protection unified labeling client supports dynamic markings. For labeling built in to Office, see the tables in the [capabilities](#support-for-sensitivity-label-capabilities-in-apps) section on this page for minimum versions supported.

When you configure a sensitivity label for content markings, you can use the following variables in the text string for your header, footer, or watermark:

| Variable | Description | Example when label applied |
| -------- | ----------- | ------- |
| `${Item.Label}` | Label display name of the label applied | **General**|
| `${Item.Name}` | File name or email subject of the content being labeled | **Sales.docx** |
| `${Item.Location}` | Path and file name of the document being labeled, or the email subject for an email being labeled | **\\\Sales\2020\Q3\Report.docx**|
| `${User.Name}` | Display name of the user applying the label | **Richard Simone** |
| `${User.PrincipalName}` | Azure AD user principal name (UPN) of the user applying the label | **rsimone\@contoso.com** |
| `${Event.DateTime}` | Date and time when the content is labeled, in the local time zone of the user applying the label in Microsoft 365 apps, or UTC (Coordinated Universal Time) for Office Online and auto-labeling policies | **8/10/2020 1:30 PM** |

> [!NOTE]
> The syntax for these variables is case-sensitive.

#### Setting different visual markings for Word, Excel, PowerPoint, and Outlook

As an additional variable, you can configure visual markings per Office application type by using an "If.App" variable statement in the text string, and identify the application type by using the values **Word**, **Excel**, **PowerPoint**, or **Outlook**. You can also abbreviate these values, which is necessary if you want to specify more than one in the same If.App statement.

Use the following syntax:

```
${If.App.<application type>}<your visual markings text> ${If.End}
```

As with the other dynamic visual markings, the syntax is case-sensitive, which includes the abbreviations for each application type (WEPO).

Examples:

- **Set header text for Word documents only:**

    `${If.App.Word}This Word document is sensitive ${If.End}`

    In Word document headers only, the label applies the header text "This Word document is sensitive". No header text is applied to other Office applications.

- **Set footer text for Word, Excel, and Outlook, and different footer text for PowerPoint:**

    `${If.App.WXO}This content is confidential. ${If.End}${If.App.PowerPoint}This presentation is confidential. ${If.End}`

    In Word, Excel, and Outlook, the label applies the footer text "This content is confidential." In PowerPoint, the label applies the footer text "This presentation is confidential."

- **Set specific watermark text for Word and PowerPoint, and then watermark text for Word, Excel, and PowerPoint:**

    `${If.App.WP}This content is ${If.End}Confidential`

    In Word and PowerPoint, the label applies the watermark text "This content is Confidential". In Excel, the label applies the watermark text "Confidential". In Outlook, the label doesn't apply any watermark text because watermarks as visual markings are not supported for Outlook.

## Require users to apply a label to their email and documents

> [!IMPORTANT]
> 
> The [Azure Information Protection unified labeling client](/azure/information-protection/rms-client/install-unifiedlabelingclient-app) supports this configuration that's also known as mandatory labeling. For labeling built in to Office apps, see the tables in the [capabilities](#support-for-sensitivity-label-capabilities-in-apps) section on this page for minimum versions.
>
> To use mandatory labeling for documents but not emails, see the instructions in the next section that explains how to configure Outlook-specific options.
> 
> To use mandatory labeling for Power BI, see [Mandatory label policy for Power BI](/power-bi/admin/service-security-sensitivity-label-mandatory-label-policy).

When the policy setting **Require users to apply a label to their email and documents** is selected, users assigned the policy must select and apply a sensitivity label under the following scenarios:

- For the Azure Information Protection unified labeling client:
    - For documents (Word, Excel, PowerPoint): When an unlabeled document is saved or users close the document.
    - For emails (Outlook): At the time users send an unlabeled message.

- For labeling built in to Office apps:
    - For documents (Word, Excel, PowerPoint): When an unlabeled document is opened or saved.
    - For emails (Outlook): At the time users send an unlabeled email message.

Additional information for built-in labeling:

- When users are prompted to add a sensitivity label because they open an unlabeled document, they can add a label or choose to open the document in read-only mode.

- When mandatory labeling is in effect, users can't remove sensitivity labels from documents, but can change an existing label.

- When mandatory labeling is in effect, the print to PDF option will be unavailable when a document is labeled or encrypted. For more information, see the [PDF support](#pdf-support) section on this page.

For guidance about when to use this setting, see the information about [policy settings](sensitivity-labels.md#what-label-policies-can-do).

> [!NOTE]
> If you use the default label policy setting for documents and emails in addition to mandatory labeling: 
>
> The default label always takes priority over mandatory labeling. However, for documents, the Azure Information Protection unified labeling client applies the default label to all unlabeled documents whereas built-in labeling applies the default label to new documents and not to existing documents that are unlabeled. This difference in behavior means that when you use mandatory labeling with the default label setting, users will probably be prompted to apply a sensitivity label more often when they use built-in labeling than when they use the Azure Information Protection unified labeling client.
> 
> Now rolling out: Office apps that use built-in labeling and support a default label for existing documents. For details, see the [capabilities table](sensitivity-labels-office-apps.md#sensitivity-label-capabilities-in-word-excel-and-powerpoint) for Word, Excel, and PowerPoint.

## Outlook-specific options for default label and mandatory labeling

For built-in labeling, identify the minimum versions of Outlook that support these features by using the [capabilities table for Outlook](#sensitivity-label-capabilities-in-outlook) on this page, and the row **Different settings for default label and mandatory labeling**. All versions of the Azure Information Protection unified labeling client support these Outlook-specific options.

When the Outlook app supports a default label setting that's different from the default label setting for documents:

- In the label policy configuration from the Microsoft Purview compliance portal, on the **Apply a default label to emails** page: You can specify your choice of sensitivity label that will be applied to all unlabeled emails, or no default label. This setting is independent from the **Apply this label by default to documents** setting on the previous **Policy settings for documents** page of the configuration.

When the Outlook app doesn't support a default label setting that's different from the default label setting for documents: Outlook will always use the value you specify for **Apply this label by default to documents** on the **Policy settings for documents** page of the label policy configuration.

When the Outlook app supports turning off mandatory labeling:

- In the label policy configuration from the Microsoft Purview compliance portal, on the **Policy settings** page: Select **Require users to apply a label to their email or documents**. Then select **Next** > **Next** and clear the checkbox **Require users to apply a label to their emails**. Keep the checkbox selected if you want mandatory labeling to apply to emails as well as to documents.

When the Outlook app doesn't support turning off mandatory labeling: If you select **Require users to apply a label to their email or documents** as a policy setting, Outlook will always prompt users to select a label for unlabeled emails.

> [!NOTE]
> If you have configured the PowerShell advanced settings **OutlookDefaultLabel** and **DisableMandatoryInOutlook** by using the [Set-LabelPolicy](/powershell/module/exchange/set-labelpolicy) or [New-LabelPolicy](/powershell/module/exchange/new-labelpolicy) cmdlets:
> 
> Your chosen values for these PowerShell settings are reflected in the label policy configuration in the Microsoft Purview compliance portal, and they automatically work for Outlook apps that support these settings. The other PowerShell advanced settings remain supported for the Azure Information Protection unified labeling client only.

## Configure a label to apply S/MIME protection in Outlook

> [!NOTE]
> This capability is currently rolling out for built-in labeling, and in various stages of release across the platforms. Identify the minimum versions of Outlook that support this feature by using the [capabilities table for Outlook](#sensitivity-label-capabilities-in-outlook) on this page, and the row **Apply S/MIME protection**.
> 
> If you configure a label to apply S/MIME protection but Outlook on Windows doesn't yet support it, the label is still displayed and can be applied, but the S/MIME settings are ignored. You won't be able to select this label for Exchange auto-labeling policies.

This configuration is not available in the Microsoft Purview compliance portal. You must use PowerShell advanced settings with the [Set-Label](/powershell/module/exchange/set-label) or [New-Label](/powershell/module/exchange/new-label) cmd after you've [connected to Office 365 Security & Compliance Center PowerShell](/powershell/exchange/office-365-scc/connect-to-scc-powershell/connect-to-scc-powershell).

Use these settings only when you have a working [S/MIME deployment](/microsoft-365/security/office-365-security/s-mime-for-message-signing-and-encryption) and want a label to automatically apply this protection method for emails rather than the [default protection that uses Rights Management encryption from Azure Information Protection](encryption-sensitivity-labels.md). The resulting protection will be the same as when a user manually selects S/MIME options from Outlook.

|Configuration  |Advanced setting key/value |
|---------|---------|
|**S/MIME digital signature** | SMimeSign="True" |
|**S/MIME encryption** | SMimeEncrypt="True"|

The label you configure for these settings doesn't have to be configured for encryption in the compliance portal. But if it is, S/MIME protection replaces the Rights Management encryption only in Outlook. For other apps, the label applies the encryption settings specified in the Microsoft Purview compliance portal.

Example PowerShell commands, where the sensitivity label GUID is **8faca7b8-8d20-48a3-8ea2-0f96310a848e**:

```PowerShell
Set-Label -Identity "8faca7b8-8d20-48a3-8ea2-0f96310a848e" -AdvancedSettings @{SMimeSign="True"}

Set-Label -Identity "8faca7b8-8d20-48a3-8ea2-0f96310a848e" -AdvancedSettings @{SMimeEncrypt="True"}
```

For more help in specifying PowerShell advanced settings, see [PowerShell tips for specifying the advanced settings](create-sensitivity-labels.md#powershell-tips-for-specifying-the-advanced-settings).

## PDF support

For built-in labeling, use the tables in the [capabilities](#support-for-sensitivity-label-capabilities-in-apps) section on this page to identify minimum versions supported. The Azure Information Protection unified labeling client doesn't support PDF in Office apps.

Word, Excel, and PowerPoint support the following methods to convert an Office document into a PDF document:

- File > Save As > PDF 
- File > Export > PDF
- Share > Send a Copy > PDF

This action is logged with the **Renamed file** audit event from the [File and page activities](search-the-audit-log-in-security-and-compliance.md#file-and-page-activities) auditing group. In the auditing search results in the compliance portal, you'll see the details of this auditing event display **SensitivityLabeledFileRenamed** for the **Activity** field.

When the PDF is created, it inherits the label with any content markings and encryption. Encrypted PDFs can be opened with Microsoft Edge on Windows or Mac. For more information, and alternative readers, see [Which PDF readers are supported for protected PDFs?](/azure/information-protection/rms-client/protected-pdf-readers#viewing-protected-pdfs-in-microsoft-edge-on-windows-or-mac)

Outlook doesn't currently support PDF attachments inheriting encryption from a labeled message. However, Outlook now does support warning or blocking users from printing to PDF, as described next.

PDF scenarios not supported:

- Print to PDF
    
    If users select this option, they are warned that the document or email will lose the protection of the label, and encryption (if applied), and must confirm to continue. If your sensitivity label policy requires justification to remove a label or lower its classification, they see this prompt.
    
    Because this option removes the sensitivity label, this option won't be available to users if you're using mandatory labeling. This configuration refers to the sensitivity label policy setting that requires users to apply a label to their emails and documents.

- PDF/A format and encryption
    
     This PDF format designed for long-term archiving isn't supported when the label applies encryption and will prevent users from converting Office documents to PDF. For configuration information, see the Group Policy documentation for [Enforce PDF compliance with ISO 19005-1 (PDF/A)](https://admx.help/?Category=Office2016&Policy=office16.Office.Microsoft.Policies.Windows::L_EnforcePDFcompliancewithISO190051PDFA).
    
- Password protection and encryption
    
    The option **File** > **Info** > **Protect Document** > **Encrypt with Password** isn't supported when the document's label applies encryption. In this scenario, the encrypt with password option becomes unavailable for users.

For more information about this capability, see the announcement [Apply sensitivity labels to PDFs created with Office apps](https://insider.office.com/blog/apply-sensitivity-labels-to-pdfs-created-with-office-apps).

For end user documentation, see [Create protected PDFs from Office files](https://support.microsoft.com/topic/aba7e367-e482-49e7-b746-a385e48d01e4).

## Sensitivity bar

Newly supported in preview for built-in labels in Word, Excel, and PowerPoint, but not yet for Outlook or Office for the web, see the tables in the [capabilities](#support-for-sensitivity-label-capabilities-in-apps) section on this page to identify minimum versions.

For the supported apps, sensitivity labels are now displayed in a sensitivity bar, next to the file name on the top window bar. For example:

![Sensitivity labels on the window title bar.](../media/sensitivity-bar-example.png)

Information about the labels and the ability to select or change a label are also integrated into user workflows that includes save and rename, export, share, print, and [convert to PDF](#pdf-support). For more information and example screenshots, see the blog post announcement, [New sensitivity bar in Office for Windows](https://insider.office.com/blog/sensitivity-bar-in-office-for-windows).

As part of this high visibility, these labels also support colors. For more information, see the next section.

### Label colors

> [!IMPORTANT]
> If your labeling apps don't support this capability, they don't display the configured label colors.
> 
> The Azure Information Protection unified labeling client supports label colors. For labeling built in to Office, label colors are currently supported in preview for Word, Excel, and PowerPoint on Windows, but not yet for Outlook, macOS, or Office for the web. For more information, see the tables in the [capabilities](#support-for-sensitivity-label-capabilities-in-apps) section on this page.

Newly created labels don't have a color by default. If your labels were [migrated from Azure Information Protection](/azure/information-protection/configure-policy-migrate-labels) or you configured label colors for the Azure Information Protection unified labeling client, these label colors are now displayed in apps that support them.

Use the Microsoft Purview compliance portal to select one of 10 standard colors for sensitivity labels. The **Label color** configuration is on the first page of the label configuration after the label name and description.

You can't select colors for sublabels because they automatically inherit the label color from their parent label.

If a label is configured for a different color from one of the 10 default colors, you see a **Use previously assigned custom color** check box selected, and the standard color options aren't available. You can change the custom color to one of the standard colors by first clearing the checkbox, and then you can select one of the standard colors. 

You can't use the compliance portal to configure a different custom color. Instead, use PowerShell, as described in the next section.

#### Configuring custom colors by using PowerShell 

You can use the [Security & Compliance PowerShell](/powershell/exchange/scc-powershell) advanced setting **color** to set a color for a sensitivity label. This configuration supports colors that you can't configure in the Microsoft Purview compliance portal.

To specify your choice of color, use a hex triplet code for the red, green, and blue (RGB) components of the color. For example, #40e0d0 is the RGB hex value for turquoise.

For more information about these codes, see the [\<color>](https://developer.mozilla.org/docs/Web/CSS/color_value) page from the MSDN web docs, and you might also find [RapidTables](https://www.rapidtables.com/web/color/RGB_Color.html) helpful. You can identify these codes in many applications that let you edit pictures. For example, Microsoft Paint lets you choose a custom color from a palette and the RGB values are automatically displayed, which you can then copy.

Example PowerShell command, where the sensitivity label GUID is **8faca7b8-8d20-48a3-8ea2-0f96310a848e**

```PowerShell
Set-Label -Identity 8faca7b8-8d20-48a3-8ea2-0f96310a848e -AdvancedSettings @{color="#40e0d0"}
```

For more information to help you specify PowerShell advanced settings for sensitivity labels, see [PowerShell tips for specifying the advanced settings](create-sensitivity-labels.md#powershell-tips-for-specifying-the-advanced-settings).

## Auditing labeling activities

For information about the auditing events that are generated by sensitivity label activities, see the [Sensitivity label activities](search-the-audit-log-in-security-and-compliance.md#sensitivity-label-activities) section from [Search the audit log in the Microsoft Purview compliance portal](search-the-audit-log-in-security-and-compliance.md).

This auditing information is visually represented in [content explorer](data-classification-content-explorer.md) and [activity explorer](data-classification-activity-explorer.md) to help you understand how your sensitivity labels are being used and where this labeled content is located. 

You can also create custom reports with your choice of security information and event management (SIEM) software when you [export and configure the audit log records](export-view-audit-log-records.md). For larger-scale reporting solutions, see the [Office 365 Management Activity API reference](/office/office-365-management-api/office-365-management-activity-api-reference).

> [!TIP]
> To help create custom reports, see the following blog posts:
> - [Microsoft Purview audit log activities via O365 Management API - Part 1](https://techcommunity.microsoft.com/t5/security-compliance-and-identity/microsoft-365-compliance-audit-log-activities-via-o365/ba-p/2957171)
> - [Microsoft Purview audit log activities via O365 Management API - Part 2](https://techcommunity.microsoft.com/t5/security-compliance-and-identity/microsoft-365-compliance-audit-log-activities-via-o365/ba-p/2957297) 

## End-user documentation

- [Apply sensitivity labels to your files and email in Office](https://support.microsoft.com/en-us/office/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)
    - [Known issues with sensitivity labels in Office](https://support.microsoft.com/en-us/office/known-issues-with-sensitivity-labels-in-office-b169d687-2bbd-4e21-a440-7da1b2743edc)

- [Automatically apply or recommend sensitivity labels to your files and emails in Office](https://support.office.com/article/automatically-apply-or-recommend-sensitivity-labels-to-your-files-and-emails-in-office-622e0d9c-f38c-470a-bcdb-9e90b24d71a1)
    - [Known issues with automatically applying or recommending sensitivity labels](https://support.office.com/article/known-issues-with-automatically-applying-or-recommending-sensitivity-labels-451698ae-311b-4d28-83aa-a839a66f6efc)

- [Create protected PDFs from Office files](https://support.microsoft.com/topic/aba7e367-e482-49e7-b746-a385e48d01e4)
