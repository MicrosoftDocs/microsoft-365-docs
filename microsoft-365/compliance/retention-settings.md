---
title: "Configure Microsoft 365 retention settings to automatically retain or delete content"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 03/06/2023
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- purview-compliance
- tier1
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Understand the settings you can configure for Microsoft 365 retention policies and retention labels to keep or delete your organization's data."
---

# Common settings for retention policies and retention label policies

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Many settings for retention are common to both retention policies and retention label policies. Use the following information to help you configure these settings to proactively retain content, delete content, or both—retain and then delete the content.

For the scenarios that support these policies for retention, see:

- [Create and configure retention policies](create-retention-policies.md).
- [Publish retention labels and apply them in apps](create-apply-retention-labels.md)
- [Apply a retention label to content automatically](apply-retention-labels-automatically.md)

Settings that are specific to each scenario are explained in their respective documentation.

For overview information about policies for retention and how retention works in Microsoft 365, see [Learn about retention policies and retention labels](retention.md).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Scopes - adaptive and static

If you're unfamiliar with adaptive and static scopes, and to help you choose which one to use when you configure a policy for retention, see [Adaptive or static policy scopes for retention](retention.md#adaptive-or-static-policy-scopes-for-retention). 

When you've decided whether to use an adaptive or static scope, use the following information to help you configure it:
- [Configuration information for adaptive scopes](purview-adaptive-scopes.md#configure-adaptive-scopes)
- [Configuration information for static scopes](#configuration-information-for-static-scopes)

> [!TIP]
> If you have policies that use static scopes and you want to convert them to adaptive scopes, leave your existing policies in place while you create new policies that use adaptive scopes with the same retention settings. Validate these new policies are targeting the correct users, sites, and groups before you disable or delete the old policies with static scopes.

### Configuration information for static scopes

When you choose to use static scopes, you must then decide whether to apply the policy to all instances for the selected location (the entire location) or to include or exclude specific instances (specific inclusions or exclusions).

#### A policy that applies to entire locations

Except Skype for Business, the default is that all instances for the selected locations are automatically included in the policy without you having to specify them as included.

For example, **All mailboxes** for the **Exchange email** location. With this default setting, all existing user mailboxes will be included in the policy, and any new mailboxes created after the policy is applied will automatically inherit the policy.

#### A policy with specific inclusions or exclusions

Be aware that if you use the optional configuration to scope your retention settings to specific users, specific Microsoft 365 groups, or specific sites, there are some limits per policy to be aware of. For more information, see [Limits for retention policies and retention label policies](retention-limits.md). 

To use the optional configuration to scope your retention settings, make sure the **Status** of that location is **On**, and then use the links to include or exclude specific users, Microsoft 365 groups, or sites.

> [!WARNING]
> If you configure instances to include and then remove the last one, the configuration reverts to **All** for the location.  Make sure this is the configuration that you intend before you save the policy.
>
> For example, if you specify one SharePoint site to include in your retention policy that's configured to delete data, and then remove the single site, by default all SharePoint sites will then be subject to the retention policy that permanently deletes data. The same applies to includes for Exchange mailboxes, OneDrive accounts, Teams chat users, and so on.
>
> In this scenario, toggle the location off if you don't want the **All** setting for the location to be subject to the retention policy. Alternatively, specify exclude instances to be exempt from the policy.

## Locations

Locations in policies for retention identify specific Microsoft 365 services that support retention settings, such as Exchange email and SharePoint sites. Use the following section for the locations that have configuration details and possible exceptions that you need to be aware of when you select them for your policy.

### Configuration information for Exchange mailboxes and Exchange public folders

Both the **Exchange mailboxes** location and the **Exchange public folders** location require mailboxes to have at least 10 MB of data before retention settings will apply to them.

The **Exchange mailboxes** location supports retention for users' email, calendar, and other mailbox items, by applying retention settings at the level of a mailbox. Shared mailboxes and resource mailboxes for equipment and rooms are also supported.

Email contacts and Microsoft 365 group mailboxes aren't supported for Exchange email. For Microsoft 365 group mailboxes, select the **Microsoft 365 Group mailboxes & sites** location instead. Although the Exchange location initially allows a group mailbox to be selected for a static scope, when you try to save the retention policy, you receive an error that "RemoteGroupMailbox" isn't a valid selection for this location.

Depending on your policy configuration, [inactive mailboxes](inactive-mailboxes-in-office-365.md) might be included or not:

- Static policy scopes include inactive mailboxes when you use the default **All mailboxes** configuration but aren't supported for [specific inclusions or exclusions](#a-policy-with-specific-inclusions-or-exclusions). However, if you include or exclude a recipient that has an active mailbox at the time the policy is applied and the mailbox later goes inactive, the retention settings continue to be applied or excluded.

- Adaptive policy scopes, by default, include inactive mailboxes when they meet the scope's query. You can exclude them by using the advanced query builder and the OPATH property *IsInactiveMailbox*:
    
    ```console
    (IsInactiveMailbox -eq "False")
    ```

If you use a static policy scope and choose recipients to include or exclude, you can select distribution groups and email-enabled security groups as an efficient way to select multiple recipients instead of selecting them one-by-one. When you use this option, behind the scenes, these groups are automatically expanded at the time of configuration to select the mailboxes of the users in the group. If the membership of those groups later change, your existing retention policy isn't automatically updated, unlike adaptive policy scopes.

For detailed information about which mailbox items are included and excluded when you configure retention settings for Exchange, see [What's included for retention and deletion](retention-policies-exchange.md#whats-included-for-retention-and-deletion).

The **Exchange public folders** location applies retention settings to all public folders and can't be applied at the folder or mailbox level.

#### Exceptions for auto-apply policies configured for sensitive information types

When you configure an auto-apply policy that uses sensitive information types and select the **Exchange mailboxes** location:

- See the important callout for [Auto-apply labels to content with specific types of sensitive information](apply-retention-labels-automatically.md#auto-apply-labels-to-content-with-specific-types-of-sensitive-information).

### Configuration information for SharePoint sites and OneDrive accounts

The location name for the SharePoint sites location changes, depending on whether you're using [adaptive policy scopes or static policy scopes](retention.md#adaptive-or-static-policy-scopes-for-retention). The name change reflects what type of sites are included:

- Static policy scopes: **SharePoint classic and communication sites**
    - Can retain and delete documents in SharePoint communication sites, team sites that aren't connected by Microsoft 365 groups, and classic sites. Team sites connected by Microsoft 365 groups aren't supported with this option and instead, use the **Microsoft 365 Group mailboxes & sites** location that applies to content in the group's mailbox, site, and files.

- Adaptive policy scopes: **SharePoint sites** 
    - Can retain and delete documents in OneDrive sites and Microsoft 365 group-connected sites in addition to SharePoint communication sites, team sites that aren't connected by Microsoft 365 groups, and classic sites.

> [!TIP]
> You can use a [filter in the SharePoint admin center](/sharepoint/customize-admin-center-site-list) or a [SharePoint PowerShell command](/powershell/module/sharepoint-online/get-sposite#example-10) to confirm whether a site is group-connected.

For detailed information about what's included and excluded when you configure retention settings for SharePoint and OneDrive, see [What's included for retention and deletion](retention-policies-sharepoint.md#whats-included-for-retention-and-deletion).

When you specify your locations for SharePoint sites or OneDrive accounts, you don't need permissions to access the sites. For static scopes, no validation is done at the time you specify the URL on the **Edit locations** page. However, the SharePoint sites that you specify are checked that they exist on the final page of the configuration. If this check fails, you see a message that validation failed for the URL you entered, and the retention policy can't be created until the validation check passes. If you see this message, go back in the configuration process to change the URL or remove the site from the retention policy.

To specify individual OneDrive accounts, see [Get a list of all user OneDrive URLs in your organization](/onedrive/list-onedrive-urls).

> [!NOTE]
> When you specify individual OneDrive accounts, be aware that unless OneDrive accounts are [pre-provisioned](/onedrive/pre-provision-accounts), the URL isn't created until a user accesses their OneDrive for the first time.
>
> Also, the OneDrive URL will [automatically change](/onedrive/upn-changes) if there is a change in the user's UPN. For example, a name-changing event such as marriage, or a domain name change to support an organization's rename or business restructuring. If the UPN changes, you will need to update the OneDrive URLs you specify for retention settings.
>
> Because of the challenges of reliably specifying URLs for individual users to include or exclude for static scopes, [adaptive scopes](purview-adaptive-scopes.md) with the **User** scope type are better suited for this purpose.


### Configuration information for Microsoft 365 Group mailboxes & sites

To retain or delete content for a Microsoft 365 group (formerly Office 365 group), use the **Microsoft 365 Group mailboxes & sites** location. For retention policies, this location includes the group mailbox and SharePoint teams site. For retention labels, this location includes the SharePoint teams site only.

For detailed information about which items are included and excluded for Microsoft 365 Groups:
- For group mailboxes, see [What's included for retention and deletion](retention-policies-exchange.md#whats-included-for-retention-and-deletion) for Exchange retention.
- For SharePoint teams sites, see [What's included for retention and deletion](retention-policies-sharepoint.md#whats-included-for-retention-and-deletion) for SharePoint retention.

Mailboxes that you target with this policy location require at least 10 MB of data before retention settings will apply to them.

> [!NOTE]
> Even though a Microsoft 365 group has an Exchange mailbox, a retention policy for the **Exchange mailboxes** location won't include content in Microsoft 365 group mailboxes.

If you use static scopes: Although the **Exchange mailboxes** location for a static scope initially allows you to specify a group mailbox to be included or excluded, when you try to save the retention policy, you'll see an error that "RemoteGroupMailbox" isn't a valid selection for the Exchange location.

By default, a retention policy applied to a Microsoft 365 group includes the group mailbox and SharePoint teams site. Files stored in the SharePoint teams site are covered with this location, but not Teams chats or Teams channel messages that have their own retention policy locations.

To change the default because you want the retention policy to apply to either just the Microsoft 365 mailboxes, or just the connected SharePoint teams sites, use the [Set-RetentionCompliancePolicy](/powershell/module/exchange/set-retentioncompliancepolicy) PowerShell cmdlet and the *Applications* parameter with one of the following values:

- `Group:Exchange` for just Microsoft 365 mailboxes that are connected to the group.
- `Group:SharePoint` for just SharePoint sites that are connected to the group.

To return to the default value of both the mailbox and SharePoint site for the selected Microsoft 365 groups, specify `Group:Exchange,SharePoint`.

#### Exceptions for auto-apply policies configured for sensitive information types

When you configure an auto-apply policy that uses sensitive information types and select the **Microsoft 365 Group mailboxes & sites** location:

- Microsoft 365 group mailboxes aren't included. To include these mailboxes in your policy, select the **Exchange mailboxes** location instead.

#### What happens if a Microsoft 365 group is deleted after a policy is applied

When a policy for retention (static policy scope or adaptive) is applied to a Microsoft 365 group, and that group is then deleted from Azure Active Directory:

- The group-connected SharePoint site is preserved and continues to be managed by the retention policy with the **Microsoft 365 Group mailboxes & sites** location. The site is still accessible to the people who had access to it before the group was deleted, and any new permissions must now be managed via SharePoint.
    
    At this point, you can't exclude the site from the Microsoft 365 Groups location, because you can't specify the deleted group. If you need to release the retention policy from this site, contact Microsoft Support. For example, [open a support request in the Microsoft 365 Admin Center](/microsoft-365/admin/get-help-support#online-support).

- The mailbox for the deleted group becomes inactive and like the SharePoint site, remains subject to retention settings. For more information, see [Inactive mailboxes in Exchange Online](inactive-mailboxes-in-office-365.md).

### Configuration information for Skype for Business

> [!NOTE]
> Skype for Business was [retired July 31, 2021](https://techcommunity.microsoft.com/t5/microsoft-teams-blog/skype-for-business-online-to-be-retired-in-2021/ba-p/777833) and we encourage customers to migrate to Microsoft Teams. However, retention policies for Skype for Business continues to be supported for existing customers.

Unlike Exchange email, you can't toggle the status of the Skype location on to automatically include all users, but when you turn on that location, you must then manually choose the users whose conversations you want to retain:

:::image type="content" source="../media/skype-location-retention-policies.png" alt-text="The Skype for Business retention policy location requires you to manually add users.":::

After you select this **Edit** option, in the **Skype for Business** pane you can quickly include all users by selecting the hidden box before the **Name** column. However, it's important to understand that each user counts as a specific inclusion in the policy. So if you include 1,000 users by selecting this box, it's the same as if you manually selected 1,000 users to include, which is the maximum supported for Skype for Business.

Be aware that **Conversation History**, a folder in Outlook, is a feature that has nothing to do with Skype archiving. **Conversation History** can be turned off by the end user, but archiving for Skype is done by storing a copy of Skype conversations in a hidden folder that is inaccessible to the user but available to eDiscovery.

## Settings for retaining and deleting content

By choosing the settings for retaining and deleting content, your policy for retention will have one of the following configurations for a specified period of time:

- Retain-only
    
    For this configuration, choose the following options:
    
    - For retention policies: On the **Decide if you want to retain content, delete it, or both** page, select **Retain items for a specific period**, specify the retention period and then for **At end of the retention period** select **Do nothing** for the retention settings to be removed.  Or to retain without an end date, select **Retain items forever** on this page.
    
    - For retention labels: On the **Define label settings page**, select **Retain items indefinitely or for a specific period**, and then:
        - For the retention settings to no longer be in effect on the labeled content after a specific time: On the **Define the retention period** page, for **Retain items for**, specify the time period. Then on the **Choose what happens after the retention period** page, select **Deactivate retention settings**. The label remains on the content but with no restrictions, as if it's a [label that just classifies](retention.md#classifying-content-without-applying-any-actions).
        - To retain without an end date: On the **Define the retention period** page, for **Retain items for**, select **An indefinite period**. The label remains on the content with any [existing restrictions](records-management.md#compare-restrictions-for-what-actions-are-allowed-or-blocked).

- Retain and then delete

    For this configuration, choose the following options:
    
    - For retention policies: On the **Decide if you want to retain content, delete it, or both** page, select **Retain items for a specific period**, specify the retention period and then for **At end of the retention period** select **Delete items automatically**.
    
    - For retention labels: On the **Define label settings** page, select **Retain items indefinitely or for a specific period**, specify the retention period and then for **Choose what happens after the retention period**, select either **Delete items automatically** or **Start a disposition review**. For information about disposition reviews, see [Disposition review](disposition.md#disposition-reviews).

- Delete-only

    For this configuration, choose the following options:
    
    - For retention policies: On the **Decide if you want to retain content, delete it, or both** page, select **Only delete items when they reach a certain age**, and specify the time period.
    
    - For retention labels: On the **Define label settings** page, select **Enforce actions after a specific period** and specify the time period, still referred to as the retention period. The option **Choose what happens after the period** is automatically set to **Delete items automatically**.

### Retaining content for a specific period of time

When you configure a retention label or policy to retain content in the compliance portal, you choose to retain items for a specific number of days, months (assumes 30 days), or years (assumes 365 days). Or alternatively, retain the items forever. The retention period isn't calculated from the time the policy was assigned, but according to the start of the retention period specified.

For the start of the retention period, you can choose when the content was created or, supported only for files and the SharePoint, OneDrive, and Microsoft 365 Groups, when the content was last modified. For retention labels, you can start the retention period from the content was labeled, and when an event occurs.

Examples:

- SharePoint: If you want to retain items in a site collection for seven years after this content is last modified, and a document in that site collection hasn't been modified in six years, the document will be retained for only another year if it's not modified. If the document is edited again, the age of the document is calculated from the new last modified date, and it will be retained for another seven years.

- Exchange: If you want to retain items in a mailbox for seven years, and a message was sent six years ago, the message will be retained for only one year. For Exchange items, the age is based on the date received for incoming email, or the date sent for outgoing email. Retaining items based on when it was last modified applies only to site content in OneDrive and SharePoint.

At the end of the retention period, you choose whether you want the content to be permanently deleted. For example, for retention policies:

![Retention settings page.](../media/b05f84e5-fc71-4717-8f7b-d06a29dc4f29.png)

Retention labels have two more options. As described in the next section, they can apply another retention label with its own retention period. Or, they can [trigger a Power Automate flow](retention-label-flow.md) for custom actions.

Before you configure retention, first familiarize yourself with capacity and storage limits for the respective workloads:

- For SharePoint and OneDrive, retained items are stored in the site's Preservation Hold library, which is included in the site's storage quota. For more information, see [Manage site storage limits](/sharepoint/manage-site-collection-storage-limits) from the SharePoint documentation.

- For Exchange, Teams, and Yammer, where retained messages are stored in mailboxes, see [Exchange Online limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits) and enable [auto-expanding archiving](autoexpanding-archiving.md).
    
    In extreme cases where a high volume of email is deleted in a short time period, either by users or automatically from policy settings, you might also need to configure Exchange to more frequently move items from the Recoverable Items folder in the user's primary mailbox to the Recoverable Items folder in their archive mailbox. For step-by-step instructions, see [Increase the Recoverable Items quota for mailboxes on hold](ediscovery-increase-the-recoverable-quota-for-mailboxes-on-hold.md).

#### Relabeling at the end of the retention period

When you configure a retention label to automatically apply a different retention label at the end of the retention period, the item is then subject to the retention settings of the newly selected retention label. This option lets you automatically change the retention settings for the item.

You can change the replacement label after you've created and saved the primary retention label. For items that already have the primary retention label applied and within the configured retention period, the change of replacement label will synchronize to these items. As with other label changes, allow up to 7 days for this synchronization period.

For the replacement label, you'll typically choose a label that has a longer retention period than the primary retention label. However, that  isn't necessarily the case because of the label setting when to start the retention period. For example, the primary retention label is configured to start the retention period when the item is created, and the replacement label starts the retention period when labeled, or when an event occurs.

If there's also a change in whether the label [marks the item as a record or a regularly record](declare-records.md), the replacement retention label can also change the [restrictions for what action are allowed or blocked](records-management.md#records) for that item.

##### Relabeling example configuration

You create and configure a retention label for an industry-compliance requirement to retain content for three years after it's created, and mark the item as a record. When this label is applied, users won't be able to delete the item from their app, because that's one of the restrictions of a record.

At the end of the three years, you want to automatically retain the content for two more years because of internal compliance policies, but there's no need to mark it as a record with the restrictions that this configuration applies.

To complete the configuration, you select the label setting to change the label at the end of the retention period, and choose a label that retains content for five years after the content was created, and doesn't mark the item as a record. 

With these concatenated settings, users will be able to delete the item from their app after three years but it remains accessible for eDiscovery searches for five years.

##### Considerations for the relabeling option

- You can't relabel a regulatory record but the replacement label can be configured to mark the content as a regulatory record.

- You won't be able to delete a retention label that's selected as a replacement label.

- You can choose a replacement label that's configured to apply another replacement label. There's no limit to the number of replacement labels an item can have.

- If the replacement label marks the item as a record or regulatory record but can't be applied because the file is currently checked out, the relabel process is retried when the file is checked back in again, or checkout is discarded.

- A replacement label is visible to users in Outlook only when that label is included in a published label policy for the same location, or it's configured for delete-only.

##### Configuration paths for relabeling

The option to relabel at the end of the retention period has two configuration paths when you create a retention label:

- If you need to initially retain content with the primary label (most typical): On the **Define label settings** page, select **Retain items indefinitely or for a specific period** and specify the retention period. Then on the **Choose what happens after the retention period** page, select **Change the label** > **Choose a replacement label**.

- If you don't need to initially retain content with the primary label: On the **Define label settings** page, select **Enforce actions after a specific period**, specify the retention period, and then select **Change the label** > **Choose a replacement label**.

In both cases, the replacement label must already be created but doesn't need to be included in an existing label policy.

![Change the label option after the retention period.](../media/change-label-option.png)

Alternatively, disposition reviewers can manually select a replacement label as part of the [disposition review process](disposition.md#disposition-reviews) if the label setting **Start a disposition review** is selected on this **Choose what happens after the retention period** page.

### Deleting content that's older than a specific age

Retention settings can retain and then delete items, or delete old items without retaining them.

In both cases, if your retention settings delete items, it's important to understand that the time period you specify isn't calculated from the time the policy was assigned, but according to the start of the retention period specified. For example, from the time when the item was created or modified, or labeled.

For this reason, first consider the age of the existing content and how the settings might impact that content. Consider communicating your chosen settings to your users and help desk before the settings are applied to content, which gives them time to assess the possible impact.

### A policy that applies to entire locations

When you choose locations, except for Skype for Business, the default setting is **All** when the status of the location is **On**.

When a retention policy applies to any combination of entire locations, there is no limit to the number of recipients, sites, accounts, groups, etc., that the policy can include.

For example, if a policy includes all Exchange email and all SharePoint sites, all sites and recipients will be included, no matter how many. And for Exchange, any new mailbox created after the policy is applied will automatically inherit the policy.

### A policy with specific inclusions or exclusions

Be aware that if you use the optional configuration to scope your retention settings to specific users, specific Microsoft 365 groups, or specific sites, there are some limits per policy to be aware of. For more information, see [Limits for retention policies and retention label policies](retention-limits.md). 

To use the optional configuration to scope your retention settings, make sure the **Status** of that location is **On**, and then use the links to include or exclude specific users, Microsoft 365 groups, or sites.

> [!WARNING]
> If you configure includes and then remove the last one, the configuration reverts to **All** for the location.  Make sure this is the configuration that you intend before you save the policy.
>
> For example, if you specify one SharePoint site to include in your retention policy that's configured to delete data, and then remove the single site, by default all SharePoint sites will then be subject to the retention policy that permanently deletes data. The same applies to includes for Exchange recipients, OneDrive accounts, Teams chat users etc.
>
> In this scenario, toggle the location off if you don't want the **All** setting for the location to be subject to the retention policy. Alternatively, specify excludes to be exempt from the policy.

## Updating policies for retention

Some settings can't be changed after a policy for retention is created and saved, which include:
- The policy name and the retention settings except the retention period and when to start the retention period.

If you edit a retention policy and items are already subject to the original settings in your retention policy, your updated settings will be automatically applied to these items in addition to items that are newly identified.

Usually this update is fairly quick but can take several days. When the policy replication across your Microsoft 365 locations is complete, you'll see the status of the retention policy in the Microsoft Purview compliance portal change from **On (Pending)** to **On (Success)**.

## Locking the policy to prevent changes

If you need to ensure that no one can turn off the policy, delete the policy, or make it less restrictive, see [Use Preservation Lock to restrict changes to retention policies and retention label policies](retention-preservation-lock.md).
