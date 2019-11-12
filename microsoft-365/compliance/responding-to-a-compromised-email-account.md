---
title: "Responding to a Compromised Email Account in Office 365"
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.topic: article
ms.collection: 
- o365_security_incident_response
- M365-security-compliance
ms.custom: TopSMBIssues
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
description: "Learn how to recognize and respond to a compromised email account in Office 365"
---
# Responding to a Compromised Email Account in Office 365

**Summary** Learn how to recognize and respond to a compromised email account in Office 365.

## What is a Compromised Email Account in Office 365?

Access to Office 365 mailboxes, data and other services, is controlled through the use of credentials, for example a user name and password or PIN. When someone other than the intended user steals those credentials, the stolen credentials are considered to be compromised. With them the attacker can sign in as the original user and perform illicit actions.
Using the stolen credentials, the attacker can access the user’s Office 365 mailbox, SharePoint folders, or files in the user's OneDrive. One action commonly seen is the attacker sending emails as the original user to recipients both inside and outside of the organization. When the attacker emails data to external recipients, this is called data exfiltration.

## Symptoms of a Compromised Office 365 Email Account

Users might notice and report unusual activity in their Office 365 mailboxes. Here are some common symptoms:

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

- Office 365 Unified Audit Logs in the Security & Compliance Center - Review all the activities for the suspected account by filtering the results for the date range spanning from immediately before the suspicious activity occurred to the current date. Do not filter on the activities during the search.
- Use the Azure AD Sign-in logs and other risk reports that are available in the Azure AD portal. Examine the values in these columns:
    - Review IP address
    - sign-in locations
    - sign-in times
    - sign-in success or failure

## How to secure and restore email function to a suspected compromised Office 365 account and mailbox

> [!VIDEO https://videoplayercdn.osi.office.net/hub/?csid=ux-cms-en-us-msoffice&uuid=RE2jvOb&AutoPlayVideo=false]

Even after you've regained access to your account, the attacker may have added back-door entries that enable the attacker to resume control of the account.

You must perform all the following steps to regain access to your account the sooner the better to make sure that the hijacker doesn't resume control your account. These steps help you remove any back-door entries that the hijacker may have added to your account. After you perform these steps, we recommend that you run a virus scan to make sure that your computer isn't compromised.

### Step 1 Reset the user's password

> [!WARNING]
> Do not send the new password to the intended user through email as the attacker still has access to the mailbox at this point.

1. Follow the Reset an Office 365 business password for someone else procedures in [Admins: Reset Office 365 business passwords](https://support.office.com/article/admins-reset-office-365-business-passwords-7a5d073b-7fae-4aa5-8f96-9ecd041aba9c)

**Notes:**
- Make sure that the password is strong and that it contains upper and lowercase letters, at least one number, and at least one special character. 
- Don't reuse any of your last five passwords. Even though the password history requirement lets you reuse a more recent password, you should select something that the attacker can't guess.
- If your on-premises identity is federated with Office 365, you must change your password on-premises, and then you must notify your administrator of the compromise.

> [!TIP]
> It is highly recommended that you enable Multi-Factor Authentication (MFA) in order to prevent compromise, especially for accounts with administrative privileges.  You can learn more [here](https://support.office.com/article/Set-up-multi-factor-authentication-for-Office-365-users-8f0454b2-f51a-4d9c-bcde-2c48e41621c6).

### Step 2 Remove suspicious email forwarding addresses

1. Open the **Microsoft 365 admin center > Active Users**.
2. Find the user account in question and expand **Mail Settings**.
3. For **Email forwarding**, click **Edit**.
4. Remove any suspicious forwarding addresses.

### Step 3 Disable any suspicious inbox rules

1. Sign in to the user's mailbox using Outlook on the web.
2. Click on the gear icon and click **Mail**.
3. Click **Inbox and sweep rules** and review the rules.
4. Disable or delete suspicious rules.

### Step 4 Unblock the user from sending mail

If the suspected compromised mailbox was used illicitly to send spam email, it is likely that the mailbox has been blocked from sending mail.
1. To unblock a mailbox from sending mail, follow the procedures in [Removing a user, domain, or IP Address from a block list after sending spam email](https://docs.microsoft.com/microsoft-365/security/office-365-security/removing-user-from-restricted-users-portal-after-spam).

### Step 5 Optional: Block the user account from signing-in

> [!IMPORTANT]
> You can block the suspected compromised account from signing-in until you believe it is safe to re-enable access.

1. Go to the Microsoft 365 admin center.
2. In the Microsoft 365 admin center, select **Users**.
3. Select the employee that you want to block, and then choose **Edit** next to **Sign-in status** in the user pane
4. On the **Sign-in status** pane, choose **Sign-in blocked** and then **Save**. 
5. In the Admin center, in the lower-left navigation pane, expand **Admin Centers** and select **Exchange**.
6. In the Exchange admin center, navigate to **Recipients > Mailboxes**.
7. Select the user, and on the user properties page, under **Mobile Devices**, click **Disable Exchange ActivcSync** and **Disable OWA for Devices** and answer **yes** to both.
8. Under **Email Connectivity**, **Disable** and answer **yes**. 

### Step 6 Optional: Remove the suspected compromised account from all administrative role groups

> [!NOTE]
> Administrative role group membership can be restored after the account has been secured.

1. Sign in to the Microsoft 365 admin center with a global administrator account and open **Active Users**.
2. Find the suspected compromised account and manually check to see if there are any administrative roles assigned to the account.
3. Open the **Security & Compliance Center**.
4. Click **Permissions**.
5. Manually review the role groups to see if the suspected compromised account is a member of any of them.  If it is:
    a. Click the role group and click **Edit Role Group**.
    b. Click **Chose Members** and **Edit** to remove the user from the role group.
6. Open the **Exchange admin center**
7. Click **Permissions**.
8. Manually review the role groups to see if the suspected compromised account is a member of any of them. If it is:
    a. Click the role group and click **Edit**.
    b. Use the **members** section to remove the user from the role group.

### Step 7 Optional: Additional precautionary steps

1. Make sure that you verify your sent items. You may have to inform people on your contacts list that your account was compromised. The attacker may have asked them for money, spoofing, for example, that you were stranded in a different country and needed money, or the attacker may send them a virus to also hijack their computers.
2. Any other service that used this Exchange account as its alternative email account may have been compromised. First, perform these steps for your Office 365 subscription, and then perform these steps for your other accounts.
3. Make sure that your contact information, such as telephone numbers and addresses, is correct.

## Secure Office 365 like a cybersecurity pro

Your Office 365 subscription comes with a powerful set of security capabilities that you can use to protect your data and your users.  Use the [Office 365 security roadmap: Top priorities for the first 30 days, 90 days, and beyond](https://support.office.com/article/Office-365-security-roadmap-Top-priorities-for-the-first-30-days-90-days-and-beyond-28c86a1c-e4dd-4aad-a2a6-c768a21cb352) to implement Microsoft recommended best practices for securing your Office 365 tenant.
- Tasks to accomplish in the first 30 days.  These have immediate affect and are low-impact to your users.
- Tasks to accomplish in 90 days. These take a bit more time to plan and implement but greatly improve your security posture.
- Beyond 90 days. These enhancements build in your first 90 days work.

## See also:

- [Security best practices for Office 365](https://support.office.com/article/Security-best-practices-for-Office-365-9295e396-e53d-49b9-ae9b-0b5828cdedc3)
- [Detect and Remediate Outlook Rules and Custom Forms Injections Attacks in Office 365](/security/office-365-security/detect-and-remediate-outlook-rules-forms-attack.md)
- [Internet Crime Complaint Center](https://www.ic3.gov/preventiontips.aspx)
- [Securities and Exchange Commission - "Phishing" Fraud](https://www.sec.gov/investor/pubs/phishing.htm)
- To report spam email directly to Microsoft and your admin [Use the Report Message add-in](https://support.office.com/en-us/article/Use-the-Report-Message-add-in-b5caa9f1-cdf3-4443-af8c-ff724ea719d2)
