---
title: "About Document Fingerprinting"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 03/28/2023
audience: ITPro
ms.topic: article
search.appverid: MET150
ms.service: exchange-online
ms.collection: 
- purview-compliance
- tier1
ms.localizationpriority: medium
description: "Document Fingerprinting makes it easier for you to protect information by identifying standard forms that are used by your organization. This article describes the concepts behind Document Fingerprinting and how to create one by using PowerShell."
---

# Document Fingerprinting

Information workers in your organization handle many kinds of sensitive information during a typical day. In the Microsoft Purview compliance portal, document fingerprinting makes it easier for you to protect this information by identifying standard forms that are used throughout your organization. This article describes the concepts behind Document Fingerprinting and how to create a document fingerprint using the compliance portal or using PowerShell.

Document fingerprinting includes the following features:
- DLP can use document fingerprinting as a detection method in Exchange, SharePoint, OneDrive, Teams, and Windows devices.
- Document fingerprint features can be managed through the Microsoft Purview compliance portal.
- [Partial detection ](#partial-matching)is supported.
- [Exact file matching](#exact-matching) is supported. 
- Improved detection accuracy
- Support for detection in multiple languages, including dual-byte languages such as Chinese, Japanese, and Korean.

> [!Important]
> If you are an E5 customer, we recommend updating your existing fingerprints to take advantage of the full document fingerprint feature set. 
> If you are an E3 customer, we recommend upgrading to an E5 license. If you choose not to, you won't be able to modify existing fingerprints or create new ones after April 23, 2023.

## Basic scenario for Document Fingerprinting

Document fingerprinting is a Microsoft Purview Data Loss Prevention (DLP) feature that converts a standard form into a sensitive information type (SIT), which you can use in the rules of your DLP policies. For example, you can create a document fingerprint based on a blank patent template and then create a DLP policy that detects and blocks all outgoing patent templates with sensitive content filled in. Optionally, you can set up [policy tips](use-notifications-and-policy-tips.md) to notify senders that they might be sending sensitive information, and that the sender should verify that the recipients are qualified to receive the patents. This process works with any text-based forms used in your organization. Other examples of forms that you can upload include:

- Government forms
- Health Insurance Portability and Accountability Act (HIPAA) compliance forms
- Employee information forms for Human Resources departments
- Custom forms created specifically for your organization

Ideally, your organization already has an established business practice of using certain forms to transmit sensitive information. To enable detection, upload an empty form to be converted to a document fingerprint. Next, set up a corresponding policy. Once you complete these steps, DLP detects any documents in outbound mail that match that fingerprint.

## How Document Fingerprinting works

You have probably already guessed that documents don't have actual fingerprints, but the name helps explain the feature. In the same way that a person's fingerprints have unique patterns, documents have unique word patterns. When you upload a file, DLP identifies the unique word pattern in the document, creates a document fingerprint based on that pattern, and uses that document fingerprint to detect outbound documents containing the same pattern. That's why uploading a form or template creates the most effective type of document fingerprint. Everyone who fills out a form uses the same original set of words and then adds their own words to the document. If the outbound document isn't password protected and contains all the text from the original form, DLP can determine whether the document matches the document fingerprint.

![Diagram of document fingerprinting.](../media/Document-Fingerprinting-diagram.png)

The patent template contains the blank fields "Patent title," "Inventors," and "Description", along with descriptions for each of those fields--that's the word pattern. When you upload the original patent template, it's in one of the supported file types and in plain text. DLP converts this word pattern into a document fingerprint, which is a small Unicode XML file containing a unique hash value that represents the original text. The fingerprint is saved as a data classification in Active Directory. (As a security measure, the original document itself isn't stored on the service; only the hash value is stored. The original document can't be reconstructed from the hash value.) The patent fingerprint then becomes a SIT that you can associate with a DLP policy. After you associate the fingerprint with a DLP policy, DLP detects any outbound emails containing content that matches the patent fingerprint and deals with it according to your organization's policy.

For example, if you set up a DLP policy that prevents regular employees from sending outgoing messages containing patents, DLP uses the patent fingerprint to detect patents and block those emails. Alternatively, you might want to let your legal department be able to send patents to other organizations because it has a business need for doing so. To allow specific departments to send sensitive information, create exceptions for those departments in your DLP policy. Alternatively, you can allow them to override a policy tip with a business justification.

> [!IMPORTANT]
> Text in embedded documents is not considered for fingerprint creation. You need to provide sample template files that don't contain embedded documents.

### Supported file types

Document Fingerprinting supports the same file types that are supported in mail flow rules (also known as transport rules). For a list of supported file types, see [Supported file types for mail flow rule content inspection](/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments#supported-file-types-for-mail-flow-rule-content-inspection). One quick note about file types: neither mail flow rules nor document fingerprinting supports the **.dotx** file type, which is a template file in Microsoft Word. When you see the word "template" in this and other document fingerprinting articles, it refers to a document that you've established as a standard form, not the template file type.

#### Limitations of document fingerprinting

Document fingerprinting doesn't detect sensitive information in the following cases:

- Password protected files
- Files that contain images only
- Documents that don't contain all the text from the original form used to create the document fingerprint
- Files larger than 4 MB
 
> [!NOTE]
> To use document fingerprinting with devices, **Advanced fingerprinting** must be turned oN.

Fingerprints are stored in a separate rule pack. This rule pack has a maximum size limit of 150 KB. Given this limit, you can create approximately 50 fingerprints per tenant.

The following examples show what happens if you create a document fingerprint based on a patent template. However, you can use any form as a basis for creating a document fingerprint.

### Compliance portal example of a patent document matching a document fingerprint of a patent template
1. In the Microsoft Purview compliance portal, select **Data classification** and then choose **Classifiers**.
2. On the **Classifiers** page, choose **Sensitive info types**.
3. Next, choose **Create Fingerprint based SIT**.
4. Enter a name and description for your new SIT.
5. Upload the file you wish to use as the fingerprint template.
6. OPTIONAL: Adjust the requirements for each confidence level and then choose **Next**. For more information, see [Partial Matching](#partial-matching) and [Exact Matching](#exact-matching).
7. Review your settings and then choose **Create**.
8. When the confirmation page displays, choose **Done**.

### PowerShell example of a patent document matching a document fingerprint of a patent template

```powershell
>> $Customer_Form = ([System.IO.File]::ReadAllBytes('C:\My Documents\file1.docx'))
>> $Customer_Fingerprint = New-DlpFingerprint -FileData $Customer_Form -Description "A friendly Description" -ThresholdConfig @{low=40;medium=60;high=80} -IsExact $false
 
>> New-DlpSensitiveInformationType -Name "Fingerprint SIT" -Fingerprints $Customer_Fingerprint -Description "A friendly Description"
```
<br>

### Partial Matching
To configure partial matching of a document fingerprint, when configuring the confidence level, choose **Low**, **Medium** or **High** and designate how much of the text in the file must match the fingerprint in terms of a percentage between 30% - 90%.

### Exact Matching
To configure exact matching of a document fingerprint, set the confidence level to **High**. When you set the confidence level to **High**, only files that have exactly the same text as the fingerprint will be detected. If the file has even a small deviation from the fingerprint, it will not be detected.

## Already using fingerprint SITs?
Your existing fingerprints and policies/rules for those fingerprints should continue to work. If you don't want to use the latest fingerprint features, you don't have to do anything.

If you have an E5 license and want to use the latest fingerprint features, you can either create a new fingerprint or [migrate the existing fingerprints](#migrate-an-exiting-fingerprint-to-the-latest-version) to the newer version.

> [!NOTE]
> Creating new fingerprints using the templates on which a fingerprint already exists is not supported.

## Create or migrate a policy with a fingerprint SIT in Microsoft Purview compliance portal

### Create a new policy using your fingerprint SIT using the compliance portal**

1. In the Microsoft Purview compliance portal, select **Data loss prevention** and then choose **Policies**.
2. Choose **Sensitive info types**.
3. Choose the + symbol to create a new policy.
4. Choose **Custom** to create a new policy and then select your region or country.
5. Choose **Next**.
6. Name your policy and provide a description, and then choose **Next**.
7. OPTIONAL: Add specific users and groups you want who should be subject to the policy and then choose **Next**. (If the policy should apply to all users and groups, simply choose **Next**.) 
8. Select the locations where you want the policy applied and then choose **Next**.
9. On the **Define policy settings** page, choose **Next**.
10. On the **Customize advanced DLP rules** page, choose **Create rule**.
11. Enter a name and description for your rule.
12. Under **Conditions** choose **Add condition** and then choose **Content contains**.
13. Give your new set of DLP rules a **Group name**.
14. Choose **Add** and then **Sensitive info types**.
15. In the Sensitive info types search for and, select the name of your fingerprint SIT.
16. Choose **Add**.
17. Select your confidence level and then choose **Add an action**.
18. Select the action to take when the rule is triggered, and then specify the action details.
19. Choose **Save**.
20. Choose **Next**.
21. Select whether to test your policy or turn it on right away, then choose **Next**.
22. Review your settings and then choose **Submit**.
23. Choose **Done**.

## Create a classification rule package based on document fingerprinting using PowerShell

Currently, you can create a document fingerprint only in [Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

DLP uses classification rule packages to detect sensitive content. To create a classification rule package based on a document fingerprint, use the **New-DlpFingerprint** and **New-DlpSensitiveInformationType** cmdlets. Because the results of **New-DlpFingerprint** aren't stored outside the data classification rule, you always run **New-DlpFingerprint** and **New-DlpSensitiveInformationType** or **Set-DlpSensitiveInformationType** in the same PowerShell session. The following example creates a new document fingerprint based on the file C:\My Documents\Contoso Employee Template.docx. You store the new fingerprint as a variable so you can use it with the **New-DlpSensitiveInformationType** cmdlet in the same PowerShell session.

```powershell
$Employee_Template = ([System.IO.File]::ReadAllBytes('C:\My Documents\Contoso Employee Template.docx'))
$Employee_Fingerprint = New-DlpFingerprint -FileData $Employee_Template -Description "Contoso Employee Template"
```

Now, let's create a new data classification rule named "Contoso Employee Confidential" that uses the document fingerprint of the file C:\My Documents\Contoso Customer Information Form.docx.

```powershell
$Customer_Form = ([System.IO.File]::ReadAllBytes('C:\My Documents\Contoso Customer Information Form.docx'))
$Customer_Fingerprint = New-DlpFingerprint -FileData $Customer_Form -Description "Contoso Customer Information Form"
New-DlpSensitiveInformationType -Name "Contoso Customer Confidential" -Fingerprints $Customer_Fingerprint -Description "Message contains Contoso customer information."
```

You can now use the **Get-DlpSensitiveInformationType** cmdlet to find all DLP data classification rule packages, and in this example, "Contoso Customer Confidential" is part of the data classification rule packages list.

Finally, add the "Contoso Customer Confidential" data classification rule package to a DLP policy in the Microsoft Purview compliance portal. This example adds a rule to an existing DLP policy named "ConfidentialPolicy".

```powershell
New-DlpComplianceRule -Name "ContosoConfidentialRule" -Policy "ConfidentialPolicy" -ContentContainsSensitiveInformation @{Name="Contoso Customer Confidential"} -BlockAccess $True
```

You can also use the data classification rule package in mail flow rules in Exchange Online, as shown in the following example. To run this command, you first need to [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). Also note that it takes time for the rule package to sync from the Microsoft Purview compliance portal to the Exchange admin center.

```powershell
New-TransportRule -Name "Notify :External Recipient Contoso confidential" -NotifySender NotifyOnly -Mode Enforce -SentToScope NotInOrganization -MessageContainsDataClassification @{Name=" Contoso Customer Confidential"}
```

DLP now detects documents that match the Contoso Customer Form.docx document fingerprint.

For syntax and parameter information, see:

- [New-DlpFingerprint](/powershell/module/exchange/New-DlpFingerprint)
- [New-DlpSensitiveInformationType](/powershell/module/exchange/New-DlpSensitiveInformationType)
- [Remove-DlpSensitiveInformationType](/powershell/module/exchange/Remove-DlpSensitiveInformationType)
- [Set-DlpSensitiveInformationType](/powershell/module/exchange/Set-DlpSensitiveInformationType)
- [Get-DlpSensitiveInformationType](/powershell/module/exchange/Get-DlpSensitiveInformationType)

## Edit, test, or delete a document fingerprint

To do this via the user interface, open the fingerprint SIT you want to edit, test, or delete and choose the appropriate icon.

To do this via PowerShell, run the following command(s).

**Edit a document fingerprint**
```powershell
>> Set-DlpSensitiveInformationType -Name "Fingerprint SIT" -FileData ([System.IO.File]::ReadAllBytes('C:\My Documents\file1.docx')) -ThresholdConfig @{low=30;medium=50;high=80} -IsExact $false-Description "A friendly Description"
```
**Test a document fingerprint**
```powershell
>> $r = Test-DataClassification -TextToClassify "Credit card information Visa: 4485 3647 3952 7352. Patient Identifier or SSN: 452-12-1232"
>> $r.ClassificationResults
```
**Delete a document fingerprint**
```powershell
>> Remove-DlpSensitiveInformationType "Fingerprint SIT"
```

### Migrate a new policy using your fingerprint SIT using the compliance portal**

1. In the Microsoft Purview compliance portal, select **Data loss prevention** and then choose **Policies**.
2. Choose **Sensitive info types**.
3. Open the SIT containing the fingerprint that you want to migrate.
4. Choose **Edit**.
5. Upload the same fingerprint file again.
6. Review the fingerprint settings.
7. Choose **Done**.

### Migrate a fingerprint using PowerShell

Enter the following command:
```powershell
Set-DlpSensitiveInformationType -Name "Old Fingerprint" -FileData ([System.IO.File]::ReadAllBytes('C:\My Documents\file1.docx')) -ThresholdConfig @{low=30;medium=50;high=80} -IsExact $false-Description "A friendly Description"
```
