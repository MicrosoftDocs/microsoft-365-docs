---
title: "Import custodians to an Advanced eDiscovery case"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150 
description: "Use the import tool dto quickly add multiple custodians and their associated data sources to a case in Advanced eDiscovery."
---

# Import custodians to an Advanced eDiscovery case

For Advanced eDiscovery cases that involve many custodians, you can import multiple custodians at once by using a CSV file that contains the information necessary to add them to a case.

## Import custodians

1. Open the Advanced eDiscovery case and select the **Data sources** tab.

2. Click **Add data source** > **Import custodians**.

3. On the **Import custodians** flyout page, click **Download a blank template** to download a custodian template CSV file.

   ![Download a CSV template from Import custodians flyout page.](../media/ImportCustodians1.png)

4. Add the custodial information to the CSV file and save it to your local computer. See the [Custodian CSV file](#custodian-csv-file) section for information about the required properties in the CSV file.

5. After you've prepared the CSV file with the custodian information, go back to the **Data sources** tab, and click **Add data source** > **Import custodians** again.

6. On the **Import custodians** flyout page, click **Browse** and then upload the CSV file that contains the custodian information.

   After the CSV file is uploaded, a job named **BulkAddCustodian** is created and displayed on the **Jobs** tab. The job validates the custodians and their associated data sources and then adds them to the **Data sources** page of the case.

## Custodian CSV file

After you download the CSV custodian template, you can add custodians and their data source in each row. Be sure not to change the column names in the header row. Use the workload type and workload location columns to associate other data sources to a custodian.

| Column name|Description|
|:------- |:------------------------------------------------------------|
|**Custodian contactEmail**     |The custodian's UPN email address. For example, sarad@contoso.onmicrosoft.com.           |
|**Exchange Enabled** | TRUE/FALSE value to include or not include the custodian's mailbox.      |
|**OneDrive Enabled** | TRUE/FALSE value to include or not included the custodian's OneDrive for Business account. |
|**Is OnHold**        | TRUE/FALSE value to indicate whether to place the custodian data sources on hold. <sup>1</sup>     |
|**Workload1 Type**         |String value indicating the type of data source to associate with the custodian. Possible values include: <br/>- ExchangeMailbox<br/> - SharePointSite<br/>- TeamsMailbox<sup>2</sup><br/>- YammerMailbox<sup>2</sup>| 
|**Workload1 Location**     | Depending on your workload type, this would be the location of the data source. For example, the email address for an Exchange mailbox or the URL for a SharePoint site. |
|||

> [!NOTE]
> <sup>1</sup> When you put more than 1,000 mailboxes or 100 sites on hold, the system will automatically scale the eDiscovery hold as needed. This means the system will automatically add data locations to multiple holds, instead of adding them to a single hold. However, the limit of 10,000 case holds per organization still applies. For more information about hold limits, see [Limits in Advanced eDiscovery](limits-ediscovery20.md#hold-limits).
<br>
> <sup>2</sup> When you include TeamsMailbox and YammerMailbox workloads in the CSV file, the group site (TeamSite and YammerSite) are automatically added by default. You don't need to specify TeamsSite and YammerSite separately in the CSV file.

Here's an example of a CSV file with custodian information:<br/><br/>

|Custodian contactEmail      | Exchange Enabled | OneDrive Enabled | Is OnHold | Workload1 Type | Workload1 Location             |
| ----------------- | ---------------- | ---------------- | --------- | -------------- | ------------------------------ |
|robinc@contoso.onmicrosoft.com | TRUE             | TRUE             | TRUE      | SharePointSite | https://contoso.sharepoint.com |
|pillarp@contoso.onmicrosoft.com | TRUE             | TRUE             | TRUE      | |  |
|.johnj@contoso.onmicrosoft.com|TRUE|TRUE|TRUE||
|sarad@contoso.onmicrosoft.com|TRUE|TRUE|TRUE|ExchangeMailbox|.saradavis@contoso.onmicrosoft.com
||||||

> [!NOTE]
> To import an inactive mailbox as a custodian or to associate an inactive mailbox with another custodian, add a "." prefix to the UPN address of the inactive mailbox.

## Custodian and data source validation

After you upload the custodian CSV file, Advanced eDiscovery does the following things:

1. Validates the custodians and their data sources.

2. Indexes all data sources for each custodian and places them on hold (if the **Is OnHold** property in the CSV file is set to TRUE).

### Custodian validation

Currently, we only support importing custodians that are included in your organization's Azure Active Directory (Azure AD).

The custodian import tool finds and validates custodians using the UPN value in the **Custodian contactEmail** column in the CSV file. Custodians that are validated are automatically added to the case and listed on the **Data sources** tab of the case. If a custodian can't be validated, they are listed in the error log for the BulkAddCustodian job that is listed on the **Jobs** tab in the case. Unvalidated custodians are not added to the case or listed on the **Data sources** tab.

### Data source validation

After custodians are validated and added to the case, each primary mailbox and OneDrive account that's associated with a custodian is added.

However, if any of the other data sources (such as SharePoint sites, Microsoft Teams, Microsoft 365 Groups, or Yammer groups) associated with a custodian can't be found, none of them are assigned to the custodian and the value **Not validated** is displayed in the **Status** column next to the custodian on the **Data sources** tab.

To add validated data sources for a custodian:

1. On the **Data sources** tab, select a custodian that contains data sources that aren't validated.

2. On the custodian flyout page, scroll to the **Custodial locations** section to view both validated and unvalidated data sources that are associated with custodian.

3. Click **Edit** at the top of the flyout page to remove invalid data sources or add new ones.

4. After you remove unvalidated data sources or add a new one, the value **Active** is displayed in **Status** column for the custodian on the **Data sources** tab. To add sources that previously appeared to be invalid, follow the remediation steps below to manually add them to a custodian.

### Remediating invalid data sources

To manually add and associate a data source that was previously invalid:

1. On the **Data sources** tab, select a custodian to manually add and associate a data source that was previously invalid.

2. Click **Edit** at the top of the flyout page to associate mailboxes, sites, Teams, or Yammer groups to the custodian. Do this by clicking **Edit** next to the appropriate data location type.

3. Click **Next** to display the **Hold settings** page and configure the hold setting for the data sources you added.

4. Click **Next** to display the **Review custodians** page, and then click **Submit** to save your changes.
