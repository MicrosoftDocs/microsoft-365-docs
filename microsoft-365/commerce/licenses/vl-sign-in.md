---
title: "Sign in to the Microsoft 365 admin center for volume licensing"
f1.keywords: NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: aasthatiwari, atuldubey
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
service.tree.id: e6e1ea2a-04a0-4f78-bc75-7d45c90eee39
search.appverid: MET150
ms.localizationpriority: medium
description: "Learn how to sign in to the Microsoft 365 admin center to manage volume licensing agreements, software downloads, and license keys."
ms.date: 01/19/2026
---

# Sign in to the Microsoft 365 admin center for volume licensing

Customers can view and manage their Microsoft volume licensing (VL) agreements within a dedicated section of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> available only to authorized VL users. This guide explains how to sign in to the admin center and access your volume licensing resources.

## Before you begin

You must have a VL role to access the VL pages in the Microsoft 365 admin center.  

Assign VL roles by using one of the following options:

- A partner or seller who assigns you a role during the contract creation process.
- An administrator of the VL agreement who adds you as a user and invites you to sign in to register. If you have an Enterprise Agreement (EA) or Enterprise subscription (EAS), you don't receive an invitation to sign in to register. Instead, the administrator of the VL agreement grants you access.

> [!NOTE]
> Global Administrators in the admin center don't have access to VL features. The VL agreement administrator adds any users, including Global Administrators, who might want access to specific license IDs. For more information, see [Commonly used Microsoft 365 admin center roles](../../admin/add-users/about-admin-roles.md#commonly-used-microsoft-365-admin-center-roles) and [Volume licensing roles](../../admin/add-users/about-admin-roles.md#volume-licensing-roles).

[!INCLUDE [global-administrator-note](../../includes/global-administrator-note.md)]

## Where to sign in to view and manage your volume licenses

To view your volume licenses and access software downloads and VL keys, you must sign in to one of the following locations:

- Commercial users and Government Community Cloud (GCC) users can sign in to the public cloud instance of the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
- Government Community Cloud High VL users can go to the <a href="https://portal.office365.us/adminportal/home" target="_blank">GCC High Microsoft 365 admin center</a>.
- US Department of Defense cloud VL users can go to the <a href="https://portal.apps.mil/adminportal/home" target="_blank">DoD Microsoft 365 admin center</a>.

> [!NOTE]
> Users who access both public clouds and GCC High clouds must have a separate ID for the GCC High Microsoft 365 admin center. If you're an EA or EAS customer, any user with an Entra ID on a different cloud than the contract loses access to the contract. Users with an Entra ID on the same cloud as the contract continue to have uninterrupted access.

You can only access the VL contracts that are on the same cloud as your Entra ID. If you access VL contracts with Government Community Cloud High (GCC High) or US Department of Defense cloud (DoD) licenses, you must use the Entra ID in those clouds to access VL pages in the Microsoft 365 admin center.

Public and GCC users can't access VL contracts with GCC High or DoD cloud licenses. Similarly, GCC High or DoD users can't access VL contracts with public or GCC cloud licenses.

For example, Sarah from Contoso wants to manage VL licenses from both the public cloud and the GCC High cloud across multiple VL contracts. Sarah must have a separate Entra ID for both the public and GCC High clouds to manage VL licenses from each cloud. If she doesn't have an Entra ID for either cloud, then she must contact the respective Entra tenant admins or [Sign up for a new Microsoft Entra ID](#sign-up-for-a-new-microsoft-entra-id).

An Online Administrator of VL contracts from the public cloud can assign roles only to Sarah's public cloud Entra ID, while a GCC High cloud VL admin can assign roles exclusively to GCC High cloud Entra IDs.

To manage public cloud VL Contracts, Sarah must go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">public cloud instance of the Microsoft 365 admin center</a>. To manage GCC High cloud VL Contracts, she must go to the <a href="https://portal.office365.us/adminportal/home" target="_blank">GCC High cloud instance of the Microsoft 365 admin center</a>.

### If you're registering a volume license agreement for the first time (non-EA and non-EAS customers only)

When you register a VL agreement for the first time, use the following steps:

1. Find the welcome email from "microsoft-noreply\@microsoft.com" with the subject line "Action required: Sign in to manage your volume licensing assets."
1. In the welcome email, select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">use your work or school account</a> link to sign in by using your Microsoft Entra ID (previously called a work or school account). If you already use a Microsoft online service, you already have a Microsoft Entra ID. Try signing in by using the same account that you use to access that service.

    > [!TIP]
    > Users with existing VL permissions, or who manage online services, should use the sign in by using the same ID so that all their licensing contracts and online services are accessed by using one ID.

1. Go to the business email mentioned in the welcome email and find an email with the subject line "Registration successful: Welcome to Microsoft admin center."
1. Select **Get Started** to go to Microsoft 365 admin center.
1. Go to the **Billing** > **Your products** page, and then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.

> [!NOTE]
> We highly recommend that you select **Role Assignments** and immediately add another VL Administrator for each contract ID.

### If you're registering a VL agreement for the first time (EA and EAS customers only)

1. Find the notification email from microsoft-noreply\@microsoft.com with the subject line "Permission changes for Microsoft Volume Licensing contracts."
1. In the email, select the Microsoft 365 admin center link to sign in by using your Microsoft Entra ID or sign-in email address (previously called a work or school account). If you already use a Microsoft online service, you already have a Microsoft Entra ID. Try signing in by using the same account that you use to access that service.

   > [!TIP]
   > Users with existing VL permissions, or who manage online services, should use the sign in by using the same ID so that all their licensing contracts and online services are accessed by using one ID.

1. Go to the **Billing** > **Your products** page, and then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.

### If you previously registered a volume licensing agreement

After you register a VL agreement in the admin center, the system doesn't send new welcome emails for subsequent agreements or license IDs that list you as a VL contact with the same business email address. You can see more licenses automatically available in the admin center on the **Billing** > **Your Products** > **Volume Licensing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2297440" target="_blank">Contracts</a> page.

## Who receives the volume licensing welcome email?

After you submit your VL agreement, Microsoft sends welcome emails to both the Primary Contact (Pri) and Notices and Online Administrator contact (NTC) that you provide in the VL document.

The system sends the welcome email from the email address "microsoft-noreply@microsoft.com" with the subject line "Action required: Sign in to manage your volume licensing assets." If you're an EA or EAS customer, you receive a notification email with the subject line "Permission changes for Microsoft Volume Licensing contracts."

> [!NOTE]
> If you can't find the email in your inbox, check your junk or spam folders.

**Non-EA and non-EAS customers:** If you don't have access to the business email address the system sends the welcome email to, ask the owner of that email to forward you any invitation and registration confirmations emails.

## Sign up for a new Microsoft Entra ID

Organizations with no online presence with Microsoft must [sign up](https://signup.microsoft.com/get-started/signup?products=8339cc50-d965-4ad5-bb94-749021a5ebf9&origin=tenantonly&ali=1&ru=https%3a%2f%2fadmin.microsoft.com) for a new Microsoft Entra ID account (also known as a tenant) to allow VL users access to the Microsoft 365 admin center. This step doesn't require the user or the organization to buy or use any Microsoft products or services, like Microsoft 365.

To create a Microsoft Entra ID using your organization's email domain (like aminata@fourthcoffee.com), you must provide proof that the organization owns that domain. Your organization's IT administrator might prefer to complete this proof, rather than the VL user.

Alternatively, if you need a Microsoft Entra ID format that isn't linked to the organization's email domain (like aminata\@fourthcoffee.onmicrosoft.com), you can create one independently from an IT administrator. Before you deploy any online services like Microsoft 365, we highly recommend that your organization takes over such a Microsoft Entra tenant and link it to the organization's own domain.

> [!TIP]
> Make sure to write down your user ID because you need it later.

## Changes to volume licensing access for cross-cloud users

Starting January 19, 2026, VL users must use separate Microsoft Entra IDs for public and government cloud access. You can no longer sign in to the Microsoft 365 admin center with a single Entra ID to access VL contracts that are in different clouds (sometimes referred to as "cross-cloud access"). Your Entra ID must match the cloud associated with your VL contract, or you lose access.

For example, today, user Parker McLean, can sign in to the Microsoft 365 admin center by using his public cloud Entra ID, and he can access both his public and government enrollments, as shown in the following diagram:

:::image type="content" source="../../media/vl-old-signin-flow.png" alt-text="Diagram of the previous volume licensing sign-in flow using a single Entra ID for both public and government cloud access." lightbox="../../media/vl-old-signin-flow.png":::

Starting January 19, 2026, Parker must maintain two separate Entra IDs to sign in to the appropriate Microsoft 365 admin center for each environment, as shown in the following diagram:

:::image type="content" source="../../media/vl-new-signin-flow.png" alt-text="Diagram of the new volume licensing sign-in flow using separate Entra IDs for public and government cloud access." lightbox="../../media/vl-new-signin-flow.png":::

### Find out if this change affects you (for users)

As a VL user, you can tell if this change affects you if you receive either of the following signals:

- You receive an email with the subject "Action Required: Ensure Correct Account Access by January 19th, 2026."
- When you sign in to the Microsoft 365 admin center, you see a banner that says "Some users may lose access to certain VL contracts due to a mismatch between the Microsoft Entra ID’s cloud and the contract’s cloud," as shown in the following screenshot:

:::image type="content" source="../../media/vl-at-risk-access-banner.png" alt-text="Screenshot of the banner displayed in the Microsoft 365 admin center if you have VL contracts that are at risk of losing access." lightbox="../../media/vl-at-risk-access-banner.png":::

If you receive either of these signals, your access is affected. You must fix the issue to avoid losing access to your VL contracts.

### Fix your cross-cloud access issue (for users)

If you're a VL user affected by the change to cross-cloud access, use the following steps to fix your access.

#### Step 1. Identify VL contracts marked as ACCESS AT RISK

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, go to **Billing** > **Your products**, and select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
1. In the **Contracts** section, select **View contracts**.
1. At the top of the **Contracts** page, you see a banner that says, "Some users may lose access to certain VL contracts due to a mismatch between their Microsoft Entra ID's cloud and the contract's cloud." Select **View my access at risk**.
1. On the **Contracts** page, the list shows License IDs that have the **ACCESS AT RISK** tag.

:::image type="content" source="../../media/vl-access-at-risk-contract.png" alt-text="Screenshot of a VL contract with the ACCESS AT RISK tag."  lightbox="../../media/vl-access-at-risk-contract.png":::

#### Step 2. Create a new Microsoft Entra ID and send the details to your admin

1. Follow the steps in [Sign up for a new Microsoft Entra ID](#sign-up-for-a-new-microsoft-entra-id) to create a new Entra ID, or use a different, existing Entra ID for the correct cloud (public or government), depending on the affected VL contracts.
1. Contact your admin and provide the VL contract IDs and Entra ID details. Your admin adds your Entra ID to the affected contracts.
1. After your admin confirms the changes are complete, proceed to [Step 3. Verify that the access issue is fixed](#step-3-verify-that-the-access-issue-is-fixed).

#### Step 3. Verify that the access issue is fixed

1. After your admin adds your Entra ID to the VL contracts you specified, you receive an email that confirms your updated permissions.
1. Sign in to the Microsoft 365 admin center with your new Entra ID. The banner shouldn't appear, and the VL contracts shouldn't have the **ACCESS AT RISK** tag. For information about where to sign in, see [Where to sign in to view and manage your volume licenses](#where-to-sign-in-to-view-and-manage-your-volume-licenses).

### View a list of affected users (for admins)

As a VL admin, you can view a list of all your users who are at risk of losing access to certain VL contracts because of the Microsoft Entra ID mismatch.

1. In the admin center, on the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> page, you see a banner at the top that says "Some users may lose access to certain VL contracts due to a mismatch between their Microsoft Entra ID's cloud and the contract's cloud." Select **View users at risk**.
:::image type="content" source="../../media/vl-at-risk-contracts-banner.png" alt-text="Screenshot of the banner displayed in the Microsoft 365 admin center if you have users who are at risk." lightbox="../../media/vl-at-risk-contracts-banner.png":::
1. The **Manage Assignments** page opens and shows a list of all affected users with the **ACCESS AT RISK** tag. To see a list of all their VL contracts that are at risk, select **View access**.
:::image type="content" source="../../media/vl-access-at-risk-user.png" alt-text="Screenshot of a VL user with the ACCESS AT RISK tag."  lightbox="../../media/vl-access-at-risk-contract.png":::
1. Contact the affected users, and ask them to follow the steps in [Fix your cross-cloud access issue (for users)](#fix-your-cross-cloud-access-issue-for-users).

### Assign the correct Microsoft Entra ID to a VL contract (for admins)

To resolve the Microsoft Entra ID mismatch issue for a user, add their new Entra ID to the affected VL contracts. Use the following steps to resolve the Entra ID mismatch issue.

1. In the admin center, go to the **Billing** > **Your products** page, and then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
1. In the **Role assignments** section, select **Manage VL role assignments**. The **Manage Assignments** page opens and contains a list of VL users.
1. On the **Manage Assignments** page, select **Assign users to contract**.
1. On the **Assign users to contracts** page, select **Add or edit users**.
1. In the **Add or edit users** side panel, type the email address of the user you want to assign.
1. Select the check box for the user, and then select **Review + Apply**.
1. On the **Assign users to contracts** page, select **Add contracts**.
1. In the **Add contracts to user** side panel, select the contracts to assign to the selected user, and then select **Add**.
1. On the **Assign users to contracts** page, select **Assign roles**.
1. In the **Assign roles to selected contracts** side panel, from the drop-down list, select the roles to assign to the user, and then select **Apply**.
1. Select **Verify and save user assignments**.
1. On the **Assign users to contracts** page, you see a confirmation message that says it can take up to two hours for the role to be assigned.

After the user assignment is completed, you receive a confirmation email. A separate permission change email is sent to the user.

## Troubleshooting

This section explains how to resolve problems that you might encounter when you try to sign in to the Microsoft 365 admin center to perform VL tasks.

### You're redirected to the Azure portal when you sign in

When you try to sign in to the admin center, you might be redirected to the Azure portal (azure.microsoft.com) instead, and are unable to access your VL information. This redirect happens because of your organization's Outlook settings and isn't something that Microsoft's VL support team can resolve. Ask your IT administrators to check the safe links list in their Microsoft Defender policy settings. For more information, see [Set up Safe Links policies in Microsoft Defender for Office 365](/defender-office-365/safe-links-policies-configure). If you need help with configuring Outlook safe settings, you can open a [technical support request](https://support.serviceshub.microsoft.com/supportforbusiness/create).

### An error occurred while setting up your profile

If you can't sign in to the admin center, and you repeatedly see the message "An error occurred while setting up your profile. Please refresh the page to try again," you might be trying to sign in with an invalid account type. Invalid account types include the following accounts:

- A Microsoft account (MSA). This account type is personal to you and isn't managed by your work organization. For example, you might sign in to a Microsoft service like email or Xbox with a log In ID like \<user>\@gmail.com or \<user>\@outlook.com. You must sign in with a Microsoft Entra ID instead.
- A self-service Microsoft Entra ID created when signing up for a cloud service. This account might look like it belongs to your work organization, but your organization didn't take over or become the admin of the email domain to convert it into a Microsoft Entra ID.
- A Microsoft Entra ID that's different from the one that you used previously to sign in for volume licensing. For example, you might be trying to sign in with your work email marcel\@contoso.com whereas you previously signed in to volume licensing with licenseAdmin\@contoso.com.

### Ready to become the admin of \<domain name\>

If you see the message "Ready to become an admin of \<domain name\>," it means you're using a self-service (unmanaged) Microsoft Entra ID and the portal instructs you to take over the unmanaged directory and convert it to a managed directory.

> [!TIP]
> If you see an Admin Tile in the App Picker when you sign in to portal.office.com or other online services, it means that the account is unmanaged. To find out whether you're a user of a managed or unmanaged tenant, see [Determining Tenant Type](/power-platform/admin/powerapps-gdpr-dsr-guide-systemlogs#determining-tenant-type).

The takeover process involves you, or your organization's IT administrator, verifying ownership of the email domain by confirming the domain's DNS TXT records. You can get the DNS TXT records from your domain name registrar, like GoDaddy.

For step-by-step instructions, see [How to take over an unmanaged directory](/azure/active-directory/enterprise-users/domains-admin-takeover#decide-how-you-want-to-take-over-an-unmanaged-directory).

After your organization converts your account to a managed Microsoft Entra ID, or you identify a suitable alternative Microsoft Entra ID, contact <a href="https://go.microsoft.com/fwlink/p/?linkid=2166757" target="_blank">Microsoft Volume Licensing Support</a> to request a new volume licensing profile. When you contact support, provide the following items:

- Your old sign-in ID
- The new Microsoft Entra ID you just signed up for
- VL agreement numbers
- The email address listed on the licensing agreement (the one where the invitation was sent)

### I don't see the volume licensing page in the Microsoft 365 admin center

If you don't see the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> page after you sign in to the admin center, try the following actions to resolve the problem:

- **Use the correct URL:** Verify that you're going to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. Then go to **Billing** > **Your products** and select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.

  - If you don't see **Billing**, go to the bottom of the navigation menu, select **View all**, and then pin the **Billing** option to the navigation menu.

- **Use the correct role:**

  - If you're a VL user (Non-EA and non-EAS customers only), verify that you completed the license registration by selecting the link in the welcome email that you received.
  - You might have access to the admin center because of a different role, or you might not have a VL role assigned to you. Contact a VL Administrator for your organization and ask them to grant you VL permissions.

- **Use the correct user ID:**

  - **Non-EA and non-EAS customers only:** Verify that the user ID you used to register VL licenses in the admin center is the same as the user ID that you're using to sign in.
  - **EA and EAS customers only:** Verify that the user ID you used to sign in is the one to which access was given by the VL administrator.

### My volume licensing welcome email is invalid

The old Volume Licensing Service Center (VLSC) retired in April 2024, and Microsoft migrated all existing customers to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. If you received an invitation to the VLSC before April 2024 but didn't register your account in the site, the invitation is now invalid. If you still need permissions to view and manage a VL agreement, ask a VL Administrator in your organization to add you as a VL user. For more information, see [Manage volume licensing user roles](manage-user-roles-vl.md).

If there's no administrator for that agreement, ask the VL support team to create a new VL profile for you. You must be able to confirm the following information:

- VL agreement (License ID) number
- Business email address listed in the VL agreement
- The sign-in ID that you use to sign in to the Microsoft 365 admin center

## Contact volume licensing support

Submit a case in the admin center > <a href="https://go.microsoft.com/fwlink/p/?linkid=2166757" target="_blank">Help & Support</a>. If you can't access the admin center, see [Contact volume licensing support](contact-vl-support.md).
