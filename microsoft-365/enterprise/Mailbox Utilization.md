We have released a new Exchange Online service alert that informs you of mailboxes that are on hold which are at risk of reaching or exceeding their quota limits. This was created to allow visibility on the number of mailboxes in your environment where admin intervention may be required.  

Today, you can find these service alerts in the Microsoft 365 Admin Center under Health à Service Health à Exchange Online (click view) à Active Issues.

**What is this service alert telling me:**

This alert is telling administrators about mailboxes on compliance hold that are nearing mailbox storage quota limits. If the end user is on a compliance hold, they cannot permanently remove data from their mailbox and administrators must configure data retention policies in line with their company’s requirements to move data out of the user’s regular mailbox. If a mailbox on a hold reaches critical or warning states, the administrators are required to [enable archive mailboxes](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Fenable-archive-mailboxes%3Fview%3Do365-worldwide&data=04%7C01%7Cdavidsan%40exchange.microsoft.com%7C2deb047b48bd41919bfb08d947eec75e%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637619913145434438%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=8P0b30FV9V%2FA8VrFkWcveEmOh7SvzM9wfyz9NzjY33c%3D&reserved=0), enable [auto-expanding (unlimited) archive](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Funlimited-archiving%3Fview%3Do365-worldwide%23%3A~%3Atext%3DHow%2520auto-expanding%2520archiving%2520works%25201%2520Archiving%2520is%2520enabled%2C365%2520automatically%2520adds%2520more%2520storage%2520space%2520when%2520necessary.&data=04%7C01%7Cdavidsan%40exchange.microsoft.com%7C2deb047b48bd41919bfb08d947eec75e%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637619913145444428%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=YN6O3Y7F7ry42Ak8Q0Zv9Ged71o%2FZDwC1fDH4jiNsyM%3D&reserved=0) or ensure the retention polices (which move mail from the mailbox to the archive) are aggressive enough.  If nothing is done to resolve the quota issues, the end user may be unable to send or receive messages or meeting invites.

If we look at the tables contained within the service alert, the top table is telling you there are mailboxes reaching limits that are on hold which <u>do not</u> have an archive. The fix in this case should be to [enable an archive mailbox](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Fenable-archive-mailboxes%3Fview%3Do365-worldwide&data=04%7C01%7Cdavidsan%40exchange.microsoft.com%7C2deb047b48bd41919bfb08d947eec75e%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637619913145454427%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=79vMbnIKI%2BMp7L47W22DvuKve9Uwp4Y22PWD5KEprzI%3D&reserved=0). The second table is informing you of mailboxes on hold <u>with</u> archive that are reaching limits. In this case, [increase the recoverable Items quota for mailboxes on hold](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Fincrease-the-recoverable-quota-for-mailboxes-on-hold%3Fview%3Do365-worldwide&data=04%7C01%7Cholliep%40microsoft.com%7Cf11e9617c3a245fdddda08d9487d2682%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637620524621839525%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=f%2Br%2BnD1rXpMaFSWCl65bo19T2ftobKKdiUhl2KDMm2Y%3D&reserved=0) could be followed, or the admin needs to ensure the retention policies that move mail from the primary mailbox to the archive are aggressive enough.   Within the service alert there are descriptions for each column and what they represent.

**<u>Represents mailboxes with no archive that are on hold.</u>**

| **\# Mailboxes ProhibitSendReceiveQuota (Warning)** | **\# Mailboxes ProhibitSendReceiveQuota (Critical)** | **\# Mailboxes RecoverableItemsQuota (Warning)** | **\# Mailboxes RecoverableItemsQuota (Critical)** |
|-----------------------------------------------------|------------------------------------------------------|--------------------------------------------------|---------------------------------------------------|
| 2                                                   | 2                                                    | 1                                                | 0                                                 |

**<u>Represents mailboxes with archive that are on hold</u>.**

| **\# Mailboxes ProhibitSendReceiveQuota (Warning)** | **\# Mailboxes ProhibitSendReceiveQuota (Critical)** | **\# Mailboxes RecoverableItemsQuota (Warning)** | **\# Mailboxes RecoverableItemsQuota (Critical)** |
|-----------------------------------------------------|------------------------------------------------------|--------------------------------------------------|---------------------------------------------------|
| 6                                                   | 1                                                    | 1                                                | 0                                                 |

Within the service alert, you may see a table that provides you information on retention policies within your organization. Definitions for and more information on retention policies and tags can be found under [retention tags and retention policies](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2FExchange%2Fpolicy-and-compliance%2Fmrm%2Fretention-tags-and-retention-policies%3Fview%3Dexchserver-2019&data=04%7C01%7Cdavidsan%40exchange.microsoft.com%7C2deb047b48bd41919bfb08d947eec75e%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637619913145474422%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=oIdfCkIorz6pqY61TvMipAZ%2FNC9HlCfNJ5UJ%2FsdDCAM%3D&reserved=0).

> For the explanations below, Recoverable Items and Dumpster are interchangeable.

-   RetentionPolicyGuid: The GUID of the retention policy applied to mailboxes within your organization

-   MailboxType: Specifies what type of mailbox the policy applies to, either Primary or PrimaryWithArchive where Primary means a mailbox with no online archive, and PrimaryWithArchive means a mailbox with an online archive

-   HasMoveDumpsterToArchiveTag: Indicates that there is a recoverable items tag applied to the mailbox. Items in recoverable items in the primary mailbox will be moved to the archive. This tag is set by the administrator. If the retention period for the recoverable items tag isn’t set properly, reducing should help (as an example if the tag is set for every seven days, reducing to three through five days may help). Please see the recommended retention period for recoverable items tag in [Increase the Recoverable Items quota for mailboxes on hold - Microsoft 365 Compliance \| Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Fincrease-the-recoverable-quota-for-mailboxes-on-hold%3Fview%3Do365-worldwide%23step-1-create-a-custom-retention-tag-for-the-recoverable-items-folder&data=04%7C01%7Cholliep%40microsoft.com%7C6905b2a10c6345ae06a708d948041746%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637620004688188683%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=SFROld5mlAWUFz%2FYRu2uiYJhd1KYytNDrORDu6CtTWc%3D&reserved=0).

-   HasMovePrimaryToArchiveTag: Indicates that there is a Default move to archive tag configured on the mailbox. Mail will be moved from the primary mailbox regular folders to the archive which is set by the administrator. Again, if the retention period for this tag isn’t set aggressively enough, the end user may have an issue with their primary mailbox continually reaching quota limits. Reducing the retention period may solve this issue.

-   HasPersonalArchiveTag: Indicates if there is a Personal Archive tag configured on the mailbox. The tag is set by the end user allowing them to use inbox rules to move messages to a folder with a tag or to apply the tag to folders and messages.

| **RetentionPolicyGuid**              | **MailboxType**    | **HasMoveDumpsterToArchiveTag** | **HasMovePrimaryToArchiveTag** | **HasPersonalArchiveTag** | **Mailboxes** |
|--------------------------------------|--------------------|---------------------------------|--------------------------------|---------------------------|---------------|
| 6c041498-1611-5011-a058-1156ce60890b | PrimaryWithArchive | True                            | False                          | True                      | 398           |
| 6c041498-1611-5011-a058-1156ce60890c | Primary            | True                            | False                          | True                      | 10            |
| 749ceecc-d49d-4000-a9d5-594dbaea1e56 | PrimaryWithArchive | False                           | True                           | False                     | 7             |
| 269f6a85-1234-4648-8cde-59bbc7bc67d0 | PrimaryWithArchive | True                            | True                           | True                      | 1             |
| 13fb778d-e1cb-4c44-5768-ad4282906c1f | PrimaryWithArchive | True                            | True                           | False                     | 1             |

**How often will I see this service alert:**

If you do not take action to resolve the quota issues, you can expect to see this alert every four days along with any new mailboxes that are nearing the limit. If you take action to resolve the quota issues, this alert will occur every time a new mailbox with quota issues is encountered.

**Recommended Content:**

[Listing some issues for Microsoft 365 Compliance - Office 365 \| Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Foffice365%2Ftroubleshoot%2Fmicrosoft-365-compliance-welcome&data=04%7C01%7Cdavidsan%40exchange.microsoft.com%7C2deb047b48bd41919bfb08d947eec75e%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637619913145484421%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=hndbU%2FjFIh3fyfzdlsCycgTc%2BM2ZKMecdZ%2BF3doYHlQ%3D&reserved=0)

Aids with troubleshooting and resolving issues with archive mailboxes and compliance in general. 

[Enable archive mailboxes in the Security & Compliance Center - Microsoft 365 Compliance \| Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Fenable-archive-mailboxes%3Fview%3Do365-worldwide&data=04%7C01%7Cholliep%40microsoft.com%7Cf11e9617c3a245fdddda08d9487d2682%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637620524621839525%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=Aqmt1sAiG%2FZDvx8kNJ%2BoIyxI%2Bjrzr6OXrDZE6QKadQc%3D&reserved=0)

Provides direction on how to enable an archive mailbox in the security and compliance center.

[Overview of unlimited archiving - Microsoft 365 Compliance \| Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Funlimited-archiving%3Fview%3Do365-worldwide%23%3A~%3Atext%3DHow%2520auto-expanding%2520archiving%2520works%25201%2520Archiving%2520is%2520enabled%2C365%2520automatically%2520adds%2520more%2520storage%2520space%2520when%2520necessary.&data=04%7C01%7Cholliep%40microsoft.com%7Cf11e9617c3a245fdddda08d9487d2682%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637620524621849493%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=0wuPCaRlAGnUJHKFwOkeccpenw%2BEJdFxTS6QyRO9ods%3D&reserved=0)

Provides an overview of auto-expanding (unlimited) archiving.

[Increase the Recoverable Items quota for mailboxes on hold - Microsoft 365 Compliance \| Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fmicrosoft-365%2Fcompliance%2Fincrease-the-recoverable-quota-for-mailboxes-on-hold%3Fview%3Do365-worldwide&data=04%7C01%7Cholliep%40microsoft.com%7Cf11e9617c3a245fdddda08d9487d2682%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637620524621849493%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=rdL7QUpMOUXtfJ8Xov4zLAwvXIWwdSqBXDwb71MIutw%3D&reserved=0)

Provides information on archive, auto-expanding archive, custom retention tags, creating/applying new retention policies and running the managed folder assistant.

[Retention tags and retention policies in Exchange Server \| Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2FExchange%2Fpolicy-and-compliance%2Fmrm%2Fretention-tags-and-retention-policies%3Fview%3Dexchserver-2019&data=04%7C01%7Cholliep%40microsoft.com%7Cf11e9617c3a245fdddda08d9487d2682%7C72f988bf86f141af91ab2d7cd011db47%7C0%7C0%7C637620524621859455%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=bXQSJ2ZksTfL%2B3eNH%2Fc0fmIW7Zn%2Fd%2FvrHunyV6p9peo%3D&reserved=0)

Provides information on retention tags and policies.
