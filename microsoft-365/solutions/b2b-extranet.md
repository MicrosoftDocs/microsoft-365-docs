---
title: "Create a B2B extranet with managed guests"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.collection: 
- SPO_Content
- M365-collaboration
- m365solution-3tiersprotection
- m365solution-securecollab
- m365initiative-externalcollab
ms.custom: 
localization_priority: Normal
f1.keywords: NOCSH
recommendations: false
description: "Learn how to create a B2B extranet site or team with managed guests from a partner organization."
---

# Create a B2B extranet with managed guests

You can use [Azure Active Directory Entitlement Management](/azure/active-directory/governance/entitlement-management-overview) to create a B2B extranet to collaborate with a partner organization that uses Azure Active Directory. This allows users to self-enroll in the extranet site or team and receive access via an approval workflow.

With this method of sharing resources for collaboration, the partner organization can help maintain and approve the guests on their end, reducing the burden on your IT department and allowing those most familiar with the collaboration agreement to manage user access.

This article walks through the steps to create a package of resources (in this case, a site or team) that you can share with a partner organization through a self-service access registration model. 

Before you begin, create the site or team that you want to share with the partner organization and enable it for guest sharing. See [Collaborate with guests in a site](collaborate-in-site.md) or [Collaborate with guests in a team](collaborate-as-team.md) for more information. We also recommend that you review [Create a secure guest sharing environment](create-secure-guest-sharing-environment.md) for information about security and compliance features that you can use to help maintain your governance policies when collaborating with guests.

## License requirements

Using this feature requires an Azure AD Premium P2 license. 

Specialized clouds, such as Azure Germany and Azure China 21Vianet, are not currently available for use.

## Video demonstration

This video demonstrates the procedures covered in this article.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4wKUj?autoplay=false]

## Connect the partner organization

In order to invite guests from a partner organization, you need to add the partner's domain as a connected organization in Azure Active Directory.

To add a connected organization
1. In [Azure Active Directory](https://aad.portal.azure.com), click **Identity Governance**.
2. Click **Connected organizations**.
4. Click **Add connected organization**.
5. Type a name and description for the organization, and then click **Next: Directory + domain**.
6. Click **Add directory + domain**.
7. Type the domain for the organization that you want to connect, and then click **Add**.
8. Click **Connect**, and then click **Next: Sponsors**.
9. Add people from your organization or the organization that you're connecting to who you want to approve access for guests.
10. Click **Next: Review + Create**.
11. Review the settings that you've chosen and then click **Create**.

    ![Screenshot of the connected organizations page in Azure Active Directory](../media/identity-governance-connected-organizations.png)

## Choose the resources to share

The first step in selecting resources to share with a partner organization is to create a catalog to contain them.

To create a catalog
1. In [Azure Active Directory](https://aad.portal.azure.com), click **Identity Governance**.
2. Click **Catalogs**.
3. Click **New catalog**.
4. Type a name and description for the catalog and ensure that **Enabled** and **Enabled for external users** are both set to **Yes**.
5. Click **Create**.

   ![Screenshot of the catalogs page in Azure Active Directory Identity Governance](../media/identity-governance-catalogs.png)

Once the catalog has been created, you add the SharePoint site or team that you want to share with the partner organization.

To add resources to a catalog
1. In Azure AD Identity Governance, click **Catalogs**, and then click the catalog where you want to add resources.
2. Click **Resources** and then click **Add resources**.
3. Select the teams or SharePoint sites that you want to include in your extranet, and then click **Add**.

   ![Screenshot of the catalog resources page in Azure Active Directory Identity Governance](../media/identity-governance-catalog-resource.png)

Once you've defined the resources that you want to share, the next step is to create an access package, which defines the type of access that partner users are granted and the approval process for new partner users requesting access.

To create an access package
1. In Azure AD Identity Governance, click **Catalogs**, and then click the catalog where you want to create an access package.
2. Click **Access packages**, and then click **New access package**.
3. Type a name and description for the access package, and then click **Next: Resource roles**.
4. Choose the resources from the catalog that you want to use for your extranet.
5. For each resource, in the **Role** column, choose the user role you want to grant to the guests who use the extranet.
6. Click **Next: Requests**.
7. Under **Users who can request access**, choose **For users not in your directory**.
8. Ensure that the **Specific connected organizations** option is selected, and then click **Add directories**.
9. Choose the connected organization that you add earlier, and then click **Select**
10. Under **Approval**, choose **Yes** for **Require approval**.
11. Under **First approver**, choose one of the sponsors that you added earlier or choose a specific user.
12. Click **Add fallback** and select a fallback approver.
13. Under **Enable**, choose **Yes**.
14. Click **Next: Lifecycle**.
15. Choose the expiration and access review settings that you want to use, and then click **Next: Review + Create**.
16. Review your settings, and then click **Create**.

    ![Screenshot of the access packages screen in Azure Active Directory Identity Governance](../media/identity-governance-access-packages.png)

If you're partnering with a large organization, you may want to hide the access package. If the package is hidden, then users in the partner organization will not see the package on their *My Access* portal. Instead, they must be sent a direct link to sign up for the package. Hiding the access package can reduce the number of inappropriate access requests and can also help keep available access packages organized in the partner organization's portal.

To set an access package to hidden
1. In Azure AD Identity Governance, click **Access packages**, and then click your access package.
2. On the **Overview** page, click **Edit**.
3. Under **Properties**, choose **Yes** for **Hidden**, and then click **Save**.

   ![Screenshot of an edit access package properties screen](../media/identity-governance-access-package-hidden.png)

## Invite partner users

If you set the access package to hidden, you need to send a direct link to the partner organization so that they can request access to your site or team.

To find the access portal link
1. In Azure AD Identity Governance, click **Access packages**, and then click your access package.
2. On the **Overview** page, click **Copy to clipboard** link for the **My Access portal link**.

   ![Screenshot of access package properties with access portal link](../media/identity-governance-access-portal-link.png)

Once you have copied the link, you can share it with your contact at the partner organization and they can send it to the users on their collaboration team.

## See Also

[Create a secure guest sharing environment](create-secure-guest-sharing-environment.md)