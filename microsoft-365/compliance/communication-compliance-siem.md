---
title: "Use communication compliance with SIEM solutions"
description: "Learn about communication compliance integration with SIEM solutions."
keywords: Microsoft 365, Microsoft Purview, compliance, communication compliance
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.SupervisoryReview'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MET150
- MOE150
---

# Use communication compliance with SIEM solutions

[Communication compliance](/microsoft-365/compliance/communication-compliance) is an insider risk solution in Microsoft Purview that helps minimize communication risks by helping you detect, capture, and act on inappropriate messages in your organization. Security information and event management (SIEM) solutions such as [Microsoft Sentinel](https://azure.microsoft.com/services/azure-sentinel) or [Splunk](https://www.splunk.com/) are commonly used to aggregate and track threats within an organization.

A common need for organizations is to integrate communication compliance alerts and these SIEM solutions. With this integration, organizations can view communication compliance alerts in their SIEM solution and then remediate alerts within the communication compliance workflow and user experience. For example, an employee sends an offensive message to another employee and that message is detected by a communication compliance policy for inappropriate content. These events are tracked in Microsoft 365 Audit (also known as "unified audit log") by the communication compliance solution and imported into the SIEM solution. An alert is then triggered in the SIEM solution for the organization from events included in Microsoft 365 Audit that are associated with communication compliance alerts. Investigators are notified of the alert in the SIEM solutions and then they investigate and remediate the alert in the communication compliance solution.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Communication compliance alerts in Microsoft 365 Audit

All communication compliance policy matches are captured in Microsoft 365 Audit. The following examples show the details available for selected communication compliance policy match activities:

**Example of audit log entry for an Inappropriate Content policy template match:**

```xml
RunspaceId: 5c7bc9b0-7672-4091-a112-0635bd5f7732
RecordType: ComplianceSupervisionExchange
CreationDate: 7/7/2021 5:30:11 AM
UserIds: user1@contoso.onmicrosoft.com
Operations: SupervisionRuleMatch
AuditData: {"CreationTime":"2021-07-07T05:30:11","Id":"44e98a7e-57fd-4f89-79b8-08d941084a35","Operation":"SupervisionRuleMatch","OrganizationId":"338397e6\-697e-4dbe-a66b-2ea3497ef15c","RecordType":68,"ResultStatus":"{\\"ItemClass\\":\\"IPM.Note\\",\\"CcsiResults\\":\\"\\"}","UserKey":"SupervisionStoreDeliveryAgent","UserType":0,"Version":1,"Workload":"Exchange","ObjectId":"\<HE1P190MB04600526C0524C75E5750C5AC61A9@HE1P190MB0460.EURP190.PROD.OUTLOOK.COM\>","UserId":"user1@contoso.onmicrosoft.com","IsPolicyHit":true,"SRPolicyMatchDetails":{"SRPolicyId":"53be0bf4-75ee-4315-b65d-17d63bdd53ae","SRPolicyName":"Adult images","SRRuleMatchDetails":\[\]}}
ResultIndex: 24
ResultCount: 48
Identity: 44e98a7e-57fd-4f89-79b8-08d941084a35
IsValid: True
ObjectState: Unchanged
```

**Example of a Microsoft 365 Audit log entry for a policy with custom keyword match (custom sensitive information type):**

```xml
RunspaceId: 5c7bc9b0-7672-4091-a112-0635bd5f7732
RecordType: ComplianceSupervisionExchange
CreationDate: 7/6/2021 9:50:12 PM
UserIds: user2@contoso.onmicrosoft.com
Operations: SupervisionRuleMatch
AuditData: {"CreationTime":"2021-07-06T21:50:12","Id":"5c61aae5-26fc-4c8e-0791-08d940c8086f","Operation":"SupervisionRuleMatch","OrganizationId":"338397e6\-697e-4dbe-a66b-2ea3497ef15c","RecordType":68,"ResultStatus":"{\\"ItemClass\\":\\"IPM.Note\\",\\"CcsiResults\\":\\"public\\"}","UserKey":"SupervisionStoreDeliveryAgent","UserType":0,"Version":1,"Workload":"Exchange","ObjectId":"\<20210706174831.24375086.807067@sailthru.com\>","UserId":"user2@contoso.onmicrosoft.com","IsPolicyHit":true,"SRPolicyMatchDetails":{"SRPolicyId":"a97cf128-c0fc-42a1-88e3-fd3b88af9941","SRPolicyName":"Insiders","SRRuleMatchDetails":\[{"SRCategoryName":"New insiders lexicon"}\]}}
ResultIndex: 46
ResultCount: 48
Identity: 5c61aae5-26fc-4c8e-0791-08d940c8086f
IsValid: True
ObjectState: Unchanged
```

> [!NOTE]
> Currently, there may be up to a 24-hour delay between the time a policy match is recorded in Microsoft 365 Audit and the time in which you can investigate policy matches in communication compliance.

## Configure communication compliance and Microsoft Sentinel integration

When you're using the Microsoft Sentinel to aggregate communication compliance policy matches, Sentinel uses Microsoft 365 Audit as the data source. To integrate communication compliance alerts with Sentinel, complete the following steps:

1. [Onboard to Microsoft Sentinel](/azure/sentinel/quickstart-onboard). As part of the onboarding process, you'll configure your data sources.
2. Configure the Microsoft Sentinel [Microsoft Office 365 data connector](/azure/sentinel/data-connectors-reference#microsoft-office-365) and under connector configuration, select *Exchange*.
3. Configure search query to retrieve communication compliance alerts. For example:

    *| OfficeActivity
    | where OfficeWorkload == "Exchange" and Operation == "SupervisionRuleMatch"
    | sort by TimeGenerated*

    To filter for a specific user, you would use the following query format:

    *| OfficeActivity
    | where OfficeWorkload == "Exchange" and Operation == "SupervisionRuleMatch" and UserId == "User1@Contoso.com"
    | sort by TimeGenerated*

For more information about the Microsoft 365 Audit logs for Office 365 collected by Microsoft Sentinel, see [Azure Monitor Logs reference](/azure/azure-monitor/reference/tables/OfficeActivity).

## Configure communication compliance and Splunk integration

To integrate communication compliance alerts with Splunk, complete the following steps:

1. Install the [Splunk Add-on for Microsoft Office 365](https://docs.splunk.com/Documentation/AddOns/released/MSO365/ConfigureinputsmanagementAPI)
2. Configure an integration application in Azure AD for the Splunk Add-on for Microsoft Office 365
3. Configure search queries in your Splunk solution. Use the following search example to identify all communication compliance alerts:

    *index=\* sourcetype="o365:management:activity" Workload=Exchange Operation=SupervisionRuleMatch*

To filter results for a specific communication compliance policy, you can use the *SRPolicyMatchDetails.SRPolicyName* parameter.

For example, the following search example would return alerts for matches to a communication compliance policy named *Inappropriate content*:

  *index=\* sourcetype='o365:management:activity' Workload=Exchange Operation=SupervisionRuleMatch SRPolicyMatchDetails.SRPolicyName=\<Inappropriate content\>*

The following table shows sample search results for different policy types:

| Policy types | Example search results |
| :------------------ | :--------------------------------------- |
| Policy detecting a custom sensitive information type keyword list | { <br> CreationTime: 2021-09-17T16:29:57 <br> ID: 4b9ce23d-ee60-4f66-f38d-08d979f8631f <br> IsPolicyHit: true <br> ObjectId: <CY1PR05MB27158B96AF7F3AFE62E1F762CFDD9@CY1PR05MB2715.namprd05.prod.outlook.com> <br> Operation: SupervisionRuleMatch <br> OrganizationId: d6a06676-95e8-4632-b949-44bc00f0793f <br> RecordType: 68 <br> ResultStatus: {"ItemClass":"IPM.Note","CcsiResults":"leak"} <br> SRPolicyMatchDetails: { [+] } <br> UserId: user1@contoso.OnMicrosoft.com <br> UserKey: SupervisionStoreDeliveryAgent <br> UserType: 0 <br> Version: 1 <br> Workload: Exchange <br> } |
| Policy detecting inappropriate language | { <br> CreationTime: 2021-09-17T23:44:35 <br> ID: e0ef6f54-9a52-4e4c-9584-08d97a351ad0 <br> IsPolicyHit: true <br> ObjectId: <BN6PR05MB3571AD9FBB85C4E12C1F66B4CCDD9@BN6PR05MB3571.namprd05.prod.outlook.com> <br> Operation: SupervisionRuleMatch <br> OrganizationId: d6a06676-95e8-4632-b949-44bc00f0793f <br> RecordType: 68 <br> ResultStatus: {"ItemClass":"IPM.Yammer.Message","CcsiResults":""} <br> SRPolicyMatchDetails: { [+] } <br> UserId: user1@contoso.com <br> UserKey: SupervisionStoreDeliveryAgent <br> UserType: 0 <br> Version: 1 <br> }  |

## Configure communication compliance with other SIEM solutions

To retrieve communication compliance policy matches from Microsoft 365 Audit, you can either use PowerShell or the [Office 365 Management API](/office/office-365-management-api/office-365-management-activity-api-reference).

When using PowerShell, you can use either of these parameters with the **Search-UnifiedAuditLog** cmdlet to filter audit log events for communication compliance activities.

| Audit log parameter | Communication compliance parameter value |
| :------------------ | :--------------------------------------- |
| Operations          | SupervisionRuleMatch                     |
| RecordType          | ComplianceSupervisionExchange            |

For example, the following is a sample search using the **Operations** parameter and the *SupervisionRuleMatch* value:

```powershell
Search-UnifiedAuditLog -StartDate $startDate -EndDate $endDate -Operations SupervisionRuleMatch | ft CreationDate,UserIds,AuditData
```
The following is a sample search using the **RecordsType** parameter and the *ComplianceSupervisionExchange* value:

```powershell
Search-UnifiedAuditLog -StartDate $startDate -EndDate $endDate -RecordType ComplianceSuperVisionExchange | ft CreationDate,UserIds,AuditData
```
## Resources

- [Communication compliance auditing](/microsoft-365/compliance/communication-compliance-reports-audits#audit)
- [Microsoft Purview Audit (Premium)](/microsoft-365/compliance/advanced-audit)
- [Office 365 Management Activity API reference](/office/office-365-management-api/office-365-management-activity-api-reference)
