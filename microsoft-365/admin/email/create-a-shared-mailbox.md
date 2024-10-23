---
title: "Create a shared mailbox"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 09/30/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: high
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- MSStore_Link
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
- admindeeplinkEXCHANGE
- business_assist
- has-azure-ad-ps-ref
- azure-ad-ref-level-one-done
description: "Create a shared mailbox to enable multiple users in your business to share the responsibility of reading and answering email sent to one address."
---

# Create a shared mailbox

> [!NOTE]
> If your organization uses a hybrid Exchange environment, you should use the on-premises <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a> to create and manage shared mailboxes. See [Create shared mailboxes in the Exchange admin center](/Exchange/collaboration/shared-mailboxes/create-shared-mailboxes?preserve-view=true.&view=exchserver-2019)
>
> If you're not sure if you should create a shared mailbox or a Microsoft 365 group for Outlook, see [Compare groups](../create-groups/compare-groups.md) for some guidance. It's not possible to migrate a shared mailbox to a Microsoft 365 group.

Create shared mailboxes so a group of people can monitor and send email from a common email addresses, like info@contoso.com. When a person in the group replies to a message sent to the shared mailbox, the email appears to be from the shared mailbox, not from the individual user.

Shared mailboxes include a shared calendar. Your team can use the shared calendar as a place for everyone to enter their appointments. For example, if you have 3 people who do customer visits, all can use the shared calendar to enter the customer visit information.

Before creating a shared mailbox, be sure to read [About shared mailboxes](about-shared-mailboxes.md) for more information.

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Create a shared mailbox and add members
  
1. Sign in with a user with Exchange admin role. If you get the message "**You don't have permission to access this page or perform this action**," then you aren't an admin.

::: moniker range="o365-worldwide"

2. In the admin center, go to the **Teams & Groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2066847" target="_blank">Shared mailboxes</a> page. Select **Show all** in the left navigation pane if you don't see **Teams & Groups**.

::: moniker-end

::: moniker range="o365-21vianet"

2. In the [admin center](https://go.microsoft.com/fwlink/p/?linkid=850627), go to the **Teams & Groups** \> **Shared mailboxes** page.

::: moniker-end

3. On the **Shared mailboxes** page, select **+ Add a shared mailbox**. Enter a name for the shared mailbox. This chooses the email address, but you can edit it if needed.
  
4. Select **Save changes**. It may take a few minutes before you can add members.

5. Under **Next steps**, select **Add members to this mailbox**. Members are the people who will be able to view the incoming mail to this shared mailbox, and the outgoing replies.

6. Select the **Add members** button. Select the people who you want to use this shared mailbox, and then select **Add**. and then close.

You have a shared mailbox and it includes a shared calendar. Go on to the next step: [Block sign-in for the shared mailbox account](#block-sign-in-for-the-shared-mailbox-account).

## Which permissions should you use?

You can use the following permissions with a shared mailbox:

- **Full Access**: The Full Access permission lets a user open the shared mailbox and act as the owner of that mailbox. After accessing the shared mailbox, a user can create calendar items, read, view, delete, and change email messages, and create tasks and calendar contacts. However, a user with Full Access permission can't send email from the shared mailbox unless they also have Send As or Send on Behalf permission.

- **Send As**: The Send As permission lets a user impersonate the shared mailbox when sending mail. For example, if Katerina logs into the shared mailbox Marketing Department and sends an email, it will look like the Marketing Department sent the email.

- **Send on Behalf**: The Send on Behalf permission lets a user send email on behalf of the shared mailbox. For example, if John logs into the shared mailbox Reception Building 32 and sends an email, it will look like the mail was sent by "John on behalf of Reception Building 32". You can't use the EAC to grant Send on Behalf permissions, you must use the **Set-Mailbox** cmdlet with the _GrantSendonBehalf_ parameter.

> [!NOTE]
> The **Send As** and **Send on Behalf** permissions do not work in the Outlook desktop client with the *HiddenFromAddressListsEnabled* parameter on the mailbox set to **True**, since they require the mailbox to be visible in Outlook via the Global Address List.

### Use the EAC to edit shared mailbox delegation

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>, go to **Recipients** \> **Mailboxes**. Select the shared mailbox, and then select **Edit** ![Edit icon.](../../media/ITPro-EAC-EditIcon.png).

2. Under **Mailbox permissions**, select **Manage mailbox delegation**.

3. To grant or remove Full Access and Send As permissions, select **Add** ![Add Icon.](../../media/ITPro-EAC-AddIcon.png) or **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif) and then select the users you want to grant permissions to.

   > [!NOTE]
   > The Full Access permission allows a user to open the mailbox as well as create and modify items in it. The Send As permission allows anyone other than the mailbox owner to send email from this shared mailbox. Both permissions are required for successful shared mailbox operation.

4. Select **Save** to save your changes.

## Block sign-in for the shared mailbox account

Every shared mailbox has a corresponding user account. Notice how you weren't asked to provide a password when you created the shared mailbox? The account has a password, but it's system-generated (unknown). You aren't supposed to use the account to log in to the shared mailbox.

But what if an admin simply resets the password of the shared mailbox user account? Or what if an attacker gains access to the shared mailbox account credentials? This would allow the user account to log in to the shared mailbox and send email. To prevent this, you need to block sign-in for the account that's associated with the shared mailbox.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.
::: moniker-end

2. In the list of user accounts, find the account for the shared mailbox (for example, change the filter to **Unlicensed users**).

3. Select the user to open their properties pane, and then select **Block sign-in**.

   > [!NOTE]
   > If the account is already blocked, **Sign in blocked** will appear at the top and the icon will read **Unblock this user**.

4. On the **Block sign-in** page, select **Block the user from signing in**, and then select **Save changes**.

For instructions on how to block sign-in for accounts using [Microsoft Graph PowerShell](/powershell/microsoftgraph/overview) (including many accounts at the same time), see [Block Microsoft 365 user accounts with PowerShell](../../enterprise/block-user-accounts-with-microsoft-365-powershell.md).

## Add the shared mailbox to Outlook

If you have automapping enabled in your business (by default, most people do), the shared mailbox will appear in your user's Outlook app automatically after they close and restart Outlook.

Automapping is set on the user's mailbox, not the shared mailbox. This means if you try to use a security group to manage who has access to the shared mailbox, automapping won't work. So, if you want automapping, you have to assign permissions explicitly. Automapping is on by default. To learn how to turn it off, see [Remove automapping for a shared mailbox](/office365/troubleshoot/administration/remove-automapping-for-shared-mailbox).

To learn more about shared mailboxes in Outlook, see:

- <a href="https://support.microsoft.com/office/d94a8e9e-21f1-4240-808b-de9c9c088afd" target="_blank">Open and use a shared mailbox in Outlook</a>

- <a href="https://support.microsoft.com/office/98b5a90d-4e38-415d-a030-f09a4cd28207" target="_blank">Add a shared mailbox to Outlook on the web</a>

- <a href="https://support.microsoft.com/office/f866242c-81b2-472e-8776-6c49c5473c9f" target="_blank">Add a shared mailbox to Outlook mobile</a>

- <a href="https://support.microsoft.com/office/6ecc39c5-5577-4a1d-b18c-bbdc92972cb2" target="_blank">Open a shared folder or mailbox in Outlook for Mac</a>

- <a href="https://support.microsoft.com/office/b0963400-2a51-4c64-afc7-b816d737d164" target="_blank">Add rules to a shared mailbox</a>

## Use a shared mailbox on a mobile device (phone or tablet)

You can access a shared mailbox on a mobile device in two ways:
- Add the shared mailbox in the <a href="https://apps.apple.com/us/app/microsoft-outlook/id951937596" target="_blank">Outlook for iOS app</a> or the <a href="https://play.google.com/store/apps/details?id=com.microsoft.office.outlook&hl=en_US" target="_blank">Outlook for Android mobile app</a>.

    For instructions, see <a href="https://support.microsoft.com/office/f866242c-81b2-472e-8776-6c49c5473c9f" target="_blank">Add a shared mailbox to Outlook mobile</a>.

- Open your browser, sign in, and then go to Outlook on the web. From Outlook on the web you'll be able to access the shared mailbox.

    For instructions, see <a href="https://support.microsoft.com/office/98b5a90d-4e38-415d-a030-f09a4cd28207" target="_blank">Add a shared mailbox to Outlook on the web</a>.

> [!NOTE]
> Shared mailbox can only be added to Outlook for iOS app or the Outlook for Android mobile app

## Use the shared calendar

When you created the shared mailbox, you automatically created a shared calendar. We like the shared mailbox calendar rather than a SharePoint calendar for keeping track of appointments and where people are. A shared calendar is integrated with Outlook and it's much easier to use than a SharePoint calendar.

1. In the Outlook app, go to calendar view, and select the shared mailbox.

2. When you enter meetings or appointments, everyone who is a member of the shared mailbox will be able to see them.

3. Any member of the shared mailbox can create, view, and manage appointments on the calendar, just like they would their personal appointments. Everyone who is a member of shared mailbox can see their changes to the shared calendar.

## Remove a license from a shared mailbox

Shared mailboxes usually don't require a license. Follow these instructions to remove a license from a shared mailbox so that you can either assign it to a user or return the license so that you aren't paying for a license you don't need.

> [!NOTE]
>
> An Exchange Online Plan 2 license is required in the following scenarios:
>
> - The shared mailbox has more than 50 GB of storage in use.
> - The shared mailbox uses in-place archiving.
> - The shared mailbox is placed in litigation hold.
>
> For step-by-step instructions on how to assign licenses, see [Assign licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users).

## Remove the license

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

   > [!NOTE]
   > You need to remove the license from the Active users page. You can't remove the license from the Shared mailbox page because licenses are user settings.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

   > [!NOTE]
   > You need to remove the license from the Active users page. You can't remove the license from the Shared mailbox page because licenses are user settings.

::: moniker-end
  
2. Select the shared mailbox.

3. One the **Licenses and Apps** tab, expand **Licenses** and uncheck the box for the license you want to remove.

4. Select **Save changes**.

5. When you return to the **Active users** page, the status of the shared mailbox will be **Unlicensed**.

6. You're still paying for the license. To stop paying for it, [remove the license from your subscription](../../commerce/licenses/buy-licenses.md).

## Related content

[About shared mailboxes](about-shared-mailboxes.md) (article)\
[Configure a shared mailbox](configure-a-shared-mailbox.md) (article)\
[Convert a user mailbox to a shared mailbox](convert-user-mailbox-to-shared-mailbox.md) (article)\
