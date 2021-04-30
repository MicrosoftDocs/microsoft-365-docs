---
title: "Configure a team with security isolation"
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
- m365solution-3tiersprotection
- m365solution-securecollab
ms.custom:
- Ent_Solutions
description: "Learn how to create a team with a unique sensitivity label for security."
---

# Configure a team with security isolation

This article provides you with recommendations and steps to configure a private team in Microsoft Teams and use a unique sensitivity label to encrypt files so that only team members can decrypt them.

Beyond the private access, this article describes how to configure the associated SharePoint site, which you can access from the **Files** section of a team channel, for the additional security needed to store highly regulated data.

The elements of configuration for a team with security isolation are:

- A private team
- Additional security on the associated SharePoint site for the team that:
  - Prevents members of the site from sharing the site with others.
  - Prevents non-members of the site from requesting access to the site.
- A sensitivity label specifically for this team that:
    - Prevents access to SharePoint content from unmanaged devices
    - Allows or denies guest access to the team, depending on your requirements
    - Encrypts documents to which the label is applied

> [!IMPORTANT]
> Be sure you have enabled [sensitivity labels to protect content in Microsoft Teams, Office 365 groups, and SharePoint sites](../compliance/sensitivity-labels-teams-groups-sites.md) before you proceed with the steps in this article.

Watch this video for an overview of the deployment process.
<br>
<br>
> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4mGHf]

<a name="poster"></a>
For a 1-page summary of this scenario, see the [Microsoft Teams with security isolation poster](../downloads/team-security-isolation-poster.pdf).

[![Microsoft Teams with security isolation poster](../media/secure-teams-security-isolation/team-security-isolation-poster.png)](../downloads/team-security-isolation-poster.pdf)

You can also download this poster in [PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/team-security-isolation-poster.pdf) or [PowerPoint](https://download.microsoft.com/download/8/0/5/8057fc16-c044-40b6-a652-7ed555ba2895/team-security-isolation-poster.pptx) formats and print it on letter, legal, or tabloid (11 x 17) size paper.

Try this configuration in your own test lab environment with [these instructions](team-security-isolation-dev-test.md).

See how the Contoso Corporation used an isolated team for a top-secret project in [this case study](contoso-team-for-top-secret-project.md).

## Initial protections

To help protect access to the team and its underlying SharePoint site, review the following best practices:
- [Identity and device access policies](../security/office-365-security/identity-access-policies.md)
- [SharePoint Online access policies](../security/office-365-security/sharepoint-file-access-policies.md)
- [Deploy teams with baseline protection](configure-teams-baseline-protection.md)

## Guest sharing

Depending on the nature of your business, you may or may not want to enable guest sharing for this team. If you do plan to collaborate with people outside your organization in the team, enable guest sharing. 

For details about sharing with guests securely, see the following resources:

- [Limit accidental exposure to files when sharing with people outside your organization](./share-limit-accidental-exposure.md)
- [Create a secure guest sharing environment](./create-secure-guest-sharing-environment.md)

To allow or block guest sharing, we use a combination of a sensitivity label for the team and site-level sharing controls for the associated SharePoint site, both discussed later.

## Create a private team

Since we are creating a sensitivity label specifically for this team, the next step is to create the team. If you have an existing team, you can use that.

To create a team for sensitive information
1. In Teams, click **Teams** on the left side of the app, then click **Join or create a team** at the bottom of the teams list.
2. Click **Create team** (first card, top left corner).
3. Choose **Build a team from scratch**.
4. In the **Sensitivity** list, keep the default.
5. Under **Privacy**, click **Private**.
6. Type a name for the team that is related to your sensitive project. For example, **Project Saturn**.
7. Click **Create**.
8. Add users to the team, and then click **Close**.

## Private channel settings

We recommend restricting creating private channels to team owners.

To restrict private channel creation
1. In the team, click **More options**, and then click **Manage team**.
2. On the **Settings** tab, expand **Member permissions**.
3. Clear the **Allow members to create private channels** check box.

You can also use [teams policies](/MicrosoftTeams/teams-policies) to control who can create private channels.

## Create a sensitivity label

To configure a team for security isolation, we'll be using a sensitivity label created specifically for this team. This label is used at the team level to control guest sharing and to block access from unmanaged devices. It can also be used to classify and encrypt individual files in the team so that only team owners and members can open them.

If you have an internal partner or stakeholder group who should be able to view encrypted documents but not edit them, you can add them to the label with view-only permissions. You can then add these people to the team's SharePoint site with Reader permissions, and they will have read-only access to the site where the documents are kept, but not the team itself.


To create a sensitivity label
1. Open the [Microsoft 365 compliance center](https://compliance.microsoft.com).
2. Under **Solutions**, click **Information protection**.
3. Click **Create a label**.
4. Give the label a name. We suggest naming it after the team that you'll be using it with.
5. Add a display name and description, and then click **Next**.
6. On the **Define the scope for this label page**, select **Files & emails** and **Groups & sites** and click **Next**.
7. On the **Choose protection settings for files and emails** page, select **Encrypt files and emails**, and then click **Next**.
8. On the **Encryption** page, choose **Configure encryption settings**.
9. Click **Add users or groups**, select the team that you created, and then click **Add**
10. Click **Choose permissions**.
11. Choose **Co-Author** from the dropdown list, and then click **Save**.
12. If you want to include users or groups with read-only access to files with the label:
    1. Click **Assign permissions**.
    1. Click **Add users or groups**, select the users or groups that you want to add, and then click **Add**.
    1. Click **Choose permissions**.
    1. Choose **Viewer** from the dropdown list, and then click **Save**.
13.  Click **Save**, and then click **Next**.
14. On the *Auto-labeling for files and emails** page, click **Next**.
15. On the **Define protection settings for groups and sites** page, select **Privacy and external user access settings** and **Device access and external sharing settings** and click **Next**.
16. On the **Define privacy and external user access settings** page, under **Privacy**, select the **Private** option.
17. If you want to allow guest access, under **External user access**, select **Let Microsoft 365 Group owners add people outside your organization to the group as guests**.
18. Click **Next**.
19. On the **Define external sharing and device access settings** page, select **Control external sharing from labeled SharePoint sites**.
20. Under **Content can be shared with**, choose **New and existing guests** if you're allowing guest access or **Only people in your organization** if not.
21. Under **Access from unmanaged devices**, choose **Block access**.
22. Click **Next**.
23. On the **Auto-labeling for database columns** page, click **Next**.
24. Click **Create label**, and then click **Done**.

Once you've created the label, you need to publish it to the users who will use it. In this case, we'll make the label available only to people in the team.

To publish a sensitivity label
1. In the Microsoft 365 compliance center, on the **Information protection** page, choose the **Label policies** tab.
2. Click **Publish labels**.
3. On the **Choose sensitivity labels to publish** page, click **Choose sensitivity labels to publish**.
4. Select the label that you created, and then click **Add**.
5. Click **Next**.
6. On the Publish to users and groups page, click **Choose users and groups**.
7. Click **Add**, and then select the team that you created.
8. Click **Add**, and then click **Done**.
9. Click **Next**.
10. On the Policy settings page, select the **Users must provide justification to remove a label or lower classification label** check box, and then click **Next**.
11. Type a name for the policy, and then click **Next**.
12. Click **Submit** and then click **Done**.

## Apply the label to the team

Once the label has been published, you must apply it to the team in order for the guest sharing and managed devices settings to take effect. This is done in the SharePoint admin center. Note, it may take some time for the label to become available after it's been published.

To apply the sensitivity label
1. Open the [SharePoint admin center](https://admin.microsoft.com/sharepoint).
2. Under **Sites**, click **Active sites**.
3. Click the site that is associated with team.
4. On the **Policies** tab, under **Sensitivity**, click **Edit**.
5. Select the label that you created, and then click **Save**.

## SharePoint settings

There are three steps to do in SharePoint:

- Update the guest sharing settings for the site in the SharePoint admin center to match what you chose when you created the label, and update the default sharing link to *People with existing access*.
- Update the site sharing settings in the site itself to prevent members from sharing files, folders, or the site, and turn off access requests.
- If you added people or groups to the label with Viewer permissions, you can add them to the SharePoint site with Read permissions.

### SharePoint guest settings

The guest sharing setting that you chose when you created the label (which only affects team membership) should match the guest sharing settings for the associated SharePoint site as follows:

|Label setting|SharePoint site setting|
|:------------|:----------------------|
|**Let Office 365 group owners add people outside the organization to the group** selected|**New and existing guests** (default for new teams)|
|**Let Office 365 group owners add people outside the organization to the group** not selected|**Only people in your organization**|

We'll also update the default sharing link type to reduce the risk of accidentally sharing files and folders to a wider audience than intended.

To update site settings
1. Open the [SharePoint admin center](https://admin.microsoft.com/sharepoint).
2. Under **Sites**, click **Active sites**.
3. Click the site that is associated with team.
4. On the **Policies** tab, under **External sharing**, click **Edit**.
5. If you allowed guest sharing when you created the sensitive label, ensure that **New and existing guests** is selected. If you didn't allow sharing when you created the label, choose **Only people in your organization**.
6. Under Default sharing link type, clear the **Same as organization-level setting** check box, and select **People with existing access**.
7. Click **Save**.

#### Private channels

If you add private channels to the team, each private channel creates a new SharePoint site with the default sharing settings. These sites are not visible in the SharePoint admin center, so you must use the [Set-SPOSite](/powershell/module/sharepoint-online/set-sposite) PowerShell cmdlet with the following parameters to update the guest sharing settings:

- `-SharingCapability Disabled` to turn off guest sharing (it's on by default)
- `-DefaultSharingLinkType Internal` to change the default sharing link to *Specific people*

If you don't plan to use private channels with your team, consider turning off the ability for team members to create them under **Member permissions** in [team settings](https://support.microsoft.com/office/ce053b04-1b8e-4796-baa8-90dc427b3acc).

### Site sharing settings

To help ensure that the SharePoint site does not get shared with people who are not members of the team, we limit such sharing to owners. We also limit sharing of files and folders to team owners. This helps ensure that owners are aware whenever a file is shared with someone outside the team.

To configure owners-only site sharing
1. In Teams, navigate to the **General** tab of the team you want to update.
2. In the tool bar for the team, click **Files**.
3. Click the ellipsis, and then click **Open in SharePoint**.
4. In the tool bar of the underlying SharePoint site, click the settings icon, and then click **Site permissions**.
5. In the Site permissions pane, under **Sharing Settings**, click **Change sharing settings**.
6. Under **Sharing permissions**, choose **Only site owners can share files, folders, and the site**, and then click **Save**.

### Custom site permissions

If you added people with Viewer permissions to the sensitivity label, you can add them to the SharePoint site with Read access so they have easy access to the files.

To add users to the site
1. In the site, click the settings icon, and then click **Site permissions**.
2. Click **Invite people**, and then click **Share site only**.
3. Type the names of the users and groups that you want to invite.
4. For each person or group that you add, change their permissions from **Edit** to **Read**.
5. Choose if you want to send them an email with a link to the site.
6. Click **Add**.

## Additional protections

Microsoft 365 offers additional methods for securing your content. Consider if the following options would help improve security for your organization.

- Have your guests agree to a [terms of use](/azure/active-directory/conditional-access/terms-of-use).
- Configure a [session timeout policy](/azure/active-directory/conditional-access/howto-conditional-access-session-lifetime) for guests.
- Create [sensitive information types](../compliance/sensitive-information-type-learn-about.md) and use [data loss protection](../compliance/dlp-learn-about-dlp.md) to set policies around accessing sensitive information.
- Use [Azure Active Directory access](/azure/active-directory/governance/access-reviews-overview) reviews to periodically review team access and membership.

## Drive user adoption for team members

With the team in place, it's time to drive the adoption of this team and its additional security to team members.

### Train your users

Members of the team can access the team and all of its resources, including chats, meetings, and other apps. When working with files from the **Files** section of a channel, members of the team should assign the sensitivity label to the files they create.

When the label gets applied to the file, it is encrypted. Members of the team can open it and collaborate in real time. If the file leaves the site and gets forwarded to a malicious user, they will have to supply credentials of a user account that is member of the team to open the file and view its contents. 

Train your team members:

- On the importance of using the new team for chats, meetings, files, and the other resources of the SharePoint site and the consequences of a highly regulated data leak, such as legal ramifications, regulatory fines, ransomware, or loss of competitive advantage.
- How to access the team.
- How to create new files on the site and upload new files stored locally.
- How to label files with the correct sensitivity label for the team.
- How the label protects files even when they are leaked off the site.

This training should include hands-on exercises so that your team members can experience these capabilities and their results.

### Conduct periodic reviews of usage and address team member feedback

In the weeks after training:

- Quickly address team member feedback and fine tune polices and configurations.
- Analyze usage for the team and compare it with usage expectations.
- Verify that highly regulated files have been properly labeled with the sensitivity label. (You can see which files have a label assigned by viewing a folder in SharePoint and adding the **Sensitivity** column through the **Show/hide columns** option of **Add column**.

Retrain your users as needed.

## See also

[Azure AD Privileged Identity Management](/azure/active-directory/privileged-identity-management/pim-configure)