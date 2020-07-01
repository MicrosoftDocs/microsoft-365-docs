---
title: "Bulk-add custodians to an Advanced eDiscovery case"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ROBOTS: NOINDEX, NOFOLLOW 
description: "Use the bulk-add tool to quickly add multiple custodians and their associated data sources to a case in Advanced eDiscovery."
---

# Bulk-add custodians to an Advanced eDiscovery case

For Advanced eDiscovery cases that involve a lot of custodians, you can import multiple custodians at once by a CSV file that contains all the information necessary to add them to a case.

## Bulk-add custodians

1. Enter case and navigate to the **Sources** tab.

2. Click **Import custodians**

3. On the flyout page, click **Download a blank template** to download a CSV custodian template file.

4. Add the custodial information to the CSV file and save it on your local computer. See the next section for information about the properties in the CSV file.

5. On the **Sources** tab, click **Import Custodians** again.

6. On flyout page, click **Browse** and the upload your CSV file.

   After the CSV file is uploaded, a BulkAddCustodian job is created and displayed on the **Jobs** tab. The job validates the custodians and their corresponding data sources and then adds them to the **Custodians** tab on the **Sources** page of the case.

## Custodian CSV file

After you download the CSV template, you can add custodians and their data source in each row. Be sure not to change the column names in the header row.

| Column name|Description|
|:------- |:------------------------------------------------------------|
|**Custodian ContactEmail**     | UPN email of custodian. Example: sarad@onmicrosoft.contoso.com           |
|**Exchange Enabled** | TRUE/FALSE value on whether to add custodian's mailbox.      |
|**OneDrive Enabled** | TRUE/FALSE value on whether to add custodian's OneDrive for Business account. |
|**Is OnHold**        | TRUE/FALSE value on whether to place custodian on hold.       |
|**Workload1 Type**         | String value indicating the type of data source to associate with the custodian. <br />Possible values include: <br />ExchangeMailbox, SharePointSite, TeamsMailbox, TeamsSite, YammerMailbox, YammerSite |
|**Workload1 Location**     | Depending on your workload type, this would be the data location of your workload (for example, the email address of an Exchange mailbox or the URL for a SharePoint site). |
|||

Here's an example of a CSV file with custodian information:  

| ContactEmail      | Exchange Enabled | OneDrive Enabled | Is OnHold | Workload1 Type | Workload1 Location             |
| ----------------- | ---------------- | ---------------- | --------- | -------------- | ------------------------------ |
|sarad@onmicrosoft.contoso.com | TRUE             | TRUE             | TRUE      | SharePointSite | https://contoso.sharepoint.com |
|pillarp@onmicrosoft.contoso.com | TRUE             | TRUE             | TRUE      | |  |
||||||

## Custodian and data source validation

When you upload the custodian CSV file, Advanced eDiscovery does the following things:

1. Validates the custodians and their data sources. 

2. Indexes all data sources for each custodian and places them on hold (if the Is OnHold property is set to TRUE).

### Custodian validation

Currently, we only support importing custodians that are in Azure Active Directory (AAD).

We validate and find custodians using the UPN value in the **Contact Email** column in the CSV file. Custodians that are validated are automatically added to the case and listed on the **Custodian** tab on the **Sources** page of the case. If a custodian can't be validated, they are listed in the error log for the BulkAddCustodian job that is listed on the **Jobs** tab in the case. Unvalidated custodians are not added to the case.

### Data source validation

After custodians are validated and added to the case, each data source that's associated with a custodian is validated. If any data source for a custodian can't be found, the value **Not validated** would be displayed in the **Validated** column on the **Custodian** tab for that custodian.

### Remediating unvalidated data sources

To remediate custodians with unvalidated data sources: 

1. On the **Custodian** tab, select a custodian who isn't validated.

2. On the custodian flyout page, scroll to the **Data sources** section to view the data sources that are associated with custodian. Both validated and unvalidated data sources are listed.

3. In the **Data sources** section, click **Edit**.

4. On the **Choose custodial locations** page, remove an unvalidated data source.

5. On the **Select additional locations** page, click **Update** to add additional data sources for a custodian.
