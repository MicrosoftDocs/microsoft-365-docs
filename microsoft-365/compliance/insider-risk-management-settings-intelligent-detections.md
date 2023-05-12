---
title: Configure intelligent detections in insider risk management
description: Learn about the Intelligent detections setting in Microsoft Purview Insider Risk Management. 
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 05/03/2023
audience: itpro
ms.collection:
- highpri 
- tier1
- purview-compliance
- m365solution-insiderrisk
- m365initiative-compliance
- highpri
ms.custom: admindeeplinkCOMPLIANCE
---

# Configure intelligent detections in insider risk management

> [!IMPORTANT]
> Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage, and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

You can use the **Intelligent detections** setting in Microsoft Purview Insider Risk Management to set up global exclusions. For example, you might want to exclude certain file types or domains from being scored for risk. Use can also use the **Intelligent detections** setting to adjust alert volume or import Microsoft Defender for Endpoint alerts. 

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Ignore email signature attachments (preview)

One of the main sources of 'noise' in insider risk management policies is images in email signatures, which are often detected as attachments in emails. This can lead to false positives of users sending potentially confidential files via email. If the *Sending email with attachments to recipients outside the organization* indicator is selected, the attachment is scored like any other email attachment sent outside the organization, even if the only thing in the attachment is the email signature. You can exclude email signature attachments from being scored in this situation by turning on the **Ignore email signature attachments** setting.

Turning on this setting significantly eliminates noise from email signature attachments, but won't completely eliminate all noise. This is because only the email signature attachment of *the email sender* (the person who initiates the email or replies to the email) is excluded from scoring. A signature attachment for anyone on the To, CC, or BCC line will still be scored. Also, if someone changes their email signature, the new signature has to be profiled, which can cause alert noise for a short period of time.

> [!NOTE]
> The **Ignore email signature attachments** setting is off by default.

## File activity detection

To exclude specific file types from all insider risk management policy matching, enter file type extensions separated by commas. For example, to exclude certain types of music files from policy matches, enter *aac,mp3,wav,wma* in the **File type exclusions** field. Files with these extensions will be ignored by all insider risk management policies.

## Alert volume

Potentially risky activities detected by insider risk policies are assigned a specific risk score, which in turn determines the alert severity (low, medium, high). By default, insider risk management generates a certain amount of low, medium, and high severity alerts, but you can increase or decrease the volume to suit your needs. 

To adjust the volume of alerts for all insider risk management policies, choose one of the following settings:

- **Fewer alerts**: You'll see all high-severity alerts, fewer medium-severity alerts, and no low-severity alerts. You could miss some true positives if you choose this setting level.
- **Default volume**: You'll see all high-severity alerts and a balanced amount of medium-severity and low-severity alerts.
- **More alerts**: You'll see all medium-severity and high-severity alerts and most low-severity alerts. This setting level might result in more false positives.

## Microsoft Defender for Endpoint alert statuses

> [!IMPORTANT]
> You must configure Microsoft Defender for Endpoint in your organization and enable Defender for Endpoint for insider risk management integration in the Defender Security Center to import security violation alerts. For more information on configuring Defender for Endpoint for insider risk management integration, see [Configure advanced features in Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/advanced-features\#share-endpoint-alerts-with-microsoft-compliance-center).

[Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) is an enterprise endpoint security platform designed to help enterprise networks prevent, detect, investigate, and respond to advanced threats. To have better visibility of security violations in your organization, you can import and filter Defender for Endpoint alerts for activities used in policies created from insider risk management security violation policy templates.

Depending on the types of signals you're interested in, you can choose to import alerts to insider risk management based on the Defender for Endpoint alert triage status. You can define one or more of the following alert triage statuses in the global settings to import:

- Unknown
- New
- In progress
- Resolved

Alerts from Defender for Endpoint are imported daily. Depending on the triage status you choose, you may see multiple user activities for the same alert as the triage status changes in Defender for Endpoint.

For example, if you select *New*, *In progress*, and *Resolved* for this setting, when a Microsoft Defender for Endpoint alert is generated and the status is *New*, an initial alert activity is imported for the user in insider risk management. When the Defender for Endpoint triage status changes to *In progress*, a second activity for this alert is imported. When the final Defender for Endpoint triage status of *Resolved* is set, a third activity for this alert is imported. This functionality allows investigators to follow the progression of the Defender for Endpoint alerts and choose the level of visibility that their investigation requires.

## Domains

Domain settings help you define risk levels for risk management activities for specific domains. These activities include sharing files, sending email messages, downloading content, or uploading content. By specifying domains in these settings, you can increase or decrease the risk scoring for risk management activity that takes place with these domains.

Use Add domain to define a domain for each of the domain settings. Additionally, you can use wildcards to help match variations of root domains or subdomains. For example, to specify sales.wingtiptoys.com and support.wingtiptoys.com, use the wildcard entry '*.wingtiptoys.com' to match these subdomains (and any other subdomain at the same level). To specify multi-level subdomains for a root domain, you must select the **Include Multi-Level Subdomains** check box.

For each of the following domain settings, you can enter up to 500 domains:

- **Unallowed domains:** When you specify an unallowed domain, risk management activity that takes place with that domains will have a *higher* risk score. For example, you might want to specify activities that involve sharing content with someone (such as sending email to someone with a gmail.com address) or activities that involve users downloading content to a device from an unallowed domain.
- **Allowed domains:** Risk management activity related to a domain specified in **Allowed domains** will be ignored by your policies and won't generate alerts. These activities include:

    - Email sent to external domains
    - Files, folders, and sites shared with external domains
    - Files uploaded to external domains (using Microsoft Edge browser)

    When you specify an allowed domain, risk management  activity with that domain is treated similarly to how internal organization activity is treated. For example, a domain added in **Allowed domains** might include an activity that involves sharing content with someone outside your organization (such as sending email to someone with a gmail.com address).

- **Third party domains:** If your organization uses third-party domains for business purposes (such as cloud storage), include them here so you can receive alerts for potentially risky activity related to the device indicator *Use a browser to download content from a third-party site*.

## File path exclusions

When you specify file paths to exclude, user activities that map to specific indicators and that occur in those file path locations won't generate policy alerts. Examples include copying or moving files to a system folder or network share path. You can enter up to 500 file paths for exclusion.

To add file paths to exclude:

1. In the compliance portal, go to **Insider risk management** > **Settings** > **Intelligent detections**. 
2. In the **File path exclusion** section, select **Add file paths to exclude**.
3. In the **Add a file path** pane, enter an exact network share or device path to exclude from risk scoring. You can also use * and *([0-9]) to denote specific and wildcard folders and subfolders to be excluded. For more information, see the following examples.

   |Example|Description|
   |-----------------------------------------------|-------------------------------------------------|
   |**\\\\ms.temp\LocalFolder\ or C:\temp**|Excludes files directly under the folder and all subfolders for every file path starting with the entered prefix.|
   |**\public\local\\**|Excludes files from every file path containing the entered value.<p><p>Matches with 'C:\Users\Public\local\\', 'C:\Users\User1\Public\local\', and '\\\\ms.temp\Public\local'.|
   |**C:\Users\\\*\Desktop**|Matches with 'C:\Users\user1\Desktop' and 'C:\Users\user2\Desktop'.|
   |**C:\Users\\\*(2)\Desktop**|Matches with 'C:\Users\user1\Desktop' and 'C:\Users\user2\Shared\Desktop'.|

4. Select **Add file paths**. 

> [!NOTE]
> To delete a file path exclusion, select the file path exclusion, and then select **Delete**.

### Default file path exclusions

By default, several file paths are automatically excluded from generating policy alerts. Activities in these file paths are typically benign and could potentially increase the volume of non-actionable alerts. If needed, you can cancel the selection for these default file path exclusions to enable risk scoring for activities in these locations.

The default file path exclusions are:

- \Users\\\*\AppData
- \Users\\\*\AppData\Local
- \Users\\\*\AppData\Local\Roaming
- \Users\\\*\AppData\Local\Local\Temp

The wildcards in these paths denote that all folder levels between the \Users and \AppData are included in the exclusion. For example, activities in *C:\Users\Test1\AppData\Local* and *C:\Users\Test2\AppData\Local*, *C:\Users\Test3\AppData\Local* (and so on) would all be included and not scored for risk as part of the *\Users\\\*\AppData\Local* exclusion selection.

## Sensitive info type exclusions (preview)

Excluded [Sensitive info types](sensitive-information-type-learn-about.md) map to indicators and triggers involving file-related activities for Endpoint, SharePoint, Teams, OneDrive, and Exchange. These excluded types are treated as non-sensitive info types. If a file contains any sensitive info type identified in this section, the file will be risk scored but not shown as activities involving content related to sensitive info types. For a complete list of sensitive info types, see [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md).

You can select the sensitive info types to be excluded from the list of all available (out-of-box and custom) types available in the tenant. You can choose up to 500 sensitive info types to be excluded.

> [!NOTE]
> The exclusion list of sensitive info types takes precedence over the [priority content](insider-risk-management-policies.md#prioritize-content-in-policies) list.

To exclude sensitive info types:

1. In the compliance portal, go to **Insider risk management** > **Settings** > **Intelligent detections**. 
2. In the **Sensitive info types** section, select **Add sensitive info types to exclude**.
3. In the **Add or edit sensitive info type** pane, select the types that you want to exclude.
4. Select **Add**. 

> [!NOTE]
> To delete a sensitive info type exclusion, select the exclusion, and then select **Delete**.

## Trainable classifier exclusion (preview)

Excluded [Trainable classifiers](classifier-get-started-with.md) map to indicators and triggers involving file-related activities for SharePoint, Teams, OneDrive, and Exchange. If any file contains any trainable classifier identified in this section, the file will be risk scored but not shown as activity involving content related to trainable classifiers. For a complete list of pre-trained classifiers, see [Trainable classifiers definitions](classifier-tc-definitions.md#trainable-classifiers-definitions).

You can select the trainable classifiers to be excluded from the list of all available (out-of-box and custom) types available in the tenant. Insider risk management excludes some trainable classifiers by default, including Threat, Profanity, Targeted harassment, Offensive language, and Discrimination. You can choose up to 500 trainable classifiers to be excluded.

> [!NOTE]
> Optionally, you can choose trainable classifiers to be included in the [priority content](insider-risk-management-policies.md#prioritize-content-in-policies) list.

To exclude trainable classifiers:

1. In the compliance portal, go to **Insider risk management** > **Settings** > **Intelligent detections**. 
2. In the **Trainable classifiers** section, select **Add trainable classifiers to exclude**.
3. In the **Add or edit trainable classifiers** pane, select the classifiers that you want to exclude.
4. Select **Add**. 

> [!NOTE]
> To delete a trainable classifiers exclusion, select the exclusion, and then select **Delete**.

## Site exclusions

Configure site URL exclusions to prevent potential risky activities that occur in SharePoint (and SharePoint sites associated with Teams channel sites) from generating policy alerts. You might want to consider excluding sites and channels that contain non-sensitive files and data that can be shared with stakeholders or the public. You can enter up to 500 site URL paths to exclude.

To add site URL paths to exclude:

1. In the compliance portal, go to **Insider risk management** > **Settings** > **Intelligent detections**.
2. In the **Site URL exclusion** section, select **Add or edit SharePoint sites**.
3. In the **Add or edit SharePoint sites** pane, enter or search for the SharePoint site to exclude from risk scoring. You'll only see SharePoint sites that you have permission to access.
4. Select **Add**.

To edit site URL paths to exclude:

1. In the compliance portal, go to **Insider risk management** > **Settings** > **Intelligent detections**.
2. In the **Site URL exclusion** section, select **Add or edit SharePoint sites**.
3. In the **Add or edit SharePoint sites** pane, enter or search for the SharePoint site to exclude from risk scoring. You'll only see SharePoint sites that you have permission to access.
4. Select **Edit**.

> [!NOTE]
> To delete a Site URL exclusion, select the site URL exclusion, and then select **Delete**.

## Keyword exclusion

Configure exclusions for keywords that appear in file names, file paths, or email message subject lines. This allows flexibility for organizations that need to reduce potential alert frequency due to flagging of benign terms specified for your organization. Such activities related to files or email subjects containing the keyword will be ignored by your insider risk management policies and won't generate alerts. You can enter up to 500 keywords to exclude. 

Use the **Exclude only if it does not contain** field to define specific groupings of terms to ignore for exclusion. For example, if you want to exclude the keyword 'training', but not exclude 'compliance training', enter 'compliance' (or 'compliance training') in the **Exclude only if it does not contain** field and 'training' in the **But does contain** field.

If you just want to exclude specific standalone terms, enter the terms in the **But does contain field** only.

To add standalone keywords to exclude:

1. In the compliance portal, go to **Insider risk management** > **Settings** > **Intelligent detections**.
2. In the **Keyword exclusion** section, enter the standalone keywords in the **But does contain** field.
3. Select **Save** to configure the keyword exclusions.

To delete a standalone keyword to exclude:

1. In the compliance portal, go to **Insider risk management** > **Settings** > **Intelligent detections**. 
2. In the **Keyword exclusion** section, select the *X* for the specific standalone keyword in the **But does contain** field. Repeat as needed to remove multiple keywords.
3. Select **Save**.
