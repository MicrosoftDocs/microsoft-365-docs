---
title: "Learn about regulations in Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/23/2023
audience: Admin
ms.topic: article
ms.custom: admindeeplinkMAC
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- tier1
search.appverid: 
- MOE150
- MET150
description: "Understand how to use and manage regulatory templates for building assessments in Microsoft Purview Compliance Manager."
---

# Learn about regulations in Compliance Manager


> [!IMPORTANT]
> The regulations that are available for your organization's use by default depend on your licensing agreement. [Review licensing details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-compliance-manager).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Regulations overview

The **Regulations** tab displays the list of regulations and certifications for which Compliance Manager provides control-mapping templates. When you build an assessment, you choose the underlying regulation by selecting from among our [set of regulatory templates](compliance-manager-templates-list.md), then select the services you want to assess for that regulation. Setting up Compliance Manager for multicloud support provides you with greater automation in testing and monitoring of controls.

Each regulatory template also comes in a universal version, which provides general control mapping that can broadly apply to services. Universal templates provide the most general type of implementation guidance and require manual implementation and testing by the organization. Note that US Government Community (GCC) Moderate, GCC High, and Department of Defense (DoD) customers can't currently use universal templates.

## Regulation availability and licensing

The [Microsoft data protection baseline](compliance-manager-assessments.md#data-protection-baseline-default-assessment) regulatory template is available for all organizations. The regulations designated as **premium** require purchase of a license to use them. Once you purchase a license for a regulation, you can create as many assessments for that regulation as you wish. Depending on your [licensing agreement](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-compliance-manager), your organization may be able to use up to three additional **premium** regulatory templates for free. When you begin creating assessments, Compliance Manager tracks how many templates are active so you can monitor your usage. To learn more, see [Active and inactive regulations](#active-and-inactive-regulations).

### Purchasing premium regulations

Licenses for premium regulatory templates can be obtained in various ways, depending on your Compliance Manager licensing agreement. Once your purchase has been finalized, the templates should become available in your tenant within 48 hours. Licenses for [activated regulations](#active-and-inactive-regulations) are good for one year.

- **Commercial and GCC Moderate**: Purchase licenses in the admin center ([learn more about subscriptions, licenses, and billing](/microsoft-365/commerce/)). Select the quantity of licenses you wish to purchase and your payment plan.
    - [Commercial](https://admin.microsoft.com/Adminportal/Home?#/catalog/offer-details/compliance-manager-premium-assessment-add-on/46E9BF2A-3C8D-4A69-A7E7-3DA04687636D)
    - [GCC Moderate](https://admin.microsoft.com/Adminportal/Home?#/catalog/offer-details/compliance-manager-premium-assessment-add-on/3129986d-5f4b-413b-a34b-b706db5a7669)
    - You may also acquire licenses through your participation in the [Cloud Solution Provider program](https://partner.microsoft.com/membership/cloud-solution-provider) or [volume licensing](https://www.microsoft.com/licensing/licensing-programs/licensing-programs).
- **GCC High and DOD accounts**: Purchase through [volume licensing](https://www.microsoft.com/licensing/licensing-programs/licensing-programs).

##### Staring a premium trial

You can try out premium regulation templates by acquiring trial versions of the licenses. Trial licenses are good for up to 25 templates for 90 days. Once you obtain your trial license, the templates should become available in your tenant within 48 hours. If your organization has a commercial license for Compliance Manager, you can learn how to start your trial at [About the free trial for Microsoft Purview Compliance Manager premium assessments](compliance-easy-trials-compliance-manager-assessments.md). If your organization is under a GCC or DOD license, choose the appropriate trial link for your organization:

- [GCC Moderate](https://admin.microsoft.com/Adminportal/Home?#/catalog/offer-details/compliance-manager-premium-assessment-add-on/87ed2908-0a8d-430a-9635-558ed42b581f)
- [GCC High](https://portal.office365.us/SubscriptionDetails?OfferId=e14362d7-2c11-4a43-9c92-59f1b499b96a)
- [DOD](https://portal.apps.mil/Commerce/Trial.aspx?OfferId=17e28290-7de6-41a9-af30-f6497396ab2e)

## Active and inactive regulations

Regulations display a status as either active or inactive:

- **Active** indicates use in at least one assessment.
- **Inactive** indicates it's not being used for an assessment.

When you use a premium regulation to create an assessment, that regulation's availability status changes to **Active** and the purchased license is active for one year. Your purchase will automatically renew unless you cancel.

### Activated regulations counter

The **Activated/Regulation** counter near the top of the **Regulations** page represents the number of regulatory templates in use out of the number you're eligible to use according to your licensing agreement and any purchased licenses. For example, if your counter shows 2/5, this means your organization has activated 2 regulations out of the 5 that are available to use. If your counter shows 5/2, this indicates that your organization exceeds its limits and needs to purchase 3 of the premium regulations in use.

Select **View details** the counter to view a detailed list of all regulations in use and their corresponding assessments.

## Regulations details page

Similarly, templates that belong to the same regulation family are also counted as one template. The regulation family is shown in the **Overarching regulation** column on the **Assessment templates** page. When you purchase a template license for a regulation and activate the template, it counts as one activated template even if you create assessments for different levels or versions of that regulation. For example, if you use a template for CMMC Level 1 and a template for CMMC Level 2, your activated templates counter increases by only one.

For further details, see [Compliance Manager licensing guidance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-compliance-manager).

## Grant user access to regulations

When you assign users a Compliance Manager role in the Microsoft Purview compliance portal, their role extends by default to all regulations (review the [Compliance Manager role types](compliance-manager-setup.md#role-types)). This access means that, depending on the user's role type, they can view or interact with any existing or future assessments created with that regulation.

You can give users a specific role that will apply to certain regulations by managing user roles from a regulation's details page. When you set a user's role for a regulation, the user will be able to interact at that role level for all assessments (existing and future) created with that regulation. (You can also restrict access to individual assessments following [these instructions](compliance-manager-assessments.md#grant-user-access-to-individual-assessments).)

External users who need access for auditing or other purposes can also be assigned an access role for regulations. You'll provide access to external individual by assigning them an Azure Active Directory (AD) role. Learn more about [assigning Azure AD roles](compliance-manager-setup.md#setting-permissions-in-azure-ad).

#### Steps for granting access

Follow the steps to grant user access to a regulation.

1. From the **Regulations** page, find the regulation you want to grant access to. Select it to open its details page.

1. In the upper-right corner, select **Manage user access**.

1. A **Manage user access** flyout pane appears. It has three tabs, one for each role of Reader, Assessor, and Contributor. Navigate to the tab for the role you want your user to hold for this regulation.

1. Select the **+ Add** command for the role tab you're on: **Add readers**, or **Add assessors** or **Add contributors**.

1. Another flyout pane appears which lists all the users in your organization. You can select the checkbox next to the username you want to add, or you can enter their name in the search bar and select the user from there. You can select multiple users at once.

1. After making all your selections, select **Add**.
    > [!NOTE]
    > If you assign a role to someone who already has an existing role, the new role assignment you choose will override their existing role. In this case, you'll see a confirmation box asking you to confirm the change in role.

1. The flyout pane will close and you'll arrive back at the regulation details page. Select **Save**.  A confirmation message at the top will confirm the new role assignment for that regulatin.

#### Steps for removing access

You can remove a user's access to individual regulations by following the steps below:

1. On the regulation's details page, select **Manage user access**.

1. On the **Manage user access** flyout pane, go the tab corresponding to the user's role you want to remove.

1. Find the user whose role you want to remove. Check the circle to the left of their name, then select the **Remove** command just below the role tab. To remove all users at once, simply select the **Remove all** command without checking the circle next to every user's name.

1. A **Remove access?** dialog appears, asking you to confirm the removal. Select **Remove access** to confirm the role removal.

1. Select **Save** on the flyout pane. The users' roles will now be removed from the assessment.

##### Note about multiple roles

- A user can have one role that applies to a regulation, while also holding another role that applies broadly to overall Compliance Manager access.

    - For example, if you've assigned a user a **Compliance Manager Reader** role in Microsoft Purview compliance portal **Permissions,** you can also assign that user a **Compliance Manager Assessor** role for a specific regulation. In effect, the user will hold the two roles at the same time, but their ability to edit data will be limited to the assessment to which they've been assigned the **Assessor** role.
    - Removing a regulation-based role won't remove the user's overall Compliance Manager role if they have one. If you want to change a user's overall role, you'll have to change it from the **Permissions** page in the Microsoft Purview compliance portal.

- For an individual regulation, one user can only hold one assessment-based role at a time.
    - For example, if a user holds a reader role for the GDPR regulation and you want to change them to a contributor role, you'll first need to remove their reader role, and then re-assign them the reader role.

> [!NOTE]
> Admins whose permissions for Compliance Manager were set in Azure AD won't appear on the **Manage user access** flyout pane. This means that if a user has access to one or more regulations, and their role is Global Administrator, Compliance Administrator, Compliance Data Administrator, or Security Administrator, they won't appear on this pane. Learn more about [setting Compliance Manager permissions and roles](compliance-manager-setup.md#set-user-permissions-and-assign-roles).
