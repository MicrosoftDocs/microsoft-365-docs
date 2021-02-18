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
  - M365-security-compliance
  - m365solution-smb
ms.custom: 
  - TopSMBIssues
  - seo-marvel-apr2020

localization_priority: Priority
search.appverid: 
  - MET150
description: Learn how to recognize and respond to a compromised email account using tools available in Microsoft 365.
ms.technology: mdo
ms.prod: m365-security
---
# Responding to a Compromised Email Account

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](office-365-atp.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

**Summary** Learn how to recognize and respond to a compromised email account in Microsoft 365.

## What is a Compromised Email Account in Microsoft 365?

Access to Microsoft 365 mailboxes, data and other services, is controlled through the use of credentials, for example a user name and password or PIN. When someone other than the intended user steals those credentials, the stolen credentials are considered to be compromised. With them the attacker can sign in as the original user and perform illicit actions.
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

If a user reports any of the above symptoms, you should perform further investigation. The Microsoft 365 Security & Compliance Center and the Azure Portal offer tools to help you investigate the activity of a user account that you suspect may be compromised.

- **Unified Audit Logs in the Security & Compliance Center**: Review all the activities for the suspected account by filtering the results for the date range spanning from immediately before the suspicious activity occurred to the current date. Do not filter on the activities during the search.

- **Admin Audit logs in the EAC**: In Exchange Online, you can use the Exchange admin center (EAC) to search for and view entries in the administrator audit log. The administrator audit log records specific actions, based on Exchange Online PowerShell cmdlets, performed by administrators and users who have been assigned administrative privileges. Entries in the administrator audit log provide you with information about what cmdlet was run, which parameters were used, who ran the cmdlet, and what objects were affected.

- **Azure AD Sign-in logs and other risk reports in the Azure AD portal**: Examine the values in these columns:

  - Review IP address
  - sign-in locations
  - sign-in times
  - sign-in success or failure

## How to secure and restore email function to a suspected compromised Microsoft 365 account and mailbox

> [!VIDEO https://videoplayercdn.osi.office.net/hub/?csid=ux-cms-en-us-msoffice&uuid=RE2jvOb&AutoPlayVideo=false]

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
> - Be sure to update app passwords. App passwords aren't automatically revoked when a user account password reset. The user should delete existing app passwords and create new ones. For instructions, see [Create and delete app passwords from the Additional security verification page](https://docs.microsoft.com/azure/active-directory/user-help/multi-factor-authentication-end-user-app-passwords#create-and-delete-app-passwords-from-the-additional-security-verification-page).
>
> - We highly recommended that you enable Multi-Factor Authentication (MFA) in order to prevent compromise, especially for accounts with administrative privileges. To learn more about MFA, go to [Set up multi-factor authentication](../../admin/security-and-compliance/set-up-multi-factor-authentication.md).

### Step 2 Remove suspicious email forwarding addresses

1. Open the Microsoft 365 admin center at <https://admin.microsoft.com>

2. Go to **Users** \> **Active users**. Find the user account in question, and select the user (row) without selecting the checkbox.

3. In the details flyout that appears, select the **Mail** tab.

4. If the value in the **Email forwarding** section is **Applied**, click **Manage email forwarding**. In the **Manage email forwarding** flyout that appears, clear **Forward all email sent to this mailbox**, and then click **Save changes**.

### Step 3 Disable any suspicious inbox rules

1. Sign in to the user's mailbox using Outlook on the web.

2. Click on the gear icon and click **Mail**.

3. Click **Inbox and sweep rules** and review the rules.

4. Disable or delete suspicious rules.

### Step 4 Unblock the user from sending mail

If the suspected compromised mailbox was used illicitly to send spam email, it is likely that the mailbox has been blocked from sending mail.

To unblock a mailbox from sending mail, follow the procedures in [Removing a user from the Restricted Users portal after sending spam email](removing-user-from-restricted-users-portal-after-spam.md).

### Step 5 Optional: Block the user account from signing-in

> [!IMPORTANT]
> You can block the suspected compromised account from signing-in until you believe it is safe to re-enable access.

1. Open the Microsoft 365 admin center and go to **Users** \> **Active users**.

2. Find and select the user account, click ![More icon](../../media/ITPro-EAC-MoreOptionsIcon.png), and then select **Edit sign-in status**.

3. On the **Block sign-in** pane that appears, select **Block this user from signing in**, and then click **Save changes**.

4. Open the Exchange admin center (EAC) at <admin.protection.outlook.com/ecp/>, and go to **Recipients > Mailboxes**.

5. Find and select the select the user. In the details pane, do the following steps:

   - In the **Phone and voice features** section, do the following steps:

     - Select **Disable Exchange ActiveSync** and then click **Yes** in the warning that appears.
     - Select **Disable OWA for Devices** and then click **Yes** in the warning that appears.

   - In the **Email Connectivity** section for Outlook on the web, click **Disable** and then click **Yes** in the warning that appears.

### Step 6 Optional: Remove the suspected compromised account from all administrative role groups

> [!NOTE]
> Administrative role group membership can be restored after the account has been secured.

1. Sign in with a global administrator account:

2. In the Microsoft 365 admin center, do the following steps:

   1. Go to **Users** \> **Active users**.
   2. Find and select the user account, click ![More icon](../../media/ITPro-EAC-MoreOptionsIcon.png), and then select **Manage roles**.
   3. Remove any administrative roles that are assigned to the account. When you're finished, click **Save changes**.

3. In the Security & Compliance Center at <https://protection.office.com>, do the following steps:

   Select **Permissions**, select each role group in the list and look for the user account in the **Members** section of the details flyout that appears. If the role group contains the user account, do the following steps:

   a. Click **Edit** next to **Members**.
   b. On the **Editing Choose members** flyout that appears, click **Edit**.
   c. In the **Choose members** flyout that appears, select the user account, and then click **Remove**. When you're finished, click **Done**, **Save**, and then **Close**.

4. In the EAC at <admin.protection.outlook.com/ecp/>, do the following steps:

   Select **Permissions**, manually select each role group, and in the details pane, verify the user accounts in the **Members** section.  If the role group contains the user account, do the following steps:

   a. Select the role group, click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png).
   b. In the **Member** section, select the user account, and then click **Remove** ![Remove icon](../../media/ITPro-EAC-RemoveIcon.gif). When you're finished, click **Save**.

### Step 7 Optional: Additional precautionary steps

1. Make sure that you verify your sent items. You may have to inform people on your contacts list that your account was compromised. The attacker may have asked them for money, spoofing, for example, that you were stranded in a different country and needed money, or the attacker may send them a virus to also hijack their computers.

2. Any other service that used this Exchange account as its alternative email account may have been compromised. First, do these steps for your Microsoft 365 subscription, and then do these steps for your other accounts.

3. Make sure that your contact information, such as telephone numbers and addresses, is correct.

## Secure Microsoft 365 like a cybersecurity pro

Your Microsoft 365 subscription comes with a powerful set of security capabilities that you can use to protect your data and your users.  Use the [Microsoft 365 security roadmap - Top priorities for the first 30 days, 90 days, and beyond](security-roadmap.md) to implement Microsoft recommended best practices for securing your Microsoft 365 tenant.

- Tasks to accomplish in the first 30 days.  These have immediate affect and are low-impact to your users.

- Tasks to accomplish in 90 days. These take a bit more time to plan and implement but greatly improve your security posture.

- Beyond 90 days. These enhancements build in your first 90 days work.

## See also

- [Detect and Remediate Outlook Rules and Custom Forms Injections Attacks in Microsoft 365](detect-and-remediate-outlook-rules-forms-attack.md)

- [Internet Crime Complaint Center](hhttps://www.ic3.gov/Home/Ransomware)

- [Securities and Exchange Commission - "Phishing" Fraud](https://www.sec.gov/investor/pubs/phishing.htm)

- To report spam email directly to Microsoft and your admin [Use the Report Message add-in](https://support.microsoft.com/office/b5caa9f1-cdf3-4443-af8c-ff724ea719d2)
