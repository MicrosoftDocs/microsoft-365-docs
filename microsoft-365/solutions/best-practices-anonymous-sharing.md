---
title: "Best practices for unauthenticated sharing"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: sharepoint-online
ms.collection: SPO_Content
localization_priority: Priority
f1.keywords: NOCSH
description: "Learn best practices for sharing files and folders with unauthenticated users."
---

# Best practices for sharing files and folders with unauthenticated users

Unauthenticated sharing (*Anyone* links) can be convenient and is useful in various scenarios. *Anyone* links are the easiest way to share: people can open the link without authentication and are free to pass it on to others.

Usually, not all content in an organization is appropriate for unauthenticated sharing. This article covers the options available to help you create an environment where your users can use unauthenticated sharing of files and folders, but where there are safeguards in place to help protect your organization's content.

> [!NOTE]
> For unauthenticated sharing to work, you must enable it for your organization and for the individual site or team that you'll be using. See [Collaborating with people outside your organization](collaborate-with-people-outside-your-organization.md) for the scenario that you want to enable.

## Set an expiration date for Anyone links

Files are often stored in sites, groups, and teams for long periods of time. Occasionally there are data retention policies that require files to be retained for years. If such files are shared with unauthenticated people, this could lead to unexpected access and changes to files in the future. To mitigate this possibility, you can configure an expiration time for *Anyone* links.

Once an *Anyone* link expires, it can no longer be used to access content.

To set an expiration date for Anyone links
1. Open the SharePoint Online admin center.
2. In the left navigation, click **Sharing**.
3. Under **Advanced settings for "Anyone" links**, select the **These links must expire within this many days** check box.</br>
   ![Screenshot of SharePoint organization-level Anyone link expiration settings](../media/sharepoint-organization-anyone-link-expiration.png)
4. Type a number of days in the box, and then click **Save**.

Note that once an *Anyone* link expires, the file or folder can be re-shared with a new *Anyone* link.

## Set link permissions

By default, *Anyone* links for a file allow people to edit the file, and *Anyone* links for a folder allow people to edit and view files, and upload new files to the folder. You can change these permissions for files and for folders independently to view-only.

If you want to allow unauthenticated sharing, but are concerned about unauthenticated people modifying your organization's content, consider setting the file and folder permissions to **View**.

To set permissions for Anyone links
1. Open the SharePoint Online admin center.
2. In the left navigation, click **Sharing**.
3. Under **Advanced settings for "Anyone" links**, select the file and folder permissions that you want to use.</br>
   ![Screenshot of SharePoint organization-level Anyone link permissions settings](../media/sharepoint-organization-anyone-link-permissions.png)

With *Anyone* links set to **View**, users can still share files and folders with guests and give them edit permissions by using *Specific people* links. These links require people outside your organization to authenticate as guests, and you can track and audit guest activity on files and folders shared with these links.

## Set default link type to only work for people in your organization

When *Anyone* sharing is enabled for your organization, the default sharing link is normally set to **Anyone**. While this can be convenient for users, it can increase the risk of unintentional unauthenticated sharing. If a user forgets to change the link type while sharing a sensitive document, they might accidentally create a sharing link that doesn't require authentication.

You can mitigate this risk by changing the default link setting to a link that only works for people inside your organization. Users who want to share with unauthenticated people would then have to specifically select that option.

To set the default file and folder sharing link
1. In the SharePoint admin center, in the left navigation, click **Sharing**.
2. Under **File and folder links**, select **Only people in your organization**.</br>
   ![Screenshot of SharePoint default link type setting](../media/sharepoint-default-sharing-link-company-link.png)
3. Click **Save**

## Protect against malicious files

When you allow anonymous users to upload files, you're at an increased risk of someone uploading a malicious file. In Microsoft 365, you can use the *safe attachments* feature in Advanced Threat Protection to automatically scan uploaded files and quarantine files that are found to be unsafe.

To turn on safe attachments
1. Open the [Microsoft 365 security](https://security.microsoft.com) admin center.
2. In the left navigation, click **Policies**.
3. Under **Threat protection**, click **ATP safe attachments (Office 365)**.
4. Select the **Turn on ATP for SharePoint, OneDrive, and Microsoft Teams** check box, and then click **Save**.</br>
   ![Screenshot of the safe attachments setting in the Security and Compliance center](../media/safe-attachments-setting.png)

## Add copyright information to your files

If you use sensitivity labels in the Microsoft 365 Compliance admin center, you can configure your labels to add a watermark or a header or footer automatically to your organization's Office documents. In this way, you can make sure that shared files contain copyright or other ownership information.

To add a footer to a labeled file
1. Open the [Microsoft 365 compliance admin center](https://compliance.microsoft.com).
2. In the left navigation, under **Classification**, click **Sensitivity labels**.
3. Click the label that you want to have add a footer, and then click **Edit label**.
4. Click the **Content marking** tab, and then turn **On** content marking.
5. Select the check box for the type of text you want to add, and then click **Customize text**.
6. Type the text that you want added to your documents, select the text options that you want, and then click **Save**.</br>
   ![Screenshot of the content marking settings for a sensitivity label](../media/content-marking-for-anonymous-sharing.png)
7. Click **Save**, and then click **Close**.

With content marking enabled for the label, the text you specified will be added to Office documents when a user applies that label.

## See Also


[Overview of sensitivity labels](https://docs.microsoft.com/Office365/SecurityCompliance/sensitivity-labels)

[Limit accidental exposure to files when sharing with guests](share-limit-accidental-exposure.md)

[Create a secure guest sharing environment](create-secure-guest-sharing-environment.md)