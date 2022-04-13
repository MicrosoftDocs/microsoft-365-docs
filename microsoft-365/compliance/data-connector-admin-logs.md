---
title: "Use the admin log for data connectors to view status about importing data"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date:
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
description: "Learn how to access and view admin logs for data connectors to get status information for the data imported by the connector."
---

# View admin logs for data connectors

After you create a data connector to import non-Microsoft data to Microsoft 365, you can monitor the daily import status of the connector by downloading the admin logs for the data connector.

## Before you view admin logs

- Auditing must be enabled for your organization to generate and view admin log for your organization. Aduting is enabled by default in Microsoft 365. However, we recommend that you verify auditing status of your organization. For instructions, see [Verify the auditing status for your organization](turn-audit-log-search-on-or-off.md#verify-the-auditing-status-for-your-organization). If you need to enable enable audting for your organization, see [Turn on auditing](turn-audit-log-search-on-or-off.md#turn-on-auditing).

- After auditing is turned on, it could take up to 48 hours to generate admin logs for data connectors. We recommend that you enable auditing before you create data connectors.

- After a data connector is created, it can take up to 72 hours to generate admin logs that contains import status summary.

- Admin logs are available for the previous seven days.

## Download admin logs for data connectors

1. Go to <https://compliance.microsoft.com/> and then click **Data connectors**.

2. Click the **My connectors** tab and then select a data connector to display the fly out page, which contains information and properties about the data connector.

3. Under **Admin logs**, click the **Download log** link to open an admin log.

   ![Admins logs displayed on the data connector flyout page.](..\media\Data-connector-admin-logs1.png)

4. View the following import status information in the admin log:

    - **Import completion time**: timestamp *(in UTC)* when connector completes import from data source and all the below events are computed/updated against the import.

    - **Items available from source**: count of items that were downloaded by Connector from data source

    - **Items available for import**: The count of items that were available for import by the connector. This count includes the sum of items imported successfully, items partially imported, skipped items, and failed items.

    - **Items imported successfully**: count of items that were imported successfully by Connector into user mailboxes after fanout

    - **Items partially imported**: count of items that were imported successfully by Connector into user mailboxes after fanout but had attachments dropped

    - **Items skipped**: count of items that were skipped from being imported into user mailboxes after fanout due to it being duplicate items

    - **Items failed**: count of items that failed to be imported into user mailboxes after fanout due to it errors (like user mapping, item size exceeded etc.) &lt;*event is logged once per user for user mapping failures&gt;*

    - A summary of the **Failed Item Details**:

        - **Item Id**: A unique identifier of the item.

        - **Source User ID**: The user Id at source application. For example, the users Slack Id.

        - **M365 User ID**: The user's user principal name in Microsoft 365.

        - **Failure Reason**: Indicates the reason why the connector couldn't import the item.

> [!NOTE]
> If no items are imported on a particular day, the admin log contains the following message: `No items ingested on mm/dd/yyyy.`
