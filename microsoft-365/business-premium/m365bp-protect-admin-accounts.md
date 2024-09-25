---
title: "Protect your administrator accounts with Microsoft 365 Business Premium"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business-security
ms.date: 08/29/2024
ms.localizationpriority: medium
ms.collection:
- M365-Campaigns
- m365solution-smb
- highpri
- tier2
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
description: "Learn how to set up and protect your administrator accounts in Microsoft 365 Business Premium."
---

# Protect your administrator accounts

Because admin accounts come with elevated privileges, they're valuable targets for cyberattackers. This article describes:

- [How to set up another administrator account for emergencies](#create-other-admin-accounts).
- [How to create an emergency admin account](#create-an-emergency-admin-account).
- [How to create a user account for yourself](#create-a-user-account-for-yourself).
- [How to protect admin accounts](#protect-admin-accounts).
- [Additional recommendations](#additional-recommendations) and your [Next step](#next-step).

When you sign up for Microsoft 365 and enter your information, you automatically become the Global Administrator (also referred to as the global admin). A Global Administrator has the ultimate control of user accounts and all the other settings in the Microsoft admin center (<https://admin.microsoft.com>), but there are many different kinds of admin accounts with varying degrees of access. See [about admin roles](/office365/admin/add-users/about-admin-roles) for information about the different access levels for each kind of admin role.

## Create other admin accounts

Use admin accounts only for Microsoft 365 administration. Admins should have a separate user account for their regular use of Microsoft 365 Apps, and only use their administrative account when necessary to manage accounts and devices, and while working on other admin functions. It's also a good idea to remove the Microsoft 365 license from your admin accounts so you don't have to pay for extra licenses.

You'll want to set up at least one other Global Administrator account to give administrator access to another trusted employee. You can also create separate admin accounts for user management (this role is called **User management administrator**). For more information, see [about admin roles](/office365/admin/add-users/about-admin-roles).

> [!IMPORTANT]
> Although we recommend setting up a set of admin accounts, you'll want to limit the number of Global Administrators for your organization. In addition, we recommend adhering to the concept of least-privilege access, which means you grant access to only the data and operations needed to perform their jobs. [Learn more about the principle of least privilege](/azure/active-directory/develop/secure-least-privileged-access).

To create more admin accounts:

 1. In the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=837890), choose **Users** \> **Active users** in the left nav.

    :::image type="content" source="media/Activeusers.png" alt-text="Choose Users and then Active users in the left nav." lightbox="media/Activeusers.png":::

 2. On the **Active users** page, select **Add a user** at the top of the page.

 3. In the **Add a user** panel, enter basic information such as name and username information.

 4. Enter and set up **Product licenses** information.

 5. In **Optional settings**, define the role of the user, including adding Admin center access if appropriate.

    :::image type="content" source="media/m365bp-global-admin.png" alt-text="Define new user roles." lightbox="media/m365bp-global-admin.png":::

 6. Finish and review your settings and select **Finish adding** to confirm the details.

## Create an emergency admin account

You should also create a backup account that isn't set up with multi-factor authentication (MFA) so you don't accidentally lock yourself out (for example, if you lose your phone that you're using as a second form of verification). Make sure that the password for this account is a phrase or at least 16 characters long. This emergency admin account is often referred to as a "break-glass account."

## Create a user account for yourself

If you're an admin, you'll need a user account for regular work tasks, such as checking mail. Name your accounts so that you know which is which. For example, your admin credentials might be similar to  *Alice.Chavez<span></span>@Contoso.org*, and your regular user account might be similar to *Alice<span></span>@Contoso.com*.

To create a new user account:

1. Go to the [Microsoft 365 admin center](https://go.microsoft.com/fwlink/p/?linkid=837890) and then choose **Users** \> **Active users** in the left nav.

2. On the **Active users** page, select **Add a user** at the top of the page, and on the **Add a user** panel, enter the name and other information.

3. In the **Product Licenses** section, select the check box for **Microsoft 365 Business Premium (no administrative access)**.

4. In the **Optional settings** section, leave the default radio button selected for **User (no admin center access)**.

5. Finish and review your settings and select **Finish adding** to confirm the details.

## Protect admin accounts

To protect all your admin accounts, make sure to follow these recommendations:

- Require all admin accounts to use passwordless authentication (such as Windows Hello or an authenticator app), or MFA. To learn more about why passwordless authentication is important, see the [Microsoft Security whitepaper: Passwordless protection](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE2KEup).

- Avoid using custom permissions for admins. Instead of granting permissions to specific users, assign permissions through roles in Microsoft Entra ID. And, grant access to only the data and operations needed to perform the task at hand. [Learn about least-privileged roles in Microsoft Entra ID](/azure/active-directory/roles/delegate-by-task).

- Use built-in roles for assigning permissions where possible. Azure role-based access control (RBAC) has several built-in roles that you can use. [Learn more about Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

## Additional recommendations

- Before using admin accounts, close out all unrelated browser sessions and apps, including personal email accounts. You can also use in private, or incognito browser windows.

- After completing admin tasks, be sure to sign out of the browser session.

## Next step

[Increase threat protection for Microsoft 365 Business Premium](m365bp-protect-against-malware-cyberthreats.md)
