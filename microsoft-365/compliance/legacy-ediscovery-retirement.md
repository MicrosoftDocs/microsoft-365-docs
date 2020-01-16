---
title: "Retirement of legacy eDiscovery tools"
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
ROBOTS: NOINDEX, NOFOLLOW 
description: "In-Place eDiscovery and In-Place Hold (and the corresponding PowerShell cmdlets) in Exchange Online will be retired in the first half of 2020. The Search-Mailbox cmdlet and Office 365 Advanced eDiscovery v1.0 are also being retired within the same time period."
---

# Retirement of legacy eDiscovery tools

Over the years, Microsoft has provided eDiscovery tools that let you search, preview, and export email content from Exchange Online. However, these tools no longer offer an effective way to search for non-Exchange content in other Office 365 services, such as SharePoint Online and Office 365 Groups. To address this, Microsoft offers other eDiscovery tools that help you search for a wide variety of Office 365 content. And we've been working hard to incorporate the most current and powerful eDiscovery functionality in the [Microsoft 365 compliance center](https://compliance.microsoft.com). This allows organizations to respond to legal, internal, and other document requests for content across many Office 365 services, including Exchange Online.

As a result of this new and improved eDiscovery functionality in the Microsoft 365 compliance center, we're retiring the following eDiscovery-related features and functionality related to searching for email content:

- [In-Place eDiscovery](https://docs.microsoft.com/exchange/security-and-compliance/in-place-ediscovery/in-place-ediscovery) and [In-Place Holds](https://docs.microsoft.com/exchange/security-and-compliance/create-or-remove-in-place-holds) in the Exchange admin center.

- The Exchange Online PowerShell cmdlets that support In-Place eDiscovery and In-Place Holds (these cmdlets are collectively identified as **-MailboxSearch* cmdlets). This includes the following cmdlets:

  - [New-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/new-mailboxsearch)

  - [Start-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/start-mailboxsearch)

  - [Stop-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/stop-mailboxsearch)

  - [Set-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/set-mailboxsearch)

   > [!NOTE]
   > The [Get-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-mailboxsearch) and [Remove-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/remove-mailboxsearch) cmdlets will be available after the other ****-MailboxSearch*** cmdlets are retired so that you can use them to help in your transition to other eDiscovery and hold tools. However, after a certain date (cited below) Microsoft Support will no longer supports these two cmdlets.

- The [Search-Mailbox](https://docs.microsoft.com/powershell/module/exchange/mailboxes/search-mailbox?view=exchange-ps) cmdlet in Exchange Online PowerShell.

- The following operations in the Exchange Web Services API:

   - [GetSearchableMailboxes](https://docs.microsoft.com/exchange/client-developer/web-service-reference/getsearchablemailboxes-operation)

   - [SetHoldOnMailboxes](https://docs.microsoft.com/exchange/client-developer/web-service-reference/setholdonmailboxes-operation)
   
   - [GetHoldOnMailboxes](https://docs.microsoft.com/exchange/client-developer/web-service-reference/getholdonmailboxes-operation)

- [Office 365 Advanced eDiscovery v1.0](office-365-advanced-ediscovery.md), which is the first version of Advanced eDiscovery that's accessed through an eDiscovery case in the Office 365 Security & Compliance Center.

> [!NOTE]
> The eDiscovery functionality being retired only applies to cloud-based versions of Microsoft 365 and Office 365. eDiscovery functionality in on-premises versions of Exchange and SharePoint will still be supported until further notice.

The following sections in this article provide guidance about each feature being retired. This information including timelines and alternative tools that you can use instead of the retired tool.

## In-Place eDiscovery and In-Place Holds in the Exchange admin center 

As per the original announcement on July 1, 2017, the In-Place eDiscovery & Hold functionality in the Exchange admin center (EAC) is being retired. The In-Place eDiscovery & Holds page in the EAC allowed you to search, hold, and export content from Exchange Online. In-Place eDiscovery also let you copy search results to a discovery mailbox so that you or other eDiscovery managers could review content and make it available for legal, regulatory, and public requests.

Because all of these capabilities (except for copying search results to a discovery mailbox) are now available in the content search, eDiscovery and Advanced eDiscovery tools in the [Microsoft 365 compliance center](https://docs.microsoft.com/microsoft-365/compliance/microsoft-365-compliance-center) (with improved functionality, reliability, and support for a wide range of Microsoft 365 services), we recommend that you start using these tools as soon as possible. To help you in the transition to these other eDiscovery tools, the table below lists the tools you can use instead of In-Place eDiscovery and In-Place Hold.

### Scope of affected organizations
    
- Office 365 and Microsoft 365 Enterprise organizations

- Office 365 and Microsoft 365 Education organizations

- Office 365 and Microsoft 365 Government organizations; this includes GCC, GCC High, and DoD

- Office 365 Germany


### Timeline for retirement
    
- April 1, 2020: You won't be able to create new searches and holds, but you can still run, edit, and delete existing searches at your own risk. Microsoft Support will no longer In-Place eDiscovery & Holds in the EAC.
    
- July 1, 2020: The In-Place eDiscovery & Holds functionality in the EAC will be placed in a read-only mode. This means you'll only be able to remove existing searches and holds.

### Alternative tools

The following table describes other tools that you can use to replace the existing functionality that's being retired.

<table>
<thead>
<tr class="header">
<th><strong>Functionality</strong></th>
<th><strong>Alternative tool</strong></th>
<th><strong>Comments</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Search, export, and hold for legal purposes</td>
<td>Core eDiscovery cases in the Microsoft 365 compliance center </td>
<td><p>Using the capabilities of core eDiscovery cases provide the functional parity to In-Place eDiscovery and In-Place Holds. This includes the following:</p>
<ul>
<li>
<p>Search scales to millions of locations</p>
</li>
<li>
<p>Higher reliability for searching, exporting, and placing content on hold</p>
</li>
<li>
<p>Searching for content in for Exchange Online, SharePoint Online, OneDrive for Business, Skype for Business, Microsoft Teams, Yammer Groups, Office 365 Groups, and other content stored in Office 365 applications</p></li></ul>
<p>For more information, see <a href="https://docs.microsoft.com/microsoft-365/compliance/manage-legal-investigations"> Manage legal investigations in Office 365</a>.</td>
</tr>
<tr class="even">
<td>Hold for retention purposes</td>
<td>Retention policies in the Microsoft 365 compliance center</td>
<td><p>You can use Retention policies to retain content and, if desired, delete it after the retention period expires. Other capabilities include:</p>
<ul>
<li>
<p>Applying policies to your entire organization </p>
</li><li>
<p>Applying policies to specific content locations such as Exchange Online, SharePoint Online, OneDrive for Business, Skype for Business, Microsoft Teams, and Office 365 Groups</p></li>
<li>
<p>Applying policies to specific users</p></li></ul>
<p>For more information, see <a href="https://docs.microsoft.com/microsoft-365/compliance/retention-policies"> Overview of retention policies</a>.</td>
</tr>
<tr class="odd">
<td>Copy email search results to a discovery mailbox for review</td><td>Review sets in Advanced eDiscovery v2.0</td>
<td><p>Reviewing content in Microsoft 365 has never been easier. Review sets have many great capabilities to help reduce the amount of time and data needed to review, including:</p>
<ul>
<li><p>Perform fast search queries and filter content in a review set</p></li>
<li><p>Analyze content in a review set; this includes email threading, near-duplicate detection, Themes analysis, and Predictive coding</p></li>
<li><p>Tag documents in a review set</p></li>
<li><p>Tagging suggestions to help identify attorney  client privilege content</p></li></ul>
<p>For more information, see <a href="https://docs.microsoft.com/microsoft-365/compliance/overview-ediscovery-20">Overview of the Advanced eDiscovery solution in Microsoft 365</a>.</p>
<p>
<p>Alternatively, you can export search results to PST files and then use Microsoft 365 Import service to import the PSTs to a discovery mailbox. For step-by-step instruction, see <a href="https://docs.microsoft.com/microsoft-365/compliance/use-network-upload-to-import-pst-files">Use network upload to import PST files to Office 365</a>.
</tr>
<tr class="even">
<td>Restore items from the recoverable items folder</td>
  <td>Restore deleted items in mailboxes</td>
  <td>For step-by-step instructions, see <a href="https://docs.microsoft.com/en-gb/powershell/module/exchange/mailboxes/Restore-RecoverableItems?view=exchange-ps">Restore-RecoverableItems</a></td>
</tr>
</tbody>
</table>

### FAQs about In-Place eDiscovery and In-Place Holds

**I use the copy search results functionality of In-Place eDiscovery & Holds in the EAC to copy search results to a discovery mailbox for review by attorneys. What options do I have now?**

There are two ways to replicate this functionality today. The first is to use [review sets in Advanced eDiscovery v2.0](https://docs.microsoft.com/microsoft-365/compliance/view-documents-in-review-set). Review sets have many of the same capabilities you see in a traditional review tool like fast search of documents, tagging, email threading, near duplicate grouping, themes analysis, and predictive coding. If you still want to use discovery mailboxes for review, the second option is to export search results to PST files and then import the PST files to a discovery mailbox by using the [PST import feature](use-network-upload-to-import-pst-files.md) in the Microsoft compliance center.

**How do I control which content locations (such as mailboxes or sites) that can an eDiscovery manager can search using the new tools?**

The Microsoft 365 compliance center also uses [compliance boundaries](set-up-compliance-boundaries.md) to control which content locations an eDiscovery Manager can search. Compliance boundaries are useful in government entities that need to stay within agency boundaries or multi-national corporations required to respect geographical boarders.

**How can I move my current searches and holds to the Microsoft 365 compliance center?**

It's possible to migrate In-Place eDiscovery searches and holds from the EAC by using PowerShell. For instructions, see [Migrate searches and holds from the EAC to the Microsoft 365 compliance center](https://go.microsoft.com/fwlink/?linkid=2114224).

## \*-MailboxSearch cmdlets

As per the original notice announced on July 1, 2017 in the Exchange admin center, the In-Place eDiscovery & Hold functionality and the corresponding **\*-MailboxSearch** cmdlets are being retired. These cmdlets provide users the ability to search, hold, and export mailbox content for legal, regulatory, and public requests.

Because these capabilities are now available in the [<span class="underline">Microsoft 365 compliance center</span>](https://docs.microsoft.com/microsoft-365/compliance/microsoft-365-compliance-center) and Office 365 Security & Compliance Center PowerShell with improved performance and scalability, you should using these improved cmdlets. These cmdlets include [<span class="underline">\*-ComplianceCase</span>](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-compliancecase), [<span class="underline">\*-ComplianceSearch</span>](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearch), [<span class="underline">\*-CaseHoldPolicy</span>](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-caseholdpolicy), [<span class="underline">\*-CaseHoldRule</span>](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-caseholdrule), and [<span class="underline">\*-ComplianceSearchAction</span>](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearchaction).

### Scope of affected organizations
    
- Office 365 and Microsoft 365 Enterprise organizations

- Office 365 and Microsoft 365 Education organizations

- Office 365 and Microsoft 365 Government organizations; this includes GCC, GCC High, and DoD

- Office 365 Germany

### Timeline
    
- April 1, 2020: You won't be able to use **New-MailboxSearch** to create new In-Place eDiscovery searches and In-Place Holds, but you can still use cmdlets to run, edit, and delete existing searches and holds at your own risk. Microsoft Support will no longer provide assistance for these types of searches and holds.
    
- July 1, 2020: As previously stated, The In-Place eDiscovery & Holds functionality in the EAC will be placed in a read-only mode. That also means that you won't be able to use the **New-MailboxSearch**, **Start-MailboxSearch**, or **Set-MailboxSearch** cmdlets. You'll only be able to get and remove existing searches and holds.

### Alternative tools

The following table describes other tools that you can use to replace the existing functionality that's being retired.

<table>
<thead>
<tr class="header">
<th><strong>Functionality</strong></th>
<th><strong>Alternative tools</strong></th>
<th><strong>Comments</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Search and export</td>
<td><p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearch"><span class="underline">*-ComplianceSearch</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearchaction"><span class="underline">*-ComplianceSearchAction</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-compliancecase"><span class="underline">*-ComplianceCase</span></a></p>
<p> </p></td>
<td><p>The ComplianceSearch and ComplianceSearchAction cmdlets work together to help you search and export content. You can create a new search and view the search estimate by using the <strong>New-</strong>, <strong>Get-</strong>, and <strong>Start-ComplianceSearch</strong> cmdlets. Then you can use the <strong>New-ComplianceSearchAction</strong> cmdlet to export the search results. You'll still have to use the core eDiscovery tool in the Microsoft 365 compliance center to download those search results to your local computer.</p>
<p>
<p><strong>Note:</strong> If you use these cmdlets to create searches that aren't associated with a core eDiscovery case, these searches will be located on the <strong>Content search</strong> page in the Microsoft 365 compliance center.</p></td>
</tr>
<tr class="even">
<td>Hold content in a mailbox</td>
<td><p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-caseholdpolicy"><span class="underline">*-CaseHoldPolicy</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-caseholdrule"><span class="underline">*-CaseHoldRule</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-compliancecase"><span class="underline">*-ComplianceCase</span></a></p>
<p> </p></td>
<td><p>Holds in the Microsoft 365 compliance center must be associated with a ComplianceCase. First, create the compliance case, and then create a CaseHoldPolicy and a CaseHoldRule.</p>
<p><strong>Note:</strong> Creating a CaseHoldPolicy without a creating CaseHoldRule will render the hold inoperable until the CaseHoldRule is created and associated to the CaseHoldPolicy. See the cmdlet documentation for more information.</p></td>
</tr>
<tr class="odd">
<td>Copy search results to a discovery mailbox</td>
<td>None</td>
<td>There's no direct replacement for this functionality because it does not provide access to all Microsoft 365 services. See the following FAQ below for alternative solutions.</td>
</tr>
</tbody>
</table>

### FAQs about ***-MailboxSearch** cmdlets

**We use Copy Search to export email messages or instant Messages for purposes other eDiscovery and legal investigations. What other options do we have after these cmdlets are retired?**

The [<span class="underline">Microsoft Graph APIs</span>](https://developer.microsoft.com/en-us/graph) provide a number of methods for extracting data for analysis and other purposes that are far more resilient and scalable than the using the **\*-MailboxSearch** cmdlets.

**How can I migrate my searches and holds to the Microsoft 365 compliance center?**

It's possible to migrate In-Place eDiscovery searches and holds from the Exchange admin center by using a PowerShell script. For more information, see [Migrate legacy eDiscovery searches and holds to the Microsoft 365 compliance center](migrate-legacy-eDiscovery-searches-and-holds.md).

**After the cmdlets are retired, will I still be able to remove or retrieve searches?**

Yes, although we're removing the ability to create and modify searches, you'll still be able to use **Get-MailboxSearch** and **Remove-MailboxSearch** until further notice. However, the use of these cmdlets will be at your own risk after the retirement dates and Microsoft Support will no longer be able to provide assistance.

## Search-Mailbox cmdlet

The **Search-Mailbox** cmdlet in Exchange Online PowerShell is being retired as originally announced in a warning in the cmdlet output starting back in 2018. The **Search-Mailbox** cmdlet was originally used to search a user's mailbox and purge malicious content. We recommend that you start using the **New-ComplianceSearch** and **New-ComplianceSearchAction** cmdlets in Office 365 Security & Compliance Center PowerShell to search for and purge content. For a built-in security experience, the [<span class="underline">Microsoft 365 security features</span>](https://docs.microsoft.com/microsoft-365/security/) provide robust threat protection for email and many other Microsoft services.

### Scope of affected organizations

- Office 365 and Microsoft 365 Enterprise organizations

- Office 365 and Microsoft 365 Education organizations

- Office 365 and Microsoft 365 Government organizations; this includes GCC, GCC High, and DoD

- Office 365 Germany

### Timeline
    
-  April 1, 2020: The **Search-Mailbox** cmdlet will no longer be available and Microsoft Support will no longer provide assistance.

### Alternative tools

The following table describes other tools that you can use to replace the existing functionality that's being retired.

<table>
<thead>
<tr class="header">
<th><strong>Functionality</strong></th>
<th><strong>Alternative tools</strong></th>
<th><strong>Comments</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Search a mailbox</td>
<td><p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearch?view=exchange-ps"><span class="underline">*-ComplianceSearch</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearchaction?view=exchange-ps"><span class="underline">*-ComplianceSearchAction</span></a></p>
<p></a></p></td>
<td><p>The ComplianceSearch and ComplianceSearchAction cmdlets work together to help you search and export content. You can create a new search and view the search estimate by using the <strong>New-</strong>, <strong>Get-</strong>, and <strong>Start-ComplianceSearch</strong> cmdlets. Then you can use the <strong>New-ComplianceSearchAction -Export</strong> command to export the search results. You'll still have to use the core eDiscovery tool in the Microsoft 365 compliance center to download those search results to your local computer.</p></p>
</td>
</tr>
<tr class="even">
<td>Purge messages from a mailbox</td>
<td><p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearch?view=exchange-ps"><span class="underline">*-ComplianceSearch</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearchaction?view=exchange-ps"><span class="underline">*-ComplianceSearchAction</span></a></p>
<p></p></td>
<td><p>The ComplianceSearch and ComplianceSearchAction cmdlets work together to help you search and purge content. You can create and run a search with <strong>New-ComplianceSearch</strong> and <strong>New-ComplianceSearch</strong> cmdlets, and then you can purge the content by using <strong>New-ComplianceSearchAction -Purge -PurgeType</strong> command. For more information, see <a href="https://docs.microsoft.com/microsoft-365/compliance/search-for-and-delete-messages-in-your-organization"><span class="underline">Search for and delete messages</span></a>.</p>
</td>
</tr>
<tr class="odd">
<td>Copy search results to a discovery mailbox</td>
<td> </td>
<td>There's no direct replacement for this functionality because it does not provide access to all Microsoft 365 services. See the FAQs in the <strong>*-MailboxSearch cmdlets</strong> section for alternative solutions. </td>
</tr>
</tbody>
</table>

## GetSearchableMailboxes, SetHoldOnMailboxes, and GetHoldOnMailboxes operations in the EWS API

These three Exchange Web Services APIs are used by the In-Place eDiscovery & Holds feature in the Exchange admin center and the corresponding **\*-MailboxSearch** cmdlets in Exchange Online PowerShell. They will also be retired as part of retiring the other legacy eDiscovery tools.

### Scope of affected organizations

- Office 365 and Microsoft 365 Enterprise organizations

- Office 365 and Microsoft 365 Education organizations

- Office 365 and Microsoft 365 Government organizations; this includes GCC, GCC High, and DoD

- Office 365 Germany

### Timeline

- April 1, 2020: The GetSearchableMailboxes, SetHoldOnMailboxes, and GetHoldOnMailboxes operations will no longer be available, and Microsoft Support will no longer provide assistance.

## Advanced eDiscovery v1.0

Advanced eDiscovery v1.0, which is the version of Advanced eDiscovery available in an eDiscovery case by clicking **Switch to Advanced eDiscovery** is being retired. Its functionality has been replaced by the new [Advanced eDiscovery solution](https://aka.ms/edisco) in the Microsoft 365 compliance center.

The new Advanced eDiscovery solution in Microsoft 365 (also known as *Advanced eDiscovery v2.0*) provides all of the capabilities of the original solution, but now includes a custodian-based approach of identifying content in other Microsoft 365 services, collecting that content, and then adding it to a review set where reviewers can take advantage of fast search queries, tagging, and analytics features to help cull relevant documents. Advanced eDiscovery now includes improved processing and native viewers for both Microsoft and non-Microsoft file types, a full list of file types is [here](https://docs.microsoft.com/microsoft-365/compliance/supported-filetypes-ediscovery20) and supported metadata fields are [here](https://docs.microsoft.com/microsoft-365/compliance/document-metadata-fields-in-advanced-ediscovery). Also, the new Advanced eDiscovery solution provides a powerful custodian holds management feature that lets you apply holds to content in different services, notify users of the holds, and track custodian responses, all within an Advanced eDiscovery case.

At this time, we recommend that you begin to transition your eDiscovery workflow to the new Advanced eDiscovery functionality. Although you'll still be able to access Advanced eDiscovery v1.0 in existing cases, Microsoft Support won’t provide support after July 1, 2020. See the following timeline for more details.

### Scope of affected organizations
    
- Office 365 and Microsoft 365 Enterprise organizations

- Office 365 and Microsoft 365 Education organizations

- Office 365 Germany

### Timeline
    
- April 1, 2020: You won't be able to create new Advanced eDiscovery v1.0  cases.
    
- July 1, 2020: Microsoft Support won’t provide support. See [this notice](https://go.microsoft.com/fwlink/?linkid=2113221). You won't be able to add new data (Prepare search results for Advanced eDiscovery) to any cases. You'll be able to continue working with data in existing cases at your own risk.

### Alternative tools
    
The [Advanced eDiscovery solution](https://docs.microsoft.com/microsoft-365/compliance/overview-ediscovery-20) in the Microsoft 365 compliance center.
