---
title: "Azure AD configuration for encryption from Microsoft Purview Information Protection"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: M365-security-compliance
description: Azure AD management considerations when content is encrypted by Microsoft Purview Information Protection.
---

# Azure AD configuration for encryption content

If you protect sensitive items such as emails and documents by using encryption from the Azure Rights Management Service from [Microsoft Purview Information Protection](information-protection.md), there are some optional Azure Active Directory (AD) configurations that can prevent authorized access to this encrypted content.

Similarly, if your users receive encrypted email from another organization or collaborate with other organizations that encrypt documents by using the Azure Rights Management Service, your users might not be able to open that email or document because of how their Azure AD is configured.

> [!NOTE]
> Examples of encryption by the Azure Rights Management Service include:
> - A file or email that has a [sensitivity label](sensitivity-labels.md) applied and that label applies the encryption.
> - Emails that aren't labeled but are still encrypted by using [Microsoft Purview Message Encryption](set-up-new-message-encryption-capabilities).
> - A document or email that has been encrypted in an Office app by using the older Information Rights Management (IRM) feature to restrict access.
> - A document or email that's encrypted by a third-party solution using the Microsoft Information Protection SDK.

These optional Azure AD configurations that can prevent authorized access to encrypted content include Azure AD [External Identities cross-tenant access settings](/azure/active-directory/external-identities/cross-tenant-access-overview) and Azure AD [Conditional Access](/azure/active-directory/conditional-access/overview).

For example:

- A user can't open encrypted email sent from another organization. Or, a user reports that the recipients in another organization can't open the encrypted email they sent them.

- Your organization collaborates with another organization on a joint project, and project documents are protected by encrypting them, granting access and editing permissions by using groups in Azure AD. Users can't open the documents encrypted users in the other organization.

- Users can successfully open an encrypted document when they are in the office, but can't when they try to access this document remotely and they're prompted for two-factor authentication.

Use the following sections to help configure your organization's Azure AD, or relay the information to an Azure AD administrator, to ensure that access to the encryption service isn't inadvertently blocked. Without access to this service, users can't be authenticated and authorized to open encrypted content.

## How to configure cross-tenant access settings for encrypted content

By default, there's nothing to configure for cross-tenant authentication to work when users protect content by using encryption from the Azure Rights Management Service. However, your organization can restrict access by using Azure AD [External Identities cross-tenant access settings](/azure/active-directory/external-identities/cross-tenant-access-overview). Conversely, another organization can also configure these settings to restrict access with users in your organization. These settings affect opening any encrypted items, which include encrypted emails and encrypted documents.

For example, another organization might have settings configured that prevent their users from opening content encrypted by your organization. In this scenario, until their Azure AD admin reconfigures their cross-tenant settings, an external user attempting to open that content will see a message that informs them **Access is blocked by the organization** with an email address to contact to request access. 

Whenever cross-tenant access settings restrict access by applications, they must be configured to allow access to Microsoft Azure Information Protection, which has an app ID of `00000012-0000-0000-c000-000000000000`. If this access isn't allowed, users can't be authenticated and authorized to open encrypted content. This configuration can be set as a default setting and as an organizational setting:

- To permit sharing of encrypted content with another organization, create an inbound setting that allows access to Microsoft Azure Information Protection (ID: 00000012-0000-0000-c000-000000000000). 

- To permit access to encrypted content that users receive from other organizations, create an outbound setting that allows access to Microsoft Azure Information Protection (ID: 00000012-0000-0000-c000-000000000000)

When these settings are configured for Microsoft Azure Information Protection, the application displays **Microsoft Rights Management Services**.

For more information how to configure these cross-tenant access settings, see [Configure cross-tenant access settings for B2B collaboration](/azure/active-directory/external-identities/cross-tenant-access-settings-b2b-collaboration).

If you have also configured Azure Active Directory Conditional Access policies that require multi-factor authentication (MFA) for users, cross-tenant access settings must also be configured to trust MFA claims from one, many, or all external Azure AD organizations. Then see the following section how to configure Conditional Access for encrypted content.

## Conditional Access policies

If your organization has implemented [Azure Active Directory Conditional Access policies](/azure/active-directory/conditional-access/overview), check the configuration of those policies. If the policies include **Microsoft Azure Information Protection** and the policy extends to external users, those external users must have a guest account in your tenant even if they have an Azure AD account in their own tenant.

Without this guest account, they can't open the encrypted document and see an error message. The message text might inform them that their account needs to be added as an external user in the tenant, with the incorrect instruction for this scenario to **Sign out and sign in again with a different Azure Active Directory user account**.

If you can't create and configure guest accounts in your tenant for external users who need to open content encrypted by your organization, you must either remove Azure Information Protection from the Conditional Access policies, or exclude external users from the policies.

For more information about Conditional Access and Azure Information Protection, see the frequently asked question, [I see Azure Information Protection is listed as an available cloud app for conditional access—how does this work?](/azure/information-protection/faqs#i-see-azure-information-protection-is-listed-as-an-available-cloud-app-for-conditional-accesshow-does-this-work)

## Next steps

If you use sensitivity labels to encrypt documents and emails, you might be interested in [Support for external users and labeled content](sensitivity-labels-office-apps.md#support-for-external-users-and-labeled-content) to understand which settings apply across tenants, and options for users who don't have an account in Azure AD. For instructions to configure a label for encryption, see [Restrict access to content by using sensitivity labels to apply encryption](encryption-sensitivity-labels.md).

If you're interested to learn in detail how the encryption service works, see [How does Azure RMS work? Under the hood](/azure/information-protection/how-does-it-work).


