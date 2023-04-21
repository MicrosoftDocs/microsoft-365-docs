---
title: Responding to a Compromised Email Account
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.collection: 
  - o365_security_incident_response
  - m365-security
  - m365solution-smb
  - highpri
  - tier1
ms.custom: 
  - TopSMBIssues
  - seo-marvel-apr2020
ms.localizationpriority: high
search.appverid: 
  - MET150
description: Learn how to recognize and respond to a compromised email account using tools available in Microsoft 365.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 1/31/2023
---

# Responding to a Compromised Email Account

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

**Summary** Learn how to recognize and respond to a compromised email account in Microsoft 365.

## What is a Compromised Email Account in Microsoft 365?

Access to Microsoft 365 mailboxes, data and other services, is controlled by using credentials, for example a user name and password or PIN. When someone other than the intended user steals those credentials, the stolen credentials are considered to be compromised. With them the attacker can sign in as the original user and perform illicit actions.

Using the stolen credentials, the attacker can access the user's Microsoft 365 mailbox, SharePoint folders, or files in the user's OneDrive. One action commonly seen is the attacker sending emails as the original user to recipients both inside and outside of the organization. When the attacker emails data to external recipients, this is called data exfiltration.

## Symptoms of a Compromised Microsoft Email Account

Users might notice and report unusual activity in their Microsoft 365 mailboxes. Here are some common symptoms:

- Suspicious activity, such as missing or deleted emails.
- Other users might receive emails from the compromised account without the corresponding email existing in the **Sent Items** folder of the sender.
- The presence of inbox rules that weren't created by the intended user or the administrator. These rules may automatically forward emails to unknown addresses or move them to the **Notes**, **Junk Email**, or **RSS Subscriptions** folders.
- The user's display name might be changed in the Global Address List.
- The user's mailbox is blocked from sending email.
- The Sent or Deleted Items folders in Microsoft Outlook or Outlook on the web (formerly known as Outlook Web App) contain common hacked-account messages, such as "I'm stuck in London, send money."
- Unusual profile changes, such as the name, the telephone number, or the postal code were updated.
- Unusual credential changes, such as multiple password changes are required.
- Mail forwarding was recently added.
- An unusual signature was recently added, such as a fake banking signature or a prescription drug signature.

If a user reports any of the above symptoms, you should perform further investigation. The Microsoft 365 Defender portal and the Azure portal offer tools to help you investigate the activity of a user account that you suspect may be compromised.

- **Unified audit logs in the Microsoft 365 Defender portal**: Review all the activities for the suspected account by filtering the results for the date range spanning from immediately before the suspicious activity occurred to the current date. Do not filter on the activities during the search. For more information, see [Search the audit log in the compliance center](../../compliance/search-the-audit-log-in-security-and-compliance.md).

- **Azure AD Sign-in logs and other risk reports in the Azure AD portal**: Examine the values in these columns:
  - Review IP address
  - sign-in locations
  - sign-in times
  - sign-in success or failure

> [!IMPORTANT]
> The button below will let you test and identify suspicious activities against an account and return information that can be used to recover in the case an account is compromised.
>
<div class="nextstepaction">
<p><a href="https://aka.ms/diagca" data-linktype="external">Run Tests: Compromised Accounts</a></p>
</div>

## How to secure and restore email function to a suspected compromised Microsoft 365 account and mailbox

<!--- [!VIDEO https://videoplayercdn.osi.office.net/hub/?csid=ux-cms-en-us-msoffice&uuid=RE2jvOb&AutoPlayVideo=false] --->

Even after you've regained access to your account, the attacker may have added back-door entries that enable the attacker to resume control of the account.

You must do all the following steps to regain access to your account the sooner the better to make sure that the hijacker doesn't resume control your account. These steps help you remove any back-door entries that the hijacker may have added to your account. After you do these steps, we recommend that you run a virus scan to make sure that your computer isn't compromised.

### Step 1 Reset the user's password

Follow the procedures in [Reset a business password for someone](../../admin/add-users/reset-passwords.md#reset-my-admin-password).

> [!IMPORTANT]
>
> - Do not send the new password to the intended user through email as the attacker still has access to the mailbox at this point.
>
> - Make sure that the password is strong and that it contains upper and lowercase letters, at least one number, and at least one special character.
>
> - Don't reuse any of your last five passwords. Even though the password history requirement lets you reuse a more recent password, you should select something that the attacker can't guess.
>
> - If your on-premises identity is federated with Microsoft 365, you must change your password on-premises, and then you must notify your administrator of the compromise.
>
> - Be sure to update app passwords. App passwords aren't automatically revoked when a user account password reset. The user should delete existing app passwords and create new ones. For instructions, see [Create and delete app passwords from the Additional security verification page](/azure/active-directory/user-help/multi-factor-authentication-end-user-app-passwords#create-and-delete-app-passwords-from-the-additional-security-verification-page).
>
> - We highly recommended that you enable Multi-Factor Authentication (MFA) in order to prevent compromise, especially for accounts with administrative privileges. To learn more about MFA, go to [Set up multi-factor authentication](../../admin/security-and-compliance/set-up-multi-factor-authentication.md).

### Step 2 Remove suspicious email forwarding addresses

1. In the Microsoft 365 admin center at <https://admin.microsoft.com>, go to **Users** \> **Active users**. To go directly to the **Active users** page, use <https://admin.microsoft.com/Adminportal/Home#/users>.

2. On the **Active users** page, find the user account in question, and select the user (row) without selecting the checkbox.

3. In the details flyout that appears, select the **Mail** tab.

4. If the value in the **Email forwarding** section is **Applied**, click **Manage email forwarding**. In the **Manage email forwarding** flyout that appears, clear **Forward all email sent to this mailbox**, and then click **Save changes**.

### Step 3 Disable any suspicious inbox rules

1. Sign in to the user's mailbox using Outlook on the web.

2. Click on the gear icon and click **Mail**.

3. Click **Inbox and sweep rules** and review the rules.

4. Disable or delete suspicious rules.

### Step 4 Unblock the user from sending mail

If the suspected compromised mailbox was used illicitly to send spam email, it's likely that the mailbox has been blocked from sending mail.

To unblock a mailbox from sending mail, follow the procedures in [Removing a user from the Restricted Users portal after sending spam email](removing-user-from-restricted-users-portal-after-spam.md).

### Step 5 Optional: Block the user account from signing-in

> [!IMPORTANT]
> You can block the suspected compromised account from signing-in until you believe it's safe to re-enable access.

1. Do the following steps in the Microsoft 365 admin center at <https://admin.microsoft.com>:
   1. Go to **Users** \> **Active users**. Or, to go directly to the **Active users** page, use <https://admin.microsoft.com/Adminportal/Home#/users>.
   2. On the **Active users** page, find and then select the user account by doing either of the following steps:
      - Select the user from the list by clicking anywhere in the row other than the check box. In the user details flyout that opens, click ![Block sign-in icon.](../../media/m365-cc-sc-no-icon.png) **Block sign-in** at the top of the flyout.
      - Select the user from the list by clicking the check box in the row. Click ![More actions icon.](../../media/ITPro-EAC-MoreOptionsIcon.png) **More actions**, and then select ![Edit sign-in status icon.](../../media/m365-cc-sc-no-icon.png) **Edit sign-in status**.
   3. On the **Block sign-in** flyout that opens, select **Block this user from signing in**, click **Save changes** and then click ![Close icon.](../../media/m365-cc-sc-close-icon.png) **Close**.

2. Do the following steps in the Exchange admin center (EAC) at <https://admin.exchange.microsoft.com>:
   1. Go to **Recipients** \> **Mailboxes**. Or, to go directly to the **Mailboxes** page, use <https://admin.exchange.microsoft.com/#/mailboxes>.
   2. On the **Mailboxes** page, find and select the user from the list by clicking anywhere in the row other than the check box.
   3. In the mailbox details flyout that opens, do the following steps:
      1. Verify the **General** tab is selected, and then click **Manage email apps settings** in the **Email apps & mobile devices** section.
      2. In the **Manage settings for email apps** flyout that opens, disable all of the available settings by changing the toggles to ![Disabled.](../../media/scc-toggle-off.png) **Disabled**:
         - **Outlook on the web**
         - **Outlook desktop (MAPI)**
         - **Exchange Web Services**
         - **Mobile (Exchange ActiveSync)**
         - **IMAP**
         - **POP3**

         When you're finished, click **Save** and then click ![Close icon.](../../media/m365-cc-sc-close-icon.png) **Close**.

### Step 6 Optional: Remove the suspected compromised account from all administrative role groups

> [!NOTE]
> Administrative role group membership can be restored after the account has been secured.

1. In the Microsoft 365 admin center at <https://admin.microsoft.com>, do the following steps:
   1. Go to **Users** \> **Active users**. To go directly to the **Active users** page, use <https://admin.microsoft.com/Adminportal/Home#/users>.
   2. On the **Active users** page, find and select the user account, click ![More icon.](../../media/ITPro-EAC-MoreOptionsIcon.png), and then select **Manage roles**.
   3. Remove any administrative roles that are assigned to the account. When you're finished, click **Save changes**.

2. in the Microsoft 365 Defender portal at <https://security.microsoft.com>, do the following steps:
   1. Go to **Permissions & roles** \> **Email & collaboration roles** \> **Roles**. To go directly to the **Permissions** page, use <https://security.microsoft.com/emailandcollabpermissions>.
   2. On the **Permissions** page, select each role group in the list and look for the user account in the **Members** section of the details flyout that appears. If the role group contains the user account, do the following steps:
      1. In the **Members** section, click **Edit**.
      2. On the **Editing Choose members** flyout that appears, click **Edit**.
      3. On the **Choose members** flyout that appears, click **Remove**.
      4. In the flyout that appears, select the user account, and then click **Remove**.

         When you're finished, click **Done**, **Save**, and then **Close**.

3. In the Exchange admin center at <https://admin.exchange.microsoft.com/>, do the following steps:
   1. Select **Roles** \> **Admin roles**. To go directly to the **Admin roles** page, use <https://admin.exchange.microsoft.com/#/adminRoles>.
   2. On the **Admin roles** page, manually select each role group, and in the details pane, select the **Assigned** tab to verify the user accounts. If the role group contains the user account, do the following steps:
      1. Select the user account.
      2. Click the ![Delete icon.](../../media/m365-cc-sc-delete-icon.png).

         When you're finished, click **Save**.

### Step 7 Optional: Additional precautionary steps

1. Make sure that you verify your sent items. You may have to inform people on your contacts list that your account was compromised. The attacker may have asked them for money, spoofing, for example, that you were stranded in a different country and needed money, or the attacker may send them a virus to also hijack their computers.

2. Any other service that used this Exchange account as its alternative email account may have been compromised. First, do these steps for your Microsoft 365 subscription, and then do these steps for your other accounts.

3. Make sure that your contact information, such as telephone numbers and addresses, is correct.

## See also

- [Detect and Remediate Outlook Rules and Custom Forms Injections Attacks in Microsoft 365](detect-and-remediate-outlook-rules-forms-attack.md)
- [Detect and Remediate Illicit Consent Grants](detect-and-remediate-illicit-consent-grants.md)
- [Internet Crime Complaint Center](https://www.ic3.gov/Home/Ransomware)
- [Securities and Exchange Commission - "Phishing" Fraud](https://www.sec.gov/investor/pubs/phishing.htm)
- To report spam email directly to Microsoft and your admin [Use the Report Message add-in](https://support.microsoft.com/office/b5caa9f1-cdf3-4443-af8c-ff724ea719d2)
