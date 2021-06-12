---
title: "Use sensitivity labels with Microsoft Teams, Microsoft 365 groups, and SharePoint sites"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Use sensitivity labels to protect content in SharePoint and Microsoft Teams sites, and Microsoft 365 groups."
---

# Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

In addition to using [sensitivity labels](sensitivity-labels.md) to classify and protect documents and emails, you can also use sensitivity labels to protect content in the following containers: Microsoft Teams sites, Microsoft 365 groups ([formerly Office 365 groups](https://techcommunity.microsoft.com/t5/microsoft-365-blog/office-365-groups-will-become-microsoft-365-groups/ba-p/1303601)), and SharePoint sites. For this container-level classification and protection, use the following label settings:

- Privacy (public or private) of teams sites and Microsoft 365 groups
- External user access
- External sharing from SharePoint sites
- Access from unmanaged devices
- Authentication contexts (in preview)

> [!IMPORTANT]
> The settings for unmanaged devices and authentication contexts work in conjunction with Azure Active Directory Conditional Access. You must configure this dependent feature if you want to use a sensitivity label for these settings. Additional information is included in the instructions that follow.

When you apply this sensitivity label to a supported container, the label automatically applies the classification and configured protection settings to the site or group.

Content in these containers however, do not inherit the labels for the classification or settings for files and emails, such as visual markings and encryption. So that users can label their documents in SharePoint sites or team sites, make sure you've [enabled sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).

> [!NOTE]
> Sensitivity labels for containers aren't supported with Office 365 Content Delivery Networks (CDNs).

## Using sensitivity labels for Microsoft Teams, Microsoft 365 groups, and SharePoint sites

Before you enable sensitivity labels for containers and configure sensitivity labels for the new settings, users can see and apply sensitivity labels in their apps. For example, from Word:

![A sensitivity label displayed in the Word desktop app](../media/sensitivity-label-word.png)

After you enable and configure sensitivity labels for containers, users can additionally see and apply sensitivity labels to Microsoft team sites, Microsoft 365 groups, and SharePoint sites. For example, when you create a new team site from SharePoint:

![A sensitivity label when creating a team site from SharePoint](../media/sensitivity-labels-new-team-site.png)

## How to enable sensitivity labels for containers and synchronize labels

If you haven't yet enabled sensitivity labels for containers, do the following set of steps as a one-time procedure:

1. Because this feature uses Azure AD functionality, follow the instructions from the Azure AD documentation to enable sensitivity label support: [Assign sensitivity labels to Microsoft 365 groups in Azure Active Directory](/azure/active-directory/users-groups-roles/groups-assign-sensitivity-labels).

2. You now need to synchronize your sensitivity labels to Azure AD. First, [connect to Security & Compliance Center PowerShell](/powershell/exchange/office-365-scc/connect-to-scc-powershell/connect-to-scc-powershell).

   For example, in a PowerShell session that you run as administrator, sign in with a global administrator account.

3. Then run the following command to ensure your sensitivity labels can be used with Microsoft 365 groups:

    ```powershell
    Execute-AzureAdLabelSync
    ```

## How to configure groups and site settings

After sensitivity labels are enabled for containers as described in the previous section, you can then configure protection settings for groups and sites in the sensitivity labeling wizard. Until sensitivity labels are enabled for containers, the settings are visible in the wizard but you can't configure them.

1. Follow the general instructions to [create or edit a sensitivity label](create-sensitivity-labels.md#create-and-configure-sensitivity-labels) and make sure you select **Groups & sites** for the label's scope: 
    
    ![Sensitivity label scope options for files and emails](../media/groupsandsites-scope-options-sensitivity-label.png)
    
    When only this scope is selected for the label, the label won't be displayed in Office apps that support sensitivity labels and can't be applied to files and emails. Having this separation of labels can be helpful for both users and administrators, but can also add to the complexity of your label deployment.
    
    For example, you need to carefully review your [label ordering](sensitivity-labels.md#label-priority-order-matters) because SharePoint detects when a labeled document is uploaded to a labeled site. In this scenario, an audit event and email are automatically generated when the document has a higher priority sensitivity label than the site's label. For more information, see the [Auditing sensitivity label activities](#auditing-sensitivity-label-activities) section on this page. 

2. Then, on the **Define protection settings for groups and sites** page, select one or both of the available options:
    
    - **Privacy and external user access settings** to configure the **Privacy** and **External users access** settings. 
    - **External sharing and Conditional Access settings** to configure the **Control external sharing from labeled SharePoint sites** and **Use Azure AD Conditional Access to protect labeled SharePoint sites** setting.

3. If you selected **Privacy and external user access settings**, now configure the following settings:
    
    - **Privacy**: Keep the default of **Public** if you want anyone in your organization to access the team site or group where this label is applied.
        
        Select **Private** if you want access to be restricted to only approved members in your organization.
        
        Select **None** when you want to protect content in the container by using the sensitivity label, but still let users configure the privacy setting themselves.
        
        The settings of **Public** or **Private** set and lock the privacy setting when you apply this label to the container. Your chosen setting replaces any previous privacy setting that might be configured for the team or group, and locks the privacy value so it can be changed only by first removing the sensitivity label from the container. After you remove the sensitivity label, the privacy setting from the label remains and users can now change it again.
    
    - **External user access**: Control whether the group owner can [add guests to the group](/office365/admin/create-groups/manage-guest-access-in-groups).

4. If you selected **Device external sharing and device access settings**, now configure the following settings:
    
    - **Control external sharing from labeled SharePoint sites**: Select this option to then select either external sharing for anyone, new and existing guests, existing guests, or only people in your organization. For more information about this configuration and settings, see the SharePoint documentation, [Turn external sharing on or off for a site](/sharepoint/change-external-sharing-site).
    
    - **Use Azure AD Conditional Access to protect labeled SharePoint sites**: Select this option only if your organization has configured and is using [Azure Active Directory Conditional Access](/azure/active-directory/conditional-access/overview). Then, select one of the following settings:
    
        - **Determine whether users can access SharePoint sites from unmanaged devices**: This option uses the SharePoint feature that uses Azure AD Conditional Access to block or limit access to SharePoint and OneDrive content from unmanaged devices. For more information, see [Control access from unmanaged devices](/sharepoint/control-access-from-unmanaged-devices) from the SharePoint documentation. The option you specify for this label setting is the equivalent of running a PowerShell command for a site, as described in steps 3-5 from the [Block or limit access to a specific SharePoint site or OneDrive](/sharepoint/control-access-from-unmanaged-devices#block-or-limit-access-to-a-specific-sharepoint-site-or-onedrive) section from the SharePoint instructions.
            
            For additional configuration information, see [More information about the dependencies for the unmanaged devices option](#more-information-about-the-dependencies-for-the-unmanaged-devices-option) at the end of this section.
            
        - **Choose an existing authentication context**: Currently in preview, this option lets you enforce more stringent access conditions when users access SharePoint sites that have this label applied. These conditions are enforced when you select an existing authentication context that has been created and published for your organization's Conditional Access deployment. If users don't meet the configured conditions or if they use apps that don't support authentication contexts, they are denied access.
            
            For additional configuration information, see [More information about the dependencies for the authentication context option](#more-information-about-the-dependencies-for-the-authentication-context-option) at the end of this section.
            
            Examples for this label configuration:
            
             - You choose an authentication context that is configured to require [multi-factor authentication (MFA)](/azure/active-directory/conditional-access/untrusted-networks). This label is then applied to a SharePoint site that contains highly confidential items. As a result, when users from an untrusted network attempt to access a document in this site, they see the MFA prompt that they must complete before they can access the document.
             
             - You choose an authentication context that is configured for [terms of use (ToU) policies](/azure/active-directory/conditional-access/terms-of-use). This label is then applied to a SharePoint site that contains items that require a terms of use acceptance for legal or compliance reasons. As a result, when users attempt to access a document in this site, they see a terms of use document that they must accept before they can access the original document.

> [!IMPORTANT]
> Only these site and group settings take effect when you apply the label to a team, group, or site. If the [label's scope](sensitivity-labels.md#label-scopes) includes files and emails, other label settings such as encryption and content marking aren't applied to the content within the team, group, or site.

If your sensitivity label isn't already published, now publish it by [adding it to a sensitivity label policy](create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy). The users who are assigned a sensitivity label policy that includes this label will be able to select it for sites and groups.

##### More information about the dependencies for the unmanaged devices option

If you don't configure the dependent conditional access policy for SharePoint as documented in [Use app-enforced restrictions](/sharepoint/app-enforced-restrictions), the option you specify here will have no effect. Additionally, it will have no effect if it's less restrictive than a configured setting at the tenant level. If you have configured an organization-wide setting for unmanaged devices, choose a label setting that's either the same or more restrictive

For example, if your tenant is configured for **Allow limited, web-only access**, the label setting that allows full access will have no effect because it's less restrictive. For this tenant-level setting, choose the label setting to block access (more restrictive) or the label setting for limited access (the same as the tenant setting).

Because you can configure the SharePoint settings separately from the label configuration, there's no check in the sensitivity label wizard that the dependencies are in place. These dependencies can be configured after the label is created and published, and even after the label is applied. However, if the label is already applied, the label setting won't take effect until after the user next authenticates.

##### More information about the dependencies for the authentication context option

To display in the drop-down list for selection, authentication contexts must be created, configured, and published as part of your Azure Active Directory Condition Access configuration. For more information and instructions, see the [Configure authentication contexts](/azure/active-directory/conditional-access/concept-conditional-access-cloud-apps#configure-authentication-contexts) section from the Azure AD Conditional Access documentation.

Not all apps support authentication contexts. If a user with an unsupported app connects to the site that's configured for an authentication context, they see either an access denied message or they are prompted to authenticate but rejected. The apps that currently support authentication contexts:

- Office for the web, which includes Outlook for the web

- Microsoft Planner

- Microsoft 365 Apps for Word, Excel, and PowerPoint; minimum versions:
    - Windows: 2103
    - macOS: 16.45.1202
    - iOS: 2.48.303
    - Android: 16.0.13924.10000

- Microsoft 365 Apps for Outlook; minimum versions:
    - Windows: 2103
    - macOS: 16.45.1202
    - iOS: 4.2109.0
    - Android: 4.2025.1

- OneDrive sync app, minimum versions:
    - Windows: 21.002
    - macOS: 21.002
    - iOS: Rolling out in 12.30
    - Android: Not yet supported

Known limitations for this preview:

- This feature is still rolling out to some tenants. If the Conditional Access policy with your selected authentication context is not taking effect when a user accesses the site, you can use PowerShell to confirm that your configuration is correct and all prerequisites are met. You'll need to remove the sensitivity label from the site and then configure the site for the authentication context by using the [Set-SPOSite](/powershell/module/sharepoint-online/set-sposite) cmdlet from the current [SharePoint Online Management Shell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online). If this method works, wait a few more days before you try to apply the sensitivity label again.
    
    To test the authentication context by using PowerShell:
    
    ```powershell
    Set-SPOSite -Identity <site url> -ConditionalAccessPolicy AuthenticationContext -AuthenticationContextName "Name of authentication context"
    ```
    
    To remove the authentication context so you can try to apply the sensitivity label again:
    
    ```powershell
    Set-SPOSite -Identity <site url> -ConditionalAccessPolicy AuthenticationContext -AuthenticationContextName ""
    ```

- For the OneDrive sync app, supported for OneDrive only and not for other sites.

- The following features and apps might be incompatible with authentication contexts, so we encourage you to check that these continue to work after a user successfully accesses  a site by using an authentication context:
    
    - Workflows that use PowerApps or Power Automate
    - Third-party apps

## Sensitivity label management

Use the following guidance for when you create, modify, or delete sensitivity labels that are configured for sites and groups.

### Creating and publishing labels that are configured for sites and groups

When a new sensitivity label is created and published, it's visible for users in teams, groups, and sites within one hour. However, if you modify an existing label, allow up to 24 hours. Use the following guidance to publish a label for your users when that label is configured for site and group settings:

1. After you create and configure the sensitivity label, add this label to a label policy that applies to just a few test users.

2. Wait for the change to replicate:

   - New label: Wait for one hour.
   - Existing label: Wait for 24 hours.

3. After this wait period, use one of the test user accounts to create a team, Microsoft 365 group, or SharePoint site with the label that you created in step 1.

4. If there are no errors during this creation operation, you know it's safe to publish the label to all users in your tenant.

### Modifying published labels that are configured for sites and groups

As a best practice, don't change the site and group settings for a sensitivity label after the label has been applied to teams, groups, or sites. If you do, remember to wait for 24 hours for the changes to replicate to all containers that have the label applied.

In addition, if your changes include the **External users access** setting:

- The new setting applies to new users but not to existing users. For example, if this setting was previously selected and as a result, guest users accessed the site, these guest users can still access the site after this setting is cleared in the label configuration.

- The privacy settings for the group properties hiddenMembership and roleEnabled aren't updated.

### Deleting published labels that are configured for sites and groups

If you delete a sensitivity label that has the site and group settings enabled, and that label is included in one or more label policies, this action can result in creation failures for new teams, groups, and sites. To avoid this situation, use the following guidance:

1. Remove the sensitivity label from all label policies that include the label.

2. Wait for one hour.

3. After this wait period, try creating a team, group, or site and confirm that the label is no longer visible.

4. If the sensitivity label isn't visible, you can now safely delete the label.

## How to apply sensitivity labels to containers

You're now ready to apply the sensitivity label or labels to the following containers:

- [Microsoft 365 group in Azure AD](#apply-sensitivity-labels-to-microsoft-365-groups)
- [Microsoft Teams team site](#apply-a-sensitivity-label-to-a-new-team)
- [Microsoft 365 group in Outlook on the web](#apply-a-sensitivity-label-to-a-new-group-in-outlook-on-the-web)
- [SharePoint site](#apply-a-sensitivity-label-to-a-new-site)

You can use PowerShell if you need to [apply a sensitivity label to multiple sites](#use-powershell-to-apply-a-sensitivity-label-to-multiple-sites).

### Apply sensitivity labels to Microsoft 365 groups

You're now ready to apply the sensitivity label or labels to Microsoft 365 groups. Return to the Azure AD documentation for instructions:

- [Assign a label to a new group in Azure portal](/azure/active-directory/users-groups-roles/groups-assign-sensitivity-labels#assign-a-label-to-a-new-group-in-azure-portal)

- [Assign a label to an existing group in Azure portal](/azure/active-directory/users-groups-roles/groups-assign-sensitivity-labels#assign-a-label-to-an-existing-group-in-azure-portal)

- [Remove a label from an existing group in Azure portal](/azure/active-directory/users-groups-roles/groups-assign-sensitivity-labels#remove-a-label-from-an-existing-group-in-azure-portal).

### Apply a sensitivity label to a new team

Users can select sensitivity labels when they create new teams in Microsoft Teams. When they select the label from the **Sensitivity** dropdown, the privacy setting might change to reflect the label configuration. Depending on the external users access setting you selected for the label, users can or can't add people outside the organization to the team.

[Learn more about sensitivity labels for Teams](/microsoftteams/sensitivity-labels)

![The privacy setting when creating a new team](../media/privacy-setting-new-team.png)

After you create the team, the sensitivity label appears in the upper-right corner of all channels.

![The sensitivity label appears on the team](../media/privacy-setting-teams.png)

The service automatically applies the same sensitivity label to the Microsoft 365 group and the connected SharePoint team site.

### Apply a sensitivity label to a new group in Outlook on the web

In Outlook on the web, when you create a new group, you can select or change the **Sensitivity** option for published labels:

![Creating a group and selecting an option under Sensitivity](../media/sensitivity-label-new-group.png)

### Apply a sensitivity label to a new site

Admins and end users can select sensitivity labels when they [create modern team sites and communication sites](/sharepoint/create-site-collection), and expand **Advanced settings**:

![Creating a site and selecting an option under Sensitivity](../media/sensitivity-label-new-communication-site.png)

The dropdown box displays the label names for the selection, and the help icon displays all the label names with their tooltip, which can help users determine the correct label to apply.

When the label is applied, and users browse to the site, they see the name of the label and applied policies. For example, this site has been labeled as **Confidential**, and the privacy setting is set to **Private**:

![A site that has a sensitivity label applied](../media/sensitivity-label-site.png)

### Use PowerShell to apply a sensitivity label to multiple sites

You can use the [Set-SPOSite](/powershell/module/sharepoint-online/set-sposite) and [Set-SPOTenant](/powershell/module/sharepoint-online/set-spotenant) cmdlet with the *SensitivityLabel* parameter from the current [SharePoint Online Management Shell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online) to apply a sensitivity label to many sites. The sites can be any SharePoint site collection, or a OneDrive site.

Make sure you have version 16.0.19418.12000 or later of the SharePoint Online Management Shell.

1. Open a PowerShell session with the **Run as Administrator** option.

2. If you don't know your label GUID: [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell) and get the list of sensitivity labels and their GUIDs.

   ```powershell
   Get-Label |ft Name, Guid
   ```

3. Now [connect to SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online) and store your label GUID as a variable. For example:

   ```powershell
   $Id = [GUID]("e48058ea-98e8-4940-8db0-ba1310fd955e")
   ```

4. Create a new variable that identifies multiple sites that have an identifying string in common in their URL. For example:

   ```powershell
   $sites = Get-SPOSite -IncludePersonalSite $true -Limit all -Filter "Url -like 'documents"
   ```

5. Run the following command to apply the label to these sites. Using our examples:

   ```powershell
   $sites | ForEach-Object {Set-SPOTenant $_.url -SensitivityLabel $Id}
   ```

This series of commands lets you label multiple sites across your tenant with the same sensitivity label, which is why you use the Set-SPOTenant cmdlet, rather than the Set-SPOSite cmdlet that's for per-site configuration. However, use the Set-SPOSite cmdlet when you need to apply a different label to specific sites by repeating the following command for each of these sites: `Set-SPOSite -Identity <URL> -SensitivityLabel "<labelguid>"`

## View and manage sensitivity labels in the SharePoint admin center

To view, sort, and search the applied sensitivity labels, use the **Active sites** page in the new SharePoint admin center. You might need to first add the **Sensitivity** column:

![The Sensitivity column on the Active sites page](../media/manage-site-sensitivity-labels.png)

For more information about managing sites from the Active sites page, including how to add a column, see [Manage sites in the new SharePoint admin center](/sharepoint/manage-sites-in-new-admin-center).

You can also change and apply a label from this page:

1. Select the site name to open the details pane.

2. Select the **Policies** tab, and then select **Edit** for the **Sensitivity** setting.

3. From the **Edit sensitivity setting** pane, select the sensitivity label you want to apply to the site, and then select **Save**.

## Support for sensitivity labels

The following apps and services support sensitivity labels configured for sites and group settings:

- Admin centers:

  - SharePoint admin center
  - Azure Active Directory portal
  - Microsoft 365 admin center
  - Microsoft 365 compliance center, Microsoft 365 security center, Security & Compliance Center

- User apps and services:

  - SharePoint
  - Teams
  - Outlook on the web and for Windows, macOS, iOS, and Android
  - Forms
  - Stream
  - Planner 

The following apps and services don't currently support sensitivity labels configured for sites and group settings:

- Admin centers:

  - Teams admin center
  - Exchange admin center

- User apps and services:

  - Dynamics 365
  - Yammer
  - Project
  - Power BI

## Classic Azure AD group classification

Microsoft 365 no longer supports the old classifications for new Microsoft 365 groups and SharePoint sites after you enable sensitivity labels for containers. However, existing groups and sites that support sensitivity labels still display the old classification values until you convert them to use sensitivity labels.

As an example of how you might have used the old group classification for SharePoint, see [SharePoint "modern" sites classification](/sharepoint/dev/solution-guidance/modern-experience-site-classification).

These classifications were configured by using Azure AD PowerShell or the PnP Core library and defining values for the `ClassificationList` setting. If your tenant has classification values defined, they are shown when you run the following command from the [AzureADPreview PowerShell module](https://www.powershellgallery.com/packages/AzureADPreview):

```powershell
($setting["ClassificationList"])
```

To convert your old classifications to sensitivity labels, do one of the following:

- Use existing labels: Specify the label settings you want for sites and groups by editing existing sensitivity labels that are already published.

- Create new labels: Specify the label settings you want for sites and groups by creating and publishing new sensitivity labels that have the same names as your existing classifications.

Then:

1. Use PowerShell to apply the sensitivity labels to existing Microsoft 365 groups and SharePoint sites by using name mapping. See the next section for instructions.

2. Remove the old classifications from the existing groups and sites.

Although you can't prevent users from creating new groups in apps and services that don't yet support sensitivity labels, you can run a recurring PowerShell script to look for new groups that users have created with the old classifications, and convert these to use sensitivity labels.

To help you manage the coexistence of sensitivity labels and Azure AD classifications for sites and groups, see [Azure Active Directory classification and sensitivity labels for Microsoft 365 groups](migrate-aad-classification-sensitivity-labels.md).

### Use PowerShell to convert classifications for Microsoft 365 groups to sensitivity labels

1. First, [connect to Security & Compliance Center PowerShell](/powershell/exchange/office-365-scc/connect-to-scc-powershell/connect-to-scc-powershell).

   For example, in a PowerShell session that you run as administrator, sign in with a global administrator account:

2. Get the list of sensitivity labels and their GUIDs by using the [Get-Label](/powershell/module/exchange/get-label) cmdlet:

   ```powershell
   Get-Label |ft Name, Guid
   ```

3. Make a note of the GUIDs for the sensitivity labels you want to apply to your Microsoft 365 groups.

4. Now [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) in a separate Windows PowerShell window.

5. Use the following command as an example to get the list of groups that currently have the classification of "General":

   ```PowerShell
   $Groups= Get-UnifiedGroup | Where {$_.classification -eq "General"}
   ```

6. For each group, add the new sensitivity label GUID. For example:

    ```PowerShell
    foreach ($g in $groups)
    {Set-UnifiedGroup -Identity $g.Identity -SensitivityLabelId "457fa763-7c59-461c-b402-ad1ac6b703cc"}
    ```

7. Repeat steps 5 and 6 for your remaining group classifications.

## Auditing sensitivity label activities

> [!IMPORTANT]
> If you use label separation by selecting just the **Groups & sites** scope for labels that protect containers: Because of the **Detected document sensitivity mismatch** audit event and email described in this section, consider [ordering these labels](sensitivity-labels.md#label-priority-order-matters) before labels that have a scope for **Files & emails**. 

If somebody uploads a document to a site that's protected with a sensitivity label and their document has a [higher priority](sensitivity-labels.md#label-priority-order-matters) sensitivity label than the sensitivity label applied to the site, this action isn't blocked. For example, you've applied the **General** label to a SharePoint site, and somebody uploads to this site a document labeled **Confidential**. Because a sensitivity label with a higher priority identifies content that is more sensitivity than content that has a lower priority order, this situation could be a security concern.

Although the action isn't blocked, it is audited and by default, automatically generates an email to the person who uploaded the document and the site administrator. As a result, both the user and administrators can identify documents that have this misalignment of label priority and take action if needed. For example, delete or move the uploaded document from the site.

It wouldn't be a security concern if the document has a lower priority sensitivity label than the sensitivity label applied to the site. For example, a document labeled **General** is uploaded to a site labeled **Confidential**. In this scenario, an auditing event and email aren't generated.

To search the audit log for this event, look for **Detected document sensitivity mismatch** from the **File and page activities** category.

The automatically generated email has the subject **Incompatible sensitivity label detected** and the email message explains the labeling mismatch with a link to the uploaded document and site. It also contains a documentation link that explains how users can change the sensitivity label. Currently, these automated emails cannot be disabled or customized.

To prevent this automatically generated email, use the following PowerShell command from [Set-SPOSite](/powershell/module/sharepoint-online/set-sposite):

```PowerShell
Set-SPOTenant -BlockSendLabelMismatchEmail $True
```

When somebody adds or removes a sensitivity label to or from a site or group, these activities are also audited but without automatically generating an email.

All these auditing events can be found in the [Sensitivity label activities](search-the-audit-log-in-security-and-compliance.md#sensitivity-label-activities) category. For instructions to search the audit log, see [Search the audit log in the Security & Compliance Center](search-the-audit-log-in-security-and-compliance.md).

## How to disable sensitivity labels for containers

You can turn off sensitivity labels for Microsoft Teams, Microsoft 365 groups, and SharePoint sites by using the same instructions from [Enable sensitivity label support in PowerShell](/azure/active-directory/users-groups-roles/groups-assign-sensitivity-labels#enable-sensitivity-label-support-in-powershell). However, to disable the feature, in step 5, specify `$setting["EnableMIPLabels"] = "False"`.

In addition to making all the settings unavailable for groups and sites when you create or edit sensitivity labels, this action reverts which property the containers use for their configuration. Enabling sensitivity labels for Microsoft Teams, Microsoft 365 groups, and SharePoint sites switches the property used from **Classification** (used for [Azure AD group classification](#classic-azure-ad-group-classification)) to **Sensitivity**. When you disable sensitivity labels for containers, the containers ignore the Sensitivity property and use the Classification property again.

This means that any label settings from sites and groups previously applied to containers won't be enforced, and containers no longer display the labels.

If these containers have Azure AD classification values applied to them, the containers revert to using the classifications again. Be aware that any new sites or groups that were created after enabling the feature won't display a label or have a classification. For these containers, and any new containers, you can now apply classification values. For more information, see [SharePoint "modern" sites classification](/sharepoint/dev/solution-guidance/modern-experience-site-classification) and [Create classifications for Office groups in your organization](../enterprise/manage-microsoft-365-groups-with-powershell.md).

## Additional resources

See the webinar recording and answered questions for [Using Sensitivity labels with Microsoft Teams, O365 Groups and SharePoint Online sites](https://techcommunity.microsoft.com/t5/security-privacy-and-compliance/using-sensitivity-labels-with-microsoft-teams-o365-groups-and/ba-p/1221885#M1380).

This webinar was recorded when the feature was still in preview, so you might notice some discrepancies in the UI. However, the information for this feature is still accurate, with any new capabilities documented on this page.