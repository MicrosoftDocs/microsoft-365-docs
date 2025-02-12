---
title: "Sign in to the Microsoft 365 admin center (volume licensing)  "
f1.keywords: NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: roryh, racheg
audience: Admin
ms.topic: how-to 
ms.service: microsoft-365-business
ms.subservice: m365-commerce-volume-licensing
ms.collection:
- Tier1
- scotvorg
ms.custom: 
- commerce_vl
- AdminTemplateSet                                          
search.appverid: MET150
ms.localizationpriority: medium
description: "Learn how to sign in to the Microsoft 365 admin center for volume licensing products."
ms.date: 01/10/2025
---

# Sign in to the Microsoft 365 admin center (volume licensing)  

Customers can view and manage their Microsoft volume licensing (VL) agreements within a dedicated section of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> available only to authorized VL users.

## Before you begin

You must have a VL role to access the VL pages in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.  

VL roles are assigned by one of the following people:

- A partner or seller who assigns you a role during the contract creation process.
- An administrator of the VL agreement who adds you as a user and invites you to sign in to register.

> [!NOTE]
> Global administrators in the Microsoft 365 admin center don't have access to VL features. It's up to the VL agreement administrator to add any users, including global administrators, who might want access to specific license IDs. For more information, see [Commonly used Microsoft 365 admin center roles](../../admin/add-users/about-admin-roles.md#commonly-used-microsoft-365-admin-center-roles), and [Volume licensing roles](../../admin/add-users/about-admin-roles.md#volume-licensing-roles).

## Where to sign in to view and manage your volume licenses

To view your volume licenses and access software downloads and VL keys, you must sign in to one of the following locations:

- Commercial users and Government Community Cloud (GCC) users can sign in to the public cloud instance of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
- Government Community Cloud High volume licensing users can go to the <a href="https://portal.office365.us/adminportal/home" target="_blank">GCC High Microsoft 365 admin center</a>.
- US Department of Defence cloud volume licensing users can go to the <a href="https://portal.apps.mil/adminportal/home" target="_blank">DoD Microsoft 365 admin center</a>.

> [!NOTE]
> Users who access both public clouds and GCC High clouds must have a separate ID for the GCC High Microsoft 365 admin center.

### If you’re registering a volume license agreement for the first time

The first time that you register a VL agreement, use the following steps:

1. Locate the welcome email from "microsoft-noreply\@microsoft.com" with the subject line "Action required: Sign in to manage your volume licensing assets."
2. In the welcome email, select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">use your work or school account</a> link to sign in with your Microsoft Entra ID (previously called a work or school account). If you already use a Microsoft online service, you already have a Microsoft Entra ID. Try signing in with the same account that you use to access that service.

    > [!TIP]
    > Users with existing VL permissions, or who manage online services, should use the sign in with the same ID so that all their licensing contracts and online services are accessed with one ID.

3. Go to the business email mentioned in the welcome email and find an email with the subject line "Registration successful: Welcome to Microsoft admin center."
4. Select **Get Started** to go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, then select **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a>.

> [!NOTE]
> We highly recommend that you select **Role Assignments** and immediately add another VL administrator for each contract ID.

### If you previously registered a volume licensing agreement

After you register a VL agreement in the Microsoft 365 admin center, no new welcome emails are sent for subsequent agreements or license IDs that list you as a VL contact with the same business email address. More licenses are automatically available in the Microsoft 365 admin center on the **Billing** > **Your Products** > **Volume Licensing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2297440" target="_blank">Contracts</a> page.

## Who receives the volume licensing welcome email?

After you submit your VL agreement, welcome emails are sent to both the Primary Contact (Pri) and Notices and Online Administrator contact (NTC) that you provided to Microsoft in the VL document.

The welcome email is sent from the email address "microsoft-noreply\@microsoft.com" with the subject line "Action required: Sign in to manage your volume licensing assets."

> [!NOTE]
> If you can’t find the email in your inbox, check your junk or spam folders.

If you don't have access to the business email address the welcome email is sent to, ask the owner of that email to forward you any invitation and registration confirmations emails.

## Sign up for a new Microsoft Entra ID

Organizations with no online presence with Microsoft must [sign up](https://signup.microsoft.com/get-started/signup?products=8339cc50-d965-4ad5-bb94-749021a5ebf9&origin=tenantonly&ali=1&ru=https%3a%2f%2fadmin.microsoft.com) for a new Microsoft Entra ID account (also known as a tenant) to allow VL users access to the Microsoft 365 admin center. This doesn't require the user, or the organization, to buy or use any Microsoft products or services, like Microsoft 365.

To create a Microsoft Entra ID using your organization's email domain (like aminata\@fourthcoffee.com), you must provide proof that the organization owns that domain. This proof might be something that your organization’s IT administrator prefers to complete, rather than the VL user.

Alternatively, if you need a Microsoft Entra ID format that isn't linked to the organization’s email domain (like aminata\@fourthcoffee.onmicrosoft.com), you can create one independently from an IT administrator. Before you deploy any online services like Microsoft 365, we highly recommend that your organization takes over such a Microsoft Entra ID tenant and link it to the organization's own domain.

> [!TIP]
> Make sure to write down your user ID because you need it later.

## Troubleshooting

This section explains how to resolve issues that you might encounter when you try to sign in to the Microsoft 365 admin center to perform VL tasks.

### You’re redirected to the Azure portal when you sign in

When you try to sign in to the Microsoft 365 admin center, you might be redirected to the Azure portal (azure.microsoft.com) instead, and are unable to access your VL information. This redirect happens because of your organization’s Outlook settings and isn’t something that Microsoft’s VL support team can resolve. Ask your IT administrators to check the safe links list in their Microsoft Defender policy settings. For more information, see [Set up Safe Links policies in Microsoft Defender for Office 365](/defender-office-365/safe-links-policies-configure). If you need help with configuring Outlook safe settings, you can open a [technical support request](https://support.serviceshub.microsoft.com/supportforbusiness/create).

### An error occurred while setting up your profile

If you can't sign in to the Microsoft 365 admin center, and repeatedly see the message "An error occurred while setting up your profile. Please refresh the page to try again," you might be trying to sign in with an invalid account type. Invalid account types include the following accounts:

- A Microsoft account (MSA). This account type is personal to you and isn't manged by your work organization. For example, you might sign in to a Microsoft service like email or Xbox with a log In ID like \<user>\@gmail.com or \<user>\@outlook.com. You must sign in with a Microsoft Entra ID instead.
- A self-service Microsoft Entra ID created when signing up for a cloud service. This account might look like it belongs to your work organization, but your organization has yet to take over or become the admin of the email domain to convert it into a Microsoft Entra ID.
- A Microsoft Entra ID that's different from the one that you used previously to sign in for volume licensing.  For example, you might be trying to sign in with your work email marcel\@contoso.com whereas you previously signed in to volume licensing with licenseAdmin\@contoso.com.

### Ready to become the admin of \<domain name\>

If you see the message "Ready to become an admin of \<domain name\>," this means that you're using a self-service (unmanaged) Microsoft Entra ID and are being prompted to take over the unmanaged directory to convert it to a managed one.

> [!TIP]
> If you see an Admin Tile in the App Picker when you sign in to portal.office.com or other online services, it means that the account is unmanaged. To find out whether you’re a user of a managed or unmanaged tenant, see [Determining Tenant Type](/power-platform/admin/powerapps-gdpr-dsr-guide-systemlogs#determining-tenant-type).

The takeover process involves you, or your organization's IT administrator, verifying ownership of the email domain by confirming the domain's DNS TXT records. The DNS TXT records are available from your domain name registrar, like GoDaddy.

For step-by-step instructions, see [How to takeover over an unmanaged directory](/azure/active-directory/enterprise-users/domains-admin-takeover#decide-how-you-want-to-take-over-an-unmanaged-directory).

After your organization converts your account to a managed Microsoft Entra ID, or you identify a suitable alternative Microsoft Entra ID, contact <a href="https://go.microsoft.com/fwlink/p/?linkid=2166757" target="_blank">Microsoft Volume Licensing Support</a> to request a new volume licensing profile. When you contact support, you must provide the following items:

- Your old sign-in ID
- The new Microsoft Entra ID you just signed up for
- VL agreement numbers
- The email address listed on the licensing agreement (the one where the invitation was sent)

### I don’t see the volume licensing page in the Microsoft 365 admin center

If you don't see the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> page after you sign in to the Microsoft 365 admin center, you can try the following actions to resolve it:

- **Use the correct URL:** Verify that you're going to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, then select **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a>.

  - If you don't see **Billing**, go to the bottom of the navigation menu, select **View all**, and then pin the **Billing** option to the navigation menu.
- **Use the correct role:** You might have access to the admin center because of a different role.

  - If you're a VL user, verify that you completed the license registration by selecting the link in the welcome email that you received.  
  - If you don't have a V role assigned to you, you can't access VL information in the admin center. Contact a VL administrator for your organization and ask them to grant you VL permissions. For more information, see [Who can view VL information in Microsoft 365 admin center?](/licensing/vlsc-faqs-home-page#who-can-view-vl-information-in-microsoft-365-admin-center-)
- **Use the correct user ID:** Verify that the user ID you used to register VL licenses in the admin center is the same as the user ID that you're using to sign in.

### My volume licensing welcome email is invalid

The old Volume Licensing Service Center (VLSC) was retired in April 2024, and all existing customers were migrated to the Microsoft 365 admin center. If you received an invitation to the VLSC before April 2024 but haven't yet registered your account in the site, the invitation is now invalid. If you still need permissions to view and manage a VL agreement, ask a VL administrator in your organization to add you as a VL user. For more information, see [How do I manage users and roles?](user-roles-faq.yml#how-do-i-manage-users-and-roles-)

If there's no administrator for that agreement, ask the VL support team to create a new VL profile for you. You must be able to confirm the following information:

- VL agreement (license ID) number
- Business email address listed in the VL agreement
- The sign-in ID that you use to sign in to the Microsoft 365 admin center

## Contact volume licensing support

Submit a case in the admin center > <a href="https://go.microsoft.com/fwlink/p/?linkid=2166757" target="_blank">Help & Support</a>. If you’re unable to access the admin center, see [Contacting volume licensing support](/licensing/contact-us).
