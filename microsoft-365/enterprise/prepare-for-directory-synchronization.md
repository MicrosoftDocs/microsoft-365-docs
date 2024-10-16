---
title: "Prepare for directory synchronization to Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 09/25/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
f1.keywords:
- CSH
ms.custom: 
- Adm_O365
- 'O365p_AddUsersWithDirSync'
- 'O365M_AddUsersWithDirSync'
- 'O365E_HRCSetupAADConnectAboutLM617031'
- 'O365E_AddUsersWithDirSync'
ms.collection:
- scotvorg
- Ent_O365
- M365-identity-device-management
- must-keep
search.appverid:
- MET150
- MOP150
- MOE150
- MBS150
ms.assetid: 01920974-9e6f-4331-a370-13aea4e82b3e
description: "Describes how to prepare to provision users to Microsoft 365 by using directory synchronization and the long-term benefits of using this method."
---

# Prepare for directory synchronization to Microsoft 365

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

If you chose the hybrid identity model and configured protection for administrator accounts in [Step 2](protect-your-global-administrator-accounts.md) and user accounts in [Step 3](microsoft-365-secure-sign-in.md) of this solution, your next task is to deploy directory synchronization. The benefits of directory synchronization for your organization include:

- Reducing the administrative programs in your organization
- Optionally enabling single sign-on scenario
- Automating account changes in Microsoft 365

For more information about the advantages of using directory synchronization, see [hybrid identity with Microsoft Entra ID](/azure/active-directory/hybrid/whatis-hybrid-identity).

However, directory synchronization requires planning and preparation to ensure that your Active Directory Domain Services (AD DS) synchronizes to the Microsoft Entra tenant of your Microsoft 365 subscription with a minimum of errors.

Follow these steps in order for the best results.

> [!NOTE]
> Non-ASCII characters do not sync for any attributes on the AD DS user account.

## AD DS Preparation

To help ensure a seamless transition to Microsoft 365 by using synchronization, you must prepare your AD DS forest before you begin your Microsoft 365 directory synchronization deployment.
  
Your directory preparation should focus on the following tasks:

- Remove duplicate **proxyAddress** and **userPrincipalName** attributes.
- Update blank and invalid **userPrincipalName** attributes with valid **userPrincipalName** attributes.
- Remove invalid and questionable characters in the **givenName**, surname ( **sn** ), **sAMAccountName**, **displayName**, **mail**, **proxyAddresses**, **mailNickname**, and **userPrincipalName** attributes. For details about preparing attributes, see [List of attributes that are synced by the Azure Active Directory Sync Tool](https://go.microsoft.com/fwlink/p/?LinkId=396719).

    > [!NOTE]
    > These are the same attributes that Microsoft Entra Connect synchronizes.
  
## Multi-forest deployment considerations

For multiple forests and SSO options, use a [Custom Installation of Microsoft Entra Connect](/azure/active-directory/hybrid/how-to-connect-install-custom).
  
If your organization has multiple forests for authentication (logon forests), we highly recommend the following:
  
- **Consider consolidating your forests.** In general, there's more overhead required to maintain multiple forests. Unless your organization has security constraints that dictate the need for separate forests, consider simplifying your on-premises environment.
- **Use only in your primary logon forest.** Consider deploying Microsoft 365 only in your primary logon forest for your initial rollout of Microsoft 365.

If you can't consolidate your multi-forest AD DS deployment or are using other directory services to manage identities, you might be able to synchronize them with the help of Microsoft or a partner.
  
See [Topologies for Microsoft Entra Connect](/azure/active-directory/hybrid/plan-connect-topologies) for more information.
  
## Features that are dependent on directory synchronization
  
Directory synchronization is required for the following features and functionality:
  
- Microsoft Entra seamless single sign-on (SSO)
- Skype coexistence
- Exchange hybrid deployment, including:
  - Fully shared global address list (GAL) between your on-premises Exchange environment and Microsoft 365.
  - Synchronizing GAL information from different mail systems.
  - The ability to add users to and remove users from Microsoft 365 service offerings. This requires the following:
    - Two-way synchronization must be configured during directory synchronization setup. By default, directory synchronization tools write directory information only to the cloud. When you configure two-way synchronization, you enable write-back functionality so that a limited number of object attributes are copied from the cloud, and then written them back to your local AD DS. Write-back is also referred to as Exchange hybrid mode.
  - An on-premises Exchange hybrid deployment.
  - The ability to move some user mailboxes to Microsoft 365 while keeping other user mailboxes on-premises.
  - Safe senders and blocked senders on-premises are replicated to Microsoft 365.
  - Basic delegation and send-on-behalf-of email functionality.
  - You have an integrated on-premises smart card or multifactor authentication solution.
- Synchronization of photos, thumbnails, conference rooms, and security groups

## 1. Directory cleanup tasks

Before you synchronize your AD DS to your Microsoft Entra tenant, you need to clean up your AD DS.

> [!IMPORTANT]
> If you don't perform AD DS cleanup before you synchronize, it can lead to a significant negative impact on the deployment process. It might take days, or even weeks, to go through the cycle of directory synchronization, identifying errors, and re-synchronization.

In your AD DS, complete the following clean-up tasks for each user account that will be assigned a Microsoft 365 license:

1. Ensure a valid and unique email address in the **proxyAddresses** attribute.

2. Remove any duplicate values in the **proxyAddresses** attribute.

3. If possible, ensure a valid and unique value for the **userPrincipalName** attribute in the user's **user** object. For the best synchronization experience, ensure that the AD DS UPN matches the Microsoft Entra UPN. If a user doesn't have a value for the **userPrincipalName** attribute, then the **user** object must contain a valid and unique value for the **sAMAccountName** attribute. Remove any duplicate values in the **userPrincipalName** attribute.

4. For optimal use of the global address list (GAL), ensure the information in the following attributes of the AD DS user account is correct:

   - givenName
   - surname
   - displayName
   - Job Title
   - Department
   - Office
   - Office Phone
   - Mobile Phone
   - Fax Number
   - Street Address
   - City
   - State or Province
   - Zip or Postal Code
   - Country or Region

## 2. Directory object and attribute preparation

Successful directory synchronization between your AD DS and Microsoft 365 requires that your AD DS attributes are properly prepared. For example, you need to ensure that specific characters aren't used in certain attributes that are synchronized with the Microsoft 365 environment. Unexpected characters don't cause directory synchronization to fail but might return a warning. Invalid characters will cause directory synchronization to fail.

Directory synchronization will also fail if some of your AD DS users have one or more duplicate attributes. Each user must have unique attributes.

The attributes that you need to prepare are listed here:

- **displayName**

  - If the attribute exists in the user object, it's synchronized with Microsoft 365.
  - If this attribute exists in the user object, there must be a value for it. That is, the attribute must not be blank.
  - Maximum number of characters: 256

- **givenName**

  - If the attribute exists in the user object, it's synchronized with Microsoft 365, but Microsoft 365 doesn't require or use it.
  - Maximum number of characters: 64

- **mail**

  - The attribute value must be unique within the directory.

    > [!NOTE]
    > If there are duplicate values, the first user with the value is synchronized. Subsequent users will not appear in Microsoft 365. You must modify either the value in Microsoft 365 or modify both of the values in AD DS in order for both users to appear in Microsoft 365.

- **mailNickname** (Exchange alias)

  - The attribute value can't begin with a period (.).
  - The attribute value must be unique within the directory.

    > [!NOTE]
    > Underscores ("_") in the synchronized name indicates that the original value of this attribute contains invalid characters. For more information on this attribute, see [Exchange alias attribute](/powershell/module/exchange/set-mailbox).
    >

- **proxyAddresses**

  - Multiple-value attribute
  - Maximum number of characters per value: 256
  - The attribute value must not contain a space.
  - The attribute value must be unique within the directory.
  - Invalid characters: \< \> ( ) ; , [ ] "
  - Letters with diacritical marks, such as umlauts, accents, and tildes, are invalid characters.

    The invalid characters apply to the characters following the type delimiter and ":", such that SMTP:User@contso.com is allowed, but SMTP:user:M@contoso.com isn't.

    > [!IMPORTANT]
    > All Simple Mail Transport Protocol (SMTP) addresses should comply with email messaging standards. Remove duplicate or unwanted addresses if they exist.

- **sAMAccountName**

  - Maximum number of characters: 20
  - The attribute value must be unique within the directory.
  - Invalid characters: [ \ " | , / : \< \> + = ; ? \* ']
  - If a user has an invalid **sAMAccountName** attribute but has a valid **userPrincipalName** attribute, the user account is created in Microsoft 365.
  - If both **sAMAccountName** and **userPrincipalName** are invalid, the AD DS **userPrincipalName** attribute must be updated.

- **sn** (surname)

  - If the attribute exists in the user object, it's synchronized with Microsoft 365, but Microsoft 365 doesn't require or use it.

- **targetAddress**

    It's required that the **targetAddress** attribute (for example, SMTP:tom@contoso.com) that's populated for the user must appear in the Microsoft 365 GAL. In third-party messaging migration scenarios, this would require the Microsoft 365 schema extension for the AD DS. The Microsoft 365 schema extension would also add other useful attributes to manage Microsoft 365 objects that are populated by using a directory synchronization tool from AD DS. For example, the **msExchHideFromAddressLists** attribute to manage hidden mailboxes or distribution groups would be added.

  - Maximum number of characters: 256
  - The attribute value must not contain a space.
  - The attribute value must be unique within the directory.
  - Invalid characters: \ \< \> ( ) ; , [ ] "
  - All Simple Mail Transport Protocol (SMTP) addresses should comply with email messaging standards.

- **userPrincipalName**

  - The **userPrincipalName** attribute must be in the Internet-style sign-in format where the user name is followed by the at sign (@) and a domain name: for example, user@contoso.com. All Simple Mail Transport Protocol (SMTP) addresses should comply with email messaging standards.
  - The maximum number of characters for the **userPrincipalName** attribute is 113. A specific number of characters are permitted before and after the at sign (@), as follows:
  - Maximum number of characters for the username that is in front of the at sign (@): 64
  - Maximum number of characters for the domain name following the at sign (@): 48
  - Invalid characters: \ % &amp; \* + / = ? { } | \< \> ( ) ; : , [ ] "
  - Characters allowed: A – Z, a - z, 0 – 9, ' . - _ ! # ^ ~
  - Letters with diacritical marks, such as umlauts, accents, and tildes, are invalid characters.
  - The @ character is required in each **userPrincipalName** value.
  - The @ character can't be the first character in each **userPrincipalName** value.
  - The username can't end with a period (.), an ampersand (&amp;), a space, or an at sign (@).
  - The username can't contain any spaces.
  - Routable domains must be used; for example, local or internal domains can't be used.
  - Unicode is converted to underscore characters.
  - **userPrincipalName** can't contain any duplicate values in the directory.

## 3. Prepare the userPrincipalName attribute

Active Directory is designed to allow the end users in your organization to sign in to your directory by using either **sAMAccountName** or **userPrincipalName**. Similarly, end users can sign in to Microsoft 365 by using the user principal name (UPN) of their work or school account. Directory synchronization attempts to create new users in Microsoft Entra ID by using the same UPN that's in your AD DS. The UPN is formatted like an email address.

In Microsoft 365, the UPN is the default attribute that's used to generate the email address. It's easy to get **userPrincipalName** (in AD DS and in Microsoft Entra ID) and the primary email address in **proxyAddresses** set to different values. When they're set to different values, there can be confusion for administrators and end users.

It's best to align these attributes to reduce confusion. To meet the requirements of single sign-on with Active Directory Federation Services (AD FS) 2.0, you need to ensure that the UPNs in Microsoft Entra ID and your AD DS match and are using a valid domain namespace.

## 4. Add an alternative UPN suffix to AD DS

You might need to add an alternative UPN suffix to associate the user's corporate credentials with the Microsoft 365 environment. A UPN suffix is the part of a UPN to the right of the @ character. UPNs that are used for single sign-on can contain letters, numbers, periods, dashes, and underscores, but no other types of characters.

For more information on how to add an alternative UPN suffix to Active Directory, see [Prepare for directory synchronization](https://go.microsoft.com/fwlink/p/?LinkId=525430).

## 5. Match the AD DS UPN with the Microsoft 365 UPN

If you've already set up directory synchronization, the user's UPN for Microsoft 365 might not match the user's AD DS UPN that's defined in your AD DS. This condition can occur when a user was assigned a license before the domain was verified. To fix this, use [PowerShell to fix duplicate UPN](https://go.microsoft.com/fwlink/p/?LinkId=396730) to update the user's UPN to ensure that the Microsoft 365 UPN matches the corporate user name and domain. If you're updating the UPN in the AD DS and would like it to synchronize with the Microsoft Entra identity, you need to remove the user's license in Microsoft 365 prior to making the changes in AD DS.

Also see [How to prepare a non-routable domain (such as .local domain) for directory synchronization](prepare-a-non-routable-domain-for-directory-synchronization.md).

## Next steps

After you've completed steps 1 through 5, see [Set up directory synchronization](set-up-directory-synchronization.md).
