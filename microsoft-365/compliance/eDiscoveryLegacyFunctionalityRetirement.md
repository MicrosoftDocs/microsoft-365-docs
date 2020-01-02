**eDiscovery Legacy Functionality Retirement**

Over the years, Microsoft has added eDiscovery functionality that no longer effectively offers an experience that provides access to content stored in Office 365. We've been working hard to incorporate the most current and powerful eDiscovery functionality in the [Microsoft 365 compliance center](https://compliance.microsoft.com). This allows organizations to respond to legal, internal, and other document requests for content across many Office 365 services.

As a result of this new and improved eDiscovery functionality in the Microsoft 365 compliance center, we're retiring the following eDiscovery-related features and functionality:

- [In-Place eDiscovery](https://docs.microsoft.com/exchange/security-and-compliance/in-place-ediscovery/in-place-ediscovery) and [In-Place Holds](https://docs.microsoft.com/exchange/security-and-compliance/create-or-remove-in-place-holds) in the Exchange admin center.

- The Exchange Online PowerShell cmdlets that support In-Place eDiscovery and In-Place Holds (these cmdlets are collectively identified as **-MailboxSearch* cmdlets). This includes the following cmdlets:

  - [New-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/new-mailboxsearch)

  - [Start-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/start-mailboxsearch)

  - [Stop-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/stop-mailboxsearch)

  - [Set-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/set-mailboxsearch)

   > [!NOTE]
   > The [Get-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-mailboxsearch) and [Remove-MailboxSearch](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/remove-mailboxsearch) cmdlets will be available after the other ****-MailboxSearch*** cmdlets are retired so that you can use them to help in your transition to other eDiscovery and hold tools. However, after a certain date (cited below) Microsoft Support will no longer supports these two cmdlets.

- The GetSearchableMailboxes, SetHoldOnMailboxes, and GetHoldOnMailboxes operations in the Exchange Web Services API.
  
- The [Search-Mailbox](https://docs.microsoft.com/powershell/module/exchange/mailboxes/search-mailbox?view=exchange-ps) cmdlet in Exchange Online PowerShell.

- [Office 365 Advanced eDiscovery v1.0](office-365-advanced-ediscovery.md), which is the first version of Advanced eDiscovery that's accessed through an eDiscovery case in the Office 365 Security & Compliance Center.

> [!NOTE]
> The eDiscovery functionality being retired only applies to cloud-based versions of Microsoft 365 and Office 365. eDiscovery functionality in on-premises versions of Exchange and SharePoint will still be supported until further notice.

The following sections in this article provide guidance about each feature being retired. This information including timelines and alternative tools that you can use instead of the retired tool.

## In-Place eDiscovery and In-Place Holds in the Exchange admin center 

As per the original notice announced in July 1, 2017, the Exchange admin center In-Place eDiscovery & Hold functionality is being retired. In-Place eDiscovery & holds allowed users to search, hold and export content from Microsoft Exchange server. Furthermore, it had capabilities to copy search results to a discovery mailbox so content could be reviewed and ultimately produced for legal, regulatory and public requests.

Since all of these capabilities are now available in the [<span class="underline">Microsoft 365 compliance center</span>](https://docs.microsoft.com/microsoft-365/compliance/microsoft-365-compliance-center) with improved functionality, reliability and broader coverage of data in your Microsoft 365 tenant, you should begin taking advantage of these features immediately. To help in the transition to the new functionality, many alternatives are listed below with links to documentation.

  - Scope
    
      - Multitenant
    
      -  Go-Locals
    
      - ???

  - Timeline
    
      - April 1, 2020 - You won't be able to create new searches and holds, but you can still run, edit and delete existing searches at your own risk. Microsoft Support will no longer provide assistance.
    
      - July 1, 2020 - The In-Place eDiscovery & Hold functionality in the Exchange admin center will be placed in a read-only mode. This means you'll only be able to remove existing searches and holds.

  - Alternatives

<table>
<thead>
<tr class="header">
<th><strong>Original use</strong></th>
<th><strong>Alternative</strong></th>
<th><strong>Comments</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Search, export and hold for legal purposes</td>
<td><a href="https://docs.microsoft.com/microsoft-365/compliance/manage-legal-investigations"><span class="underline">Manage legal investigations in Office 365</span></a></td>
<td><p>Core eDiscovery capabilities include functional parity to In-Place eDiscovery &amp; Holds. Most importantly:</p>
<ul>
<li><blockquote>
<p>Search scales to millions of locations</p>
</blockquote></li>
<li><blockquote>
<p>Higher reliability of Search, Export and Holds</p>
</blockquote></li>
<li><blockquote>
<p>Includes search for Exchange, SharePoint, OneDrive for Business, Skype for Business, Microsoft Teams and many other Microsoft Office applications</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="even">
<td>Hold for retention purposes</td>
<td><a href="https://docs.microsoft.com/microsoft-365/compliance/retention-policies"><span class="underline">Overview of retention policies</span></a></td>
<td><p>Retention policies is a separate product in the Microsoft 365 compliance center with many improved capabilities, including:</p>
<ul>
<li><blockquote>
<p>Data import</p>
</blockquote></li>
<li><blockquote>
<p>Full tenant data retention</p>
</blockquote></li>
<li><blockquote>
<p>Records management</p>
</blockquote></li>
<li><blockquote>
<p>Sensitivity labels</p>
</blockquote></li>
</ul></td>
</tr>
<tr class="odd">
<td>Copy search results for email review</td>
<td><a href="https://docs.microsoft.com/microsoft-365/compliance/overview-ediscovery-20"><span class="underline">Overview of the Advanced eDiscovery solution in Microsoft 365</span></a></td>
<td><p>Reviewing content in Microsoft 365 has never been easier. Review sets have many great capabilities to help reduce the amount of time and data needed to review, including:</p>
<ul>
<li><blockquote>
<p>Email threading</p>
</blockquote></li>
<li><blockquote>
<p>Near-duplicate detection</p>
</blockquote></li>
<li><blockquote>
<p>Themes analysis</p>
</blockquote></li>
<li><blockquote>
<p>Predictive coding</p>
</blockquote></li>
<li><blockquote>
<p>Tagging</p>
</blockquote></li>
<li><blockquote>
<p>Tagging suggestions to help identify Attorney Client Privilege content</p>
</blockquote></li>
<li><blockquote>
<p>Lighting fast search results</p>
</blockquote></li>
</ul>
<p> </p>
<p>Alternatively, you can use the Microsoft 365 Compliance center to export the content and then import the data to a Discovery Mailbox using the <a href="https://docs.microsoft.com/microsoft-365/compliance/importing-pst-files-to-office-365"><span class="underline">data import feature</span></a> offered by Data Governance.</p></td>
</tr>
</tbody>
</table>

### FAQ

**I use the copy search results functionality in the Exchange admin center In-Place eDiscovery & Holds to copy search results to a discovery mailbox for review by attorneys. What options do I have now?**

There are two ways to provide this functionality today. First is to use [Review Sets in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/view-documents-in-review-set). Review sets have many capabilities you would see in a traditional review tool like lightning fast search, tagging, email threading, near duplicate grouping, themes analysis and predictive coding. Alternatively, if you are still interested in using discovery mailboxes for review, you can export from the Microsoft 365 compliance center and then import the data using the [PST import feature](use-network-upload-to-import-pst-files.md) offered by Data Governance.

**How do I control users that can an eDiscovery manager can search, this was done using RBAC in the past?**

The Microsoft 365 compliance center uses [compliance boundaries](set-up-compliance-boundaries.md) to control the searchable scope of an eDiscovery Manager. Compliance boundaries are very useful in government entities who need to separate along agency boundaries or multi-national corporations who are required to respect geographical boarders.

**How can I automate the transition of my searches and holds to the Microsoft 365 compliance center?**

It is possible to migrate searches and holds from the Exchange admin center In-Place eDiscovery & Holds using PowerShell, see this help topic to learn more - [ Automating migration of Searches & Holds from the Exchange admin center to the Microsoft 365 compliance center](onenote:#Automating%20migration%20of%20Searches%20%20Holds%20from%20the%20Exchange%20Admin%20Center%20to%20the%20Microsoft%20365%20Compliance%20Center&section-id={AC50DB66-61C5-4D74-806C-39FF31F9201C}&page-id={84B2952C-5A28-4B7E-BE3A-C1705BDDCE89}&end&base-path=https://microsoft.sharepoint.com/teams/eDiscoveryvNext/SiteAssets/eDiscovery%20vNext%20Notebook/Marshal's%20Specs.one).

## \*-MailboxSearch cmdlets

As per the original notice announced in July 1, 2017 in the Exchange admin center, the In-Place eDiscovery & Hold functionality and the corresponding **\*-MailboxSearch** cmdlets are being retired. These cmdlets provide users the ability to search, hold, and export mailbox content for legal, regulatory and public requests.

Because these capabilities are now available in the [<span class="underline">Microsoft 365 compliance center</span>](https://docs.microsoft.com/microsoft-365/compliance/microsoft-365-compliance-center) and Office 365 Security & Compliance Center PowerShell with improved performance and scalability, you should begin taking advantage of the improved cmdlets. These cmdlets include [<span class="underline">\*-ComplianceCase</span>](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-compliancecase?view=exchange-ps), [<span class="underline">\*-ComplianceSearch</span>](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearch?view=exchange-ps), [<span class="underline">\*-CaseHoldPolicy</span>](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-caseholdpolicy?view=exchange-ps), [<span class="underline">\*-CaseHoldRule</span>](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-caseholdrule?view=exchange-ps), and [<span class="underline">\*-ComplianceSearchAction</span>](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearchaction?view=exchange-ps).

See the following for guidance on how to use the new and improved capabilities.

  - Scope
    
      - Multitenant
    
      - Go-Locals
    
      - ???

  - Timeline
    
      - April 1, 2020: You won't be able to create new In-Place eDiscovery searches and In-Place Holds, but you can still run, edit, and delete existing searches and holds at your own risk. Microsoft Support will no longer support these types of searches and holds.
    
      - July 1, 2020: The In-Place eDiscovery & Hold functionality in the Exchange admin center will be placed in a read-only mode. This means you'll only be able to remove existing searches and holds.

  - Alternatives

<table>
<thead>
<tr class="header">
<th><strong>Original use</strong></th>
<th><strong>Alternative</strong></th>
<th><strong>Comments</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Search and export</td>
<td><p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearch?view=exchange-ps"><span class="underline">*-ComplianceSearch</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearchaction?view=exchange-ps"><span class="underline">*-ComplianceSearchAction</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-compliancecase?view=exchange-ps"><span class="underline">*-ComplianceCase</span></a></p>
<p> </p></td>
<td><p>ComplianceSearch and ComplianceSearchAction work in tandem to search and export data. You can create a search estimate with Start-ComplianceSearch and Get-ComplianceSearch and finally, export the data using New-ComplianceSearchAction. The final download of the data still requires a download tool to assemble final results in a useful format.</p>
<p> </p>
<p>NOTE: If you use these cmdlets without a case, they will show up in the Content Search tab in the Microsoft 365 compliance center.</p></td>
</tr>
<tr class="even">
<td>Hold content in a mailbox</td>
<td><p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-caseholdpolicy?view=exchange-ps"><span class="underline">*-CaseHoldPolicy</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-caseholdrule?view=exchange-ps"><span class="underline">*-CaseHoldRule</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-compliancecase?view=exchange-ps"><span class="underline">*-ComplianceCase</span></a></p>
<p> </p></td>
<td><p>Holds in the Microsoft Compliance Center must be associated with a ComplianceCase. First, create the compliance case, then CaseHoldPolicy and last, a CaseHoldRule.</p>
<p><strong>Note:</strong> Creating a CaseHoldPolicy without a CaseHoldRule will render the hold inoperable until the CaseHoldRule is created and attached to the CaseHoldPolicy. See documentation for more details.</p></td>
</tr>
<tr class="odd">
<td>Copy search results to a discovery mailbox</td>
<td>None</td>
<td>There is no direct replacement for this functionality because it does not provide access to all Microsoft 365 Services. See the corresponding FAQ for Exchange admin center eDiscovery &amp; In-Place Holds for alternatives.</td>
</tr>
</tbody>
</table>

### FAQ

**We used Copy Search to export Email or Instant Messages for purposes other than In-Place eDiscovery, what other options do I have?**

The [<span class="underline">Microsoft Graph APIs</span>](https://developer.microsoft.com/en-us/graph) provide a number of methods for extracting data for analysis and other purposes which are far more resilient and scalable than the **\*-MailboxSearch** cmdlets.

**How can I automate the transition of my searches and holds to the Microsoft 365 compliance center?**

It is possible to migrate searches and holds from the Exchange admin center In-Place eDiscovery & Holds using PowerShell, see this help topic to learn more - [<span class="underline">Automating migration of Searches & Holds from the Exchange admin center to the Microsoft 365 compliance center</span>](onenote:#Automating%20migration%20of%20Searches%20%20Holds%20from%20the%20Exchange%20Admin%20Center%20to%20the%20Microsoft%20365%20Compliance%20Center&section-id={AC50DB66-61C5-4D74-806C-39FF31F9201C}&page-id={84B2952C-5A28-4B7E-BE3A-C1705BDDCE89}&end&base-path=https://microsoft.sharepoint.com/teams/eDiscoveryvNext/SiteAssets/eDiscovery%20vNext%20Notebook/Marshal's%20Specs.one).

**After the cmdlets are retired, will I still be able to remove or retrieve searches?**

Yes, although we're removing the ability to create and modify searches, you will still be able to use Get-Mailbox search and Remove-Mailbox search until further notice. However, the use of these cmdlets will be at your own risk after the retirement dates and Microsoft support will no longer be able to provide assistance.

## GetSearchableMailboxes, SetHoldOnMailboxes, GetHoldOnMailboxes Operations

These three Exchange Web Services APIs are utilized by the Exchange admin center In-Place eDiscovery & Holds user interface and the corresponding **\*-MailboxSearch** cmdlets. They will also be retired as part of retiring the legacy eDiscovery tools.

  - Scope
    
      - Multitenant
    
      - Go-Locals
    
      - ???

  - Timeline
    
      - April 1, 2020 - GetSearchableMailboxes, SetHoldOnMailboxes, GetHoldOnMailboxes Operations will no longer be available, and Microsoft Support will no longer provide assistance.

  - Alternatives

 

## Search-Mailbox cmdlet

Search-Mailbox is being retired as originally announced in a warning in the cmdlet output in 2018. Search-Mailbox was originally used to search a user's mailbox and purge malicious content. We recommend you transition your usage to the Microsoft Compliance Center \*-ComplianceSearch & \*-ComplianceSearchAction cmdlets. For a built in security experience, [<span class="underline">Microsoft 365 Security</span>](https://docs.microsoft.com/microsoft-365/security/) provides robust threat protection against email and many other Microsoft services. We are now completing this retirement, see the timeline and alternatives below.

  - Scope
    
      - Multitenant
    
      - Go-Locals
    
      - ???

  - Timeline
    
      -  pril 1, 2020 - Search-Mailbox cmdlet will no longer be available and Microsoft Support will no longer provide assistance

  - Alternatives

<table>
<thead>
<tr class="header">
<th><strong>Original use</strong></th>
<th><strong>Alternative</strong></th>
<th><strong>Comments</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Search a mailbox</td>
<td><p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearch?view=exchange-ps"><span class="underline">*-ComplianceSearch</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearchaction?view=exchange-ps"><span class="underline">*-ComplianceSearchAction</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-compliancecase?view=exchange-ps"><span class="underline">*-ComplianceCase</span></a></p></td>
<td><p>ComplianceSearch and ComplianceSearchAction cmdlets work together to search and export data. You can create a search estimate with Start-ComplianceSearch and Get-ComplianceSearch and finally, export the data using New-ComplianceSearchAction. The final download of the data still requires a download tool to assemble final results in a useful format.</p>
<p> </p>
<p>NOTE: If you use these cmdlets without a case, they will show up in the Content Search tab in the Microsoft 365 compliance center.</p></td>
</tr>
<tr class="even">
<td>Purge messages from a mailbox</td>
<td><p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearch?view=exchange-ps"><span class="underline">*-ComplianceSearch</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-content-search/get-compliancesearchaction?view=exchange-ps"><span class="underline">*-ComplianceSearchAction</span></a></p>
<p><a href="https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-ediscovery/get-compliancecase?view=exchange-ps"><span class="underline">*-ComplianceCase</span></a></p></td>
<td><p>ComplianceSearch and ComplianceSearchAction work in tandem to search and purge data. You can create a search estimate with Start-ComplianceSearch and Get-ComplianceSearch and finally, purge the data using New-ComplianceSearchAction specifying the -Purge and -PurgeType parameters.</p>
<p><strong>Note:</strong> If you use these cmdlets without a case, they will show up in the Content Search tab in the Microsoft 365 compliance center.</p></td>
</tr>
<tr class="odd">
<td>Copy search results to a discovery mailbox</td>
<td> </td>
<td>There is no direct replacement for this functionality since it does not provide access to all Microsoft 365 Services. See the FAQ for Exchange admin center eDiscovery &amp; In-Place Holds for working with this case</td>
</tr>
</tbody>
</table>

## Advanced eDiscovery v1.0

Advanced eDiscovery v1.0, which is the version of Advanced eDiscovery available in an eDiscovery case by clicking **Switch to Advanced eDiscovery** is being retired in favor of the new [Advanced eDiscovery solution](https://aka.ms/edisco) in the Microsoft 365 compliance center.

The new Advanced eDiscovery solution in Microsoft 365 provides all of the capabilities of the original solution, but now includes a custodian based approach to identifying data within the Microsoft Services, collecting that data and promoting it to a Review Set where reviewers can take advantage of lightning fast search, tagging, and analytics features to help cull relevant documents. Advanced eDiscovery now includes improved processing and native viewers for both Microsoft and non-Microsoft file types, a full list of file types is [here](https://docs.microsoft.com/microsoft-365/compliance/supported-filetypes-ediscovery20) and supported metadata fields are [here](https://docs.microsoft.com/microsoft-365/compliance/document-metadata-fields-in-advanced-ediscovery). Also, the new Advanced eDiscovery solution provides robust custodian holds management features to apply holds, notify users of the holds, and track responses right in the application.

At this time, we recommended that you begin to transition you eDiscovery workflow to the new Advanced eDiscovery functionality. Although you’ll still be able to access Advanced eDiscovery v1.0 in existing cases, Microsoft Support won’t provide support after July 1, 2020. See the following timeline for more details.

  - Scope
    
      - Multitenant
    
      - Go-Locals
    
      - ???

  - Retirement timeline
    
      - April 1, 2020: You won't be able to create new Advanced eDiscovery cases.
    
      - July 1, 2020: Microsoft Support won’t provide support. Please see [this notice](https://go.microsoft.com/fwlink/?linkid=2113221). You won't be able to add new data (Prepare search results for Advanced eDiscovery) to any cases. You'll be able to continue working with data in existing cases at your own risk.

  - Alternatives
    
      [Microsoft 365 Advanced eDiscovery Solution](https://docs.microsoft.com/microsoft-365/compliance/overview-ediscovery-20)
