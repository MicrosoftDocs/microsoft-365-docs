# Create a Search Query for Third Party Archived Data

1.  How to create a query to search all third-party data archived in a Microsoft 365 mailbox?

To search or place a hold on any type of third-party data that you've imported into Microsoft 365 using a Compliance Data Connector, enter the kind:externaldata message property-value pair in the keyword box for a Content Search or when creating a query-based hold. This property will return any data archived to a Microsoft 365 mailbox using a Compliance Data connector.

For example, to search for items imported from any third-party data source that contain the word "contoso" in the Subject property of the imported item, enter the following query into the keywords box:

kind:externaldata AND subject:contoso

To search for a specific type of archived data, use the itemclass:ipm.externaldata.&lt;third-party data type&gt;\* message property-value pair in the keyword box for a Content Search or when creating a query-based hold. Each Compliance data connector has an item class property that corresponds to its archived data.

For example, to search for Facebook data that contains the word contoso, paste this query in the keyword box:

itemclass:ipm.externaldata.Facebook\* AND subject:contoso

The query syntax isn't case-sensitive.

Here are a few more examples:

| **Third-party data type** | **Value for itemclass: property**   |
|---------------------------|-------------------------------------|
| Bloomberg Message         | ipm.externaldata.BloombergMessage\* |
| CellTrust                 | ipm.externaldata.CellTrust\*        |
| Pivot                     | ipm.externaldata.Pivot\*            |
| WhatsApp Archiver         | ipm.externaldata.WhatsAppArchiver\* |

> For a list of other properties that can be included in a query for third-party data items that can include in a keyword query, see this documentation.
