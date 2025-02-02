---
title: "Limit sharing in Microsoft 365"
ms.author: ruihu
author: maggierui
manager: jtremper
ms.date: 12/15/2023
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.collection: 
- highpri
- Tier1
- SPO_Content
- M365-collaboration
- m365solution-3tiersprotection
- m365solution-securecollab
- m365initiative-externalcollab
search.appverid:
- SPO160
- MET150
f1.keywords: NOCSH
ms.custom: 
- admindeeplinkMAC
- admindeeplinkTEAMS
- admindeeplinkSPO
ms.localizationpriority: medium
recommendations: false
description: "Learn about the options to limit or disable sharing in Microsoft 365."
---

# Limit sharing in Microsoft 365

While you can't disable internal sharing entirely or remove the Share button from sites, there are various ways that you can limit sharing in Microsoft 365 to meet the needs of your organization.

The methods of sharing files are listed in the following table. Select the link in the **Sharing method** column for detailed information.

|Sharing method|Description|Limiting options|
|:-------------|:----------|:-------------|
|[Microsoft 365 group or team](#microsoft-365-group-or-team)|People granted access to a Microsoft Teams team or Microsoft 365 group have edit access to files in the associated SharePoint site.|If the group or team is private, sharing invitations to join the team go to the owner for approval. Admins can disable guest access or use sensitivity labels to prevent access by people from outside the organization. Admins can also limit sharing to members of the Microsoft 365 group or team.|
|[SharePoint site](#sharepoint-site)|People can be granted Owner, Member, or Visitor access to a SharePoint site and will have that level of access to files in the site.|Site permissions can be restricted so that only site owners can share the site. Admins can limit site access and sharing to members of a security group, set a site to read-only, or block access entirely.|
|[Sharing with specific people](#sharing-with-specific-people)|Site members and people with edit permissions can give direct permissions to files and folders or share them by using *Specific people* links.|Site permissions can be restricted so that only site owners can share files and folders. In this case, direct access and *Specific people* link sharing by site members goes to site owner for approval.|
|[OneDrive sharing](#onedrive-sharing)|OneDrive owners can share files and folders with others.|Admins can limit access to OneDrive overall to people in a security group or limit access to shared files and folders in a specific OneDrive to people in a security group.|
|[SharePoint and OneDrive guest sharing](#sharepoint-and-onedrive-guest-sharing)|SharePoint site owners and members and OneDrive owners can share files and folders with people outside the organization.|Guest sharing can be disabled for the entire organization or for individual sites.|
|[*People in your organization* sharing links](#people-in-your-organization-sharing-links)|SharePoint site owners and members can share files using *People in your organization* links, which will work for anyone inside the organization.|*People in your organization* links can be disabled at the site level.|
|[Create sites, groups, and teams](#create-sites-groups-and-teams)|By default, users can create new sites, groups, and teams from which they can share content.|Admins can restrict who can create sites, groups, and teams.|
|[Email](#email)|People with access to a file can send it to others via email.|Admins can encrypt files by using sensitivity labels to prevent them being shared with unauthorized people.|
|[Download or file copy](#download-or-file-copy)|People with access to a file can download or copy it and share it with others outside the scope of Microsoft 365.|Admins can encrypt files by using sensitivity labels to prevent them being shared with unauthorized people.|

You can also restrict the conditions under which people access shared content. See [conditional access](#conditional-access) later in this article for more information.

While you can use the admin controls described in this article to limit sharing in your organization, we highly recommend that you consider using the security and compliance features available in Microsoft 365 to create a secure sharing environment. See [File collaboration in SharePoint with Microsoft 365](/sharepoint/deploy-file-collaboration) and [Configure Teams with three tiers of protection](configure-teams-three-tiers-protection.md) for information.

To understand how sharing is being used in your organization, use [reports on file and folder sharing](/sharepoint/sharing-reports) and [data access governance reports](/sharepoint/data-access-governance-reports).

## Microsoft 365 group or team

If you want to limit sharing in a Microsoft 365 group or Microsoft Teams team, it's important to make the group or team private. People inside your organization can join a public group or team anytime. Unless the group or team is private, there's no way to limit sharing of the team or its files within the organization.

### Turn guest sharing off

If you want to prevent guest access in Teams, you can turn off guest sharing in the Teams admin center.

To turn off guest sharing for Teams
1. In the Teams admin center, expand **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2173122" target="_blank">**Guest access** tab</a>.
2. Turn off **Guest access**.
3. Select **Save**.

If you want to prevent guest access in Microsoft 365 Groups, you can turn off the groups guest access settings in the Microsoft 365 admin center.

To turn off guest sharing in Microsoft 365 Groups
1. In the Microsoft 365 admin center, select **Settings** > **Org Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">**Services** tab</a>.
2. Select **Microsoft 365 Groups**.
3. Clear the **Let group owners add people outside your organization to Microsoft 365 Groups as guests** and **Let guest group members access group content** check boxes.
4. Select **Save**.

    ![Screenshot of Microsoft 365 Groups sharing settings in the Microsoft 365 admin center.](../media/office-365-groups-guest-settings-off.png)

> [!NOTE]
> If you want to prevent guest sharing for a particular group or team, you can do so by using [Microsoft PowerShell](per-group-guest-access.md) or [sensitivity labels](/purview/sensitivity-labels-teams-groups-sites).

### Limit guest sharing to specified domains

You can limit guest sharing to users from specific domains by allowing or blocking domains in Microsoft Entra ID. This also affects guest sharing in SharePoint if you have enabled [SharePoint and OneDrive integration with Microsoft Entra B2B](/sharepoint/sharepoint-azureb2b-integration-preview).

To allow sharing invitations only from specified domains
1. In the [Microsoft Entra admin center](https://entra.microsoft.com), expand **External identities**, and then choose **External collaboration settings**.
1. Under **Collaboration restrictions**, select **Deny invitations to the specified domains** or **Allow invitations only to the specified domains**, and then type the domains that you want to use.
1. Select **Save**.

    ![Screenshot of collaboration restrictions settings in Microsoft Entra ID.](../media/azure-ad-allow-only-specified-domains.png)

You can also use **Cross-tenant access settings** in Microsoft Entra ID to limit sharing to specific organizations. See [Limit guest sharing to specific organizations](limit-guest-sharing-to-specific-organization.md) for more information.

### Limit access to members of the team or group

You can restrict access to SharePoint sites and content to users who are members of the Microsoft 365 group or team. Users outside the group or team won't have access to site content even if they have a sharing link. For more information, see [Restrict SharePoint site access to members of a group](/sharepoint/restricted-access-control).

## SharePoint site

You can limit SharePoint site sharing to site owners only. This prevents site members from sharing the site. Keep in mind that if the site is connected to a Microsoft 365 group, group members can invite others to the group and those users will have site access.

To limit site sharing to owners
1. In the site, select the gear icon, and then select **Site permissions**.
2. Under **Sharing settings**, select **Change how members can share**.
3. Select **Site owners and members, and people with Edit permissions can share files and folders, but only site owners can share the site**.
4. Select **Save**.

    ![Screenshot of sharing permissions settings in a SharePoint site.](../media/sharepoint-site-sharing-permissions-level-two.png)

You can prevent users who aren't members of the site from requesting access by turning off access requests.

To turn off access requests
1. In the site, select the gear icon, and then select **Site permissions**.
2. Under **Sharing settings**, select **Change how members can share**.
3. Turn off **Allow access requests**, and then select **Save**.

You can limit site sharing to specific domains by allowing or blocking domains for the site.

To limit site sharing by domain

1. In the SharePoint admin center, under **Sites**, select <a href="https://go.microsoft.com/fwlink/?linkid=2185220" target="_blank">**Active sites**</a>.
2. Select the site that you want to configure.
3. On the **Settings** tab, under **External file sharing** select **More sharing settings**.
4. Under **Advanced settings for external sharing**, select the **Limit sharing by domain**.
5. Add the domains that you want to allow or block, and then select **Save**.
6. Select **Save**.

    ![Screenshot of allowed domains site-level setting.](../media/limit-site-sharing-by-domain.png)

### Restrict access to members of a security group

You can restrict access to a SharePoint site and its contents to members of a security group. Users outside the group won't have access to site content even if they have a sharing link. For more information, see [Restrict SharePoint site access to members of a group](/sharepoint/restricted-access-control).

### Block access to a site

You can block access to a site or make a site read-only by changing the lock state of the site. For details, see [Lock and unlock sites](/sharepoint/manage-lock-status).

### Permissions inheritance

While not recommended, you can use [SharePoint permissions inheritance](/sharepoint/what-is-permissions-inheritance) to customize access levels to sites and subsites.

## Sharing with specific people

if you want to limit the sharing of a site or its contents, you can configure the site to only allow site owners to share files, folders, and the site. When this is configured, site members' attempts to share files or folders by using *Specific people* links go to the site owner for approval.

To limit site, file, and folder sharing to owners
1. In the site, select the gear icon, and then select **Site permissions**.
2. Under **Sharing settings**, select **Change how members can share**.
3. Select **Only site owners can share files, folders, and the site**.
4. Select **Save**.

    ![Screenshot of sharing permissions settings in a SharePoint site set to owners-only.](../media/sharepoint-site-only-site-owners-can-share.png)

## OneDrive sharing

Admins can limit access to OneDrive overall to people in a security group or limit access to shared files and folders in a specific OneDrive to people in a security group.

You can restrict access and sharing of OneDrive content throughout your organization to users in a security group. Even if other users outside of these security groups are licensed for OneDrive, they won’t have access to their own OneDrive or any shared OneDrive content when this policy is in effect. For more information, see [Restrict OneDrive access by security group](/sharepoint/limit-access).

You can restrict access to an individual user's OneDrive content to users in a security group by using a OneDrive access restriction policy. Users not in the specified group can't access the content, even if they had prior permissions or shared link. For more information, see [Restrict access to a user's OneDrive content to people in a group](/sharepoint/onedrive-site-access-restriction).

## SharePoint and OneDrive guest sharing

If you want to prevent sharing SharePoint or OneDrive files and folders with people outside your organization, you can turn off guest sharing for the entire organization or for an individual site.

To turn off SharePoint guest sharing for your organization

1. In the SharePoint admin center, under **Policies**, select <a href="https://go.microsoft.com/fwlink/?linkid=2185222" target="_blank">**Sharing**</a>.
2. Under **External sharing**, drag the SharePoint slider down to **Only people in your organization**. (The OneDrive slider is dependent on SharePoint and will also be set to **Only people in your organization**.)
3. Select **Save**.

    ![Screenshot of SharePoint organization-level sharing settings set to Anyone.](../media/sharepoint-tenant-sharing-off.png)


To turn off guest sharing for a site
1. In the SharePoint admin center, under **Sites**, select <a href="https://go.microsoft.com/fwlink/?linkid=2185220" target="_blank">**Active sites**</a>.
2. Select the site that you want to configure.
3. On the **Settings** tab, under **External file sharing**, choose **Only people in your organization** from the dropdown list.
1. Select **Save**.

    ![Screenshot of SharePoint site-level sharing settings set to Only people in your organization.](../media/sharepoint-site-external-sharing-settings-off.png)

You can turn off guest sharing for an individual OneDrive by selecting the user in the Microsoft 365 admin center and selecting **Manage external sharing** on the **OneDrive** tab.

If you would like to allow sharing with people outside your organization but you want to make sure that everyone authenticates, you can disable *Anyone* (anonymous sharing) links for the entire organization or for an individual site.

To turn off *Anyone* links at the organization level

1. In the SharePoint admin center, under **Policies**, select <a href="https://go.microsoft.com/fwlink/?linkid=2185222" target="_blank">**Sharing**</a>.
2. Under **External sharing**, drag the SharePoint slider down to **New and existing guests**. (The OneDrive slider is dependent on SharePoint and will also be set to **New and existing guests**.)
3. Select **Save**.

    ![Screenshot of SharePoint organization-level sharing settings set to New and existing guests.](../media/sharepoint-guest-sharing-new-existing-guests.png)

To turn off *Anyone* links for a site

1. In the SharePoint admin center, under **Sites**, select <a href="https://go.microsoft.com/fwlink/?linkid=2185220" target="_blank">**Active sites**</a>.
2. Select the site that you want to configure.
3. On the **Settings** tab, under **External file sharing**, choose **New and existing guests** from the dropdown list.

    ![Screenshot of SharePoint site-level sharing settings set to New and existing settings.](../media/sharepoint-site-external-sharing-settings-new-existing-guests.png)

## *People in your organization* sharing links

By default, members of a site can share files and folders with other people in your organization by using a *People in your organization* link. You can disable *People in your organization* links by using PowerShell:

```powershell
Set-SPOSite -Identity <site> -DisableCompanyWideSharingLinks Disabled
```

For example:

```powershell
Set-SPOSite -Identity https://contoso.sharepoint.com -DisableCompanyWideSharingLinks Disabled
```

Note that if you disable *People in your organization* links, people sharing files in the site may need to use *Specific people* links, which can be shared with a maximum of 50 people.

## Create sites, groups, and teams

By default, users can create new sites, groups, and teams from which they may be able to share content (depending on your sharing settings). You can restrict who can create sites, groups, and teams. See the following references:

- [Manage site creation in SharePoint](/sharepoint/manage-site-creation)
- [Manage who can create Microsoft 365 Groups](./manage-creation-of-groups.md)

> [!NOTE]
> Restricting group creation restricts team creation.

## Email

You can prevent unwanted sharing of emails by using encryption. This prevents emails being forwarded or otherwise shared with unauthorized users. Email encryption can be enabled by using sensitivity labels. See [Restrict access to content by using sensitivity labels to apply encryption](/purview/encryption-sensitivity-labels) for details.

## Download or file copy

Users who have access to files and folders in Microsoft 365 can download files and copy them to external media. To reduce the risk of unwanted file sharing, you can encrypt the content by using sensitivity labels. Users can also [block file download when they share files](https://support.microsoft.com/office/6051184b-62ac-4149-b874-13dcd40ef91e)

## Conditional access

Microsoft Entra Conditional Access provides options to limit or prevent sharing with people based on network location, device health, sign-in risk, and other factors. See [What is Conditional Access?](/entra/identity/conditional-access/overview).

SharePoint provides direct integration with Microsoft Entra Conditional Access for both unmanaged devices and network location. See the following references for details:

- [SharePoint and OneDrive unmanaged device access controls](/sharepoint/control-access-from-unmanaged-devices)
- [Control access to SharePoint and OneDrive data based on network location](/sharepoint/control-access-based-on-network-location)

## Related articles

[Limit who can invite guests](limit-who-can-invite-guests.md)

[Microsoft 365 guest sharing settings reference](microsoft-365-guest-settings.md)
