---
title: "Monitor for leaks of personal data"
ms.author: bcarter
author: brendacarter
manager: laurawi
ms.date: 02/07/2018
audience: ITPro
ms.topic: overview
ms.collection: 
- Strat_O365_Enterprise
- Ent_O365
- GDPR
- M365-security-compliance
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
description: "Learn about three tools you can use to monitor for leaks of personal data."
---
# Monitor for leaks of personal data

There are many tools that can be used to monitor the use and transport of personal data. This topic describes three tools that work well.

![Tools to monitor the use and transport of personaal data](../media/Monitor-for-leaks-of-personal-data-image1.png)

In the illustration:

-   Start with Office 365 data loss prevention reports for monitoring personal data in SharePoint Online, OneDrive for Business, and email in transit. These provide the greatest level of detail for monitoring personal data. However, these reports don’t include all services in Office 365.

-   Next, use alert policies and the Office 365 audit log to monitor activity across Office 365 services. Setup ongoing monitoring or search the audit log to investigate an incident. The Office 365 audit log works across Office 365 services — Sway, PowerBI, eDiscovery, Dynamics 365, Microsoft Flow, Microsoft Teams, Admin activity, OneDrive for Business, SharePoint Online, mail in transit, and mailboxes at rest. Skype conversations are included in mailboxes at rest.

-   Finally, Use Microsoft Cloud App Security to monitor files with sensitive data in other SaaS providers. Coming soon is the ability to use Office 365 sensitive information types and unified labels across Azure Information Protection and Office with Cloud App Security. You can setup policies that apply to all of your SaaS apps or specific apps (like Box). Cloud App Security doesn’t discover files in Exchange Online, including files attached to email.

## Office 365 data loss prevention reports

After you create your data loss prevention (DLP) policies, you’ll want to verify that they’re working as you intended and helping you to stay compliant. With the DLP reports in Office 365, you can quickly view the number of DLP policy matches, overrides, or false positives; see whether they’re trending up or down over time; filter the report in different ways; and view additional details by selecting a point on a line on the graph.

You can use the DLP reports to:

-   Focus on specific time periods and understand the reasons for spikes and trends.

-   Discover business processes that violate your organization’s DLP policies.

-   Understand any business impact of the DLP policies.

-   View the justifications submitted by users when they resolve a policy tip by overriding the policy or reporting a false positive.

-   Verify compliance with a specific DLP policy by showing any matches for that policy.

-   View a list of files with sensitive data that matches your DLP policies in the details pane.

In addition, you can use the DLP reports to fine tune your DLP policies as you run them in test mode.

DLP reports are in the security center and the compliance center. Navigate to Reports \> View reports. Under Data loss prevention (DLP), go to either DLP policy and rule matches or DLP false positives and overrides.

For more information, see [View the reports for data loss prevention](https://support.office.com/article/View-the-reports-for-data-loss-prevention-41eb4324-c513-4fa5-91c8-8fbd8aaba83b).

![Report showing DLP policy matches](../media/Monitor-for-leaks-of-personal-data-image2.png)

## Office 365 audit log and alert policies

The Office 365 audit log contains events from Exchange Online, SharePoint Online, OneDrive for Business, Azure Active Directory, Microsoft Teams, Power BI, Sway, and other Office 365 services.

The security center and compliance center provide two ways to monitor and report against the Office 365 audit log:

-   Setup alert policies, view alerts, and monitor trends — Use the alert policy and alert dashboard tools in either the security center or compliance center.

-   Search the audit log directly — Search for all events in a specified date rage. Or you can filter the results based on specific criteria, such as the user who performed the action, the action, or the target object.

Information security and compliance teams can use these tools to proactively review activities performed by both end users and administrators across Office 365 services. Automatic alerts can be configured to send email notifications when certain activities occur on specific site collections - for example when content is shared from sites known to contain GDPR related information. This allows those teams to follow up with users to ensure that corporate security policies are followed, or to provide additional training.

Information security teams can also search the audit log to investigate suspected data breaches and determine both root cause and the extent of the breach. This built in capability facilitates compliance with article 33 and 34 of the GDPR, which require notifications be provided to the GDPR supervisory authority and to the data subjects themselves of a data breach within a specific time period. Audit log entries are only retained for 90 days within the service - it is often recommended and many organizations required that these logs be retained for longer periods of time.

Solutions are available which subscribe to the Unified Audit Logs through the Microsoft Management Activity API and can both store log entries as needed, and provide advanced dashboards and alerts. One example is [Microsoft Operations Management Suite (OMS)](https://docs.microsoft.com/azure/operations-management-suite/oms-solution-office-365).

More information about alert policies and searching the audit log:

-   [Alert policies in the Microsoft 365 security and compliance centers](https://support.office.com/article/Alert-policies-in-the-Office-365-Security-Compliance-Center-8927B8B9-C5BC-45A8-A9F9-96C732E58264)

-   [Search the audit log for user and admin activity in Office 365](https://support.office.com/article/Search-the-audit-log-for-user-and-admin-activity-in-Office-365-57CA5138-0AE0-4D34-BD40-240441EF2FB6) (introduction)

-   [Turn Office 365 audit log search on or off](https://support.office.com/article/Turn-Office-365-audit-log-search-on-or-off-e893b19a-660c-41f2-9074-d3631c95a014)

-   [Search the audit log](https://support.office.com/article/Search-the-audit-log-in-the-Office-365-Security-Compliance-Center-0d4d0f35-390b-4518-800e-0c7ec95e946c?ui=en-US&rs=en-US&ad=US)

-   [Search-UnifiedAuditLog](https://technet.microsoft.com/library/mt238501(v=exchg.160).aspx) (cmdlet) 

-   [Detailed properties in the Office 365 audit log](https://support.office.com/article/Detailed-properties-in-the-Office-365-audit-log-ce004100-9e7f-443e-942b-9b04098fcfc3)

## Microsoft Cloud App Security

Microsoft Cloud App Security helps you discover other SaaS apps in use across your networks and sensitive data that is sent to and from these apps.

Microsoft Cloud App Security is a comprehensive service providing deep visibility, granular controls and enhanced threat protection for your cloud apps. It identifies more than 15,000 cloud applications in your network-from all devices-and provides risk scoring and ongoing risk assessment and analytics. No agents required: information is collected from your firewalls and proxies to give you complete visibility and context for cloud usage and shadow IT.

To better understand your cloud environment, Cloud App Security investigate feature provides deep visibility into all activities, files and accounts for sanctioned and managed apps. You can gain detailed information on a file level and discover where data travels in the cloud apps.

For examples, the following illustration demonstrates two Cloud App Security policies that can help with GDPR.

![Example Cloud App Security policies](../media/Monitor-for-leaks-of-personal-data-image3.png)

The first policy alerts when files with a predefined PII attribute or custom expression that you choose is shared outside the organization from the SaaS apps that you choose.

The second policy blocks downloads of files to any unmanaged device. You choose the attributes within the files to look for and the SaaS apps you want the policy to apply to.

These attribute types are coming soon to Cloud App Security:

-   Office 365 sensitive information types

-   Unified labels across Office 365 and Azure Information Protection

### Cloud App Security dashboard

If you haven’t yet started to use Cloud App Security, begin by starting it up. To access Cloud App Security: <https://portal.cloudappsecurity.com>.

Note: Be sure to enable ‘Automatically scan files for Azure Information Protection classification labels’ (in General settings) when getting started with Cloud App Security or before you assign labels. After setup, Cloud App Security does not scan existing files again until they are modified.

![Dashboard showing information about alerts](../media/Monitor-for-leaks-of-personal-data-image4.png)

More information:

-   [Deploy Cloud App Security](https://docs.microsoft.com/cloud-app-security/getting-started-with-cloud-app-security)

-   [More information about Microsoft Cloud App Security](https://www.microsoft.com/cloud-platform/cloud-app-security)

-   [Block downloads of sensitive information using the Microsoft Cloud App Security proxy](https://docs.microsoft.com/cloud-app-security/use-case-proxy-block-session-aad)

## Example file and activity policies to detect sharing of personal data

### Detect sharing of files containing PII — Credit card number

Alert when a file containing a credit card number is shared from an approved cloud app.

<table>
<thead>
<tr class="header">
<th align="left"><strong>Control</strong></th>
<th align="left"><strong>Settings</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Policy type</td>
<td align="left">File policy</td>
</tr>
<tr class="even">
<td align="left">Policy template</td>
<td align="left">No template</td>
</tr>
<tr class="odd">
<td align="left">Policy severity</td>
<td align="left">High</td>
</tr>
<tr class="even">
<td align="left">Category</td>
<td align="left">DLP</td>
</tr>
<tr class="odd">
<td align="left">Filter settings</td>
<td align="left"><p>Access level = Public (Internet), Public, External</p>
<p>App = &lt;select apps&gt; (use this setting if you want to limit monitoring to specific SaaS apps)</p></td>
</tr>
<tr class="even">
<td align="left">Apply to</td>
<td align="left">All files, all owners</td>
</tr>
<tr class="odd">
<td align="left">Content inspection</td>
<td align="left"><p>Includes files that match a present expression: All countries: Finance: Credit card number</p>
<p>Don’t require relevant context: unchecked (this will match keywords as well as regex)</p>
<p>Includes files with at least 1 match</p>
<p>Unmask the last 4 characters of the violation: checked</p></td>
</tr>
<tr class="even">
<td align="left">Alerts</td>
<td align="left"><p>Create an alert for each matching file: checked</p>
<p>Daily alert limit: 1000</p>
<p>Select an alert as email: checked</p>
<p>To: infosec@contoso.com</p></td>
</tr>
<tr class="odd">
<td align="left">Governance</td>
<td align="left"><p>Microsoft OneDrive for Business</p>
<p>Make private: check Remove External Users</p>
<p>All other settings: unchecked</p>
<p>Microsoft SharePoint Online</p>
<p>Make private: check Remove External Users</p>
<p>All other settings: unchecked</p></td>
</tr>
</tbody>
</table>

Similar policies:

-   Detect sharing of Files containing PII - Email Address

-   Detect sharing of Files containing PII - Passport Number

### Detect Customer or HR Data in Box or OneDrive for Business

Alert when a file labeled as Customer Data or HR Data is uploaded to OneDrive for Business or Box.

Notes:

-   Box monitoring requires a connector be configured using the API Connector SDK.

-   This policy requires capabilities that are currently in private preview.

<table>
<thead>
<tr class="header">
<th align="left"><strong>Control</strong></th>
<th align="left"><strong>Settings</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Policy type</td>
<td align="left">Activity policy</td>
</tr>
<tr class="even">
<td align="left">Policy template</td>
<td align="left">No template</td>
</tr>
<tr class="odd">
<td align="left">Policy severity</td>
<td align="left">High</td>
</tr>
<tr class="even">
<td align="left">Category</td>
<td align="left">Sharing Control</td>
</tr>
<tr class="odd">
<td align="left">Act on</td>
<td align="left">Single activity</td>
</tr>
<tr class="even">
<td align="left">Filter settings</td>
<td align="left"><p>Activity type = Upload File</p>
<p>App = Microsoft OneDrive for Business and Box</p>
<p>Classification Label (currently in private preview): Azure Information Protection = Customer Data, Human Resources—Salary Data, Human Resources—Employee Data</p></td>
</tr>
<tr class="odd">
<td align="left">Alerts</td>
<td align="left"><p>Create an alert: checked</p>
<p>Daily alert limit: 1000</p>
<p>Select an alert as email: checked</p>
<p>To: infosec@contoso.com</p></td>
</tr>
<tr class="even">
<td align="left">Governance</td>
<td align="left"><p>All apps</p>
<p>Put user in quarantine: check</p>
<p>All other settings: unchecked</p>
<p>Office 365</p>
<p>Put user in quarantine: check</p>
<p>All other settings: unchecked</p></td>
</tr>
</tbody>
</table>

Similar policies:

-   Detect large downloads of Customer data or HR Data — Alert when a large number of files containing customer data or HR data have been detected being downloaded by a single user within a short period of time.

-   Detect Sharing of Customer and HR Data — Alert when files containing Customer or HR Data are shared.
