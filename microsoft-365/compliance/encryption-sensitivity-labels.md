---
title: "Restrict access to content by using sensitivity labels to apply encryption"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "When you create a sensitivity label, you can restrict access to content that the label will be applied to. Sensitivity labels can use encryption to protect content."
---

# Restrict access to content by using sensitivity labels to apply encryption 

When you create a sensitivity label, you can restrict access to content that the label will be applied to. For example, with the encryption settings for a sensitivity label, you can protect content so that:

- Only users within your organization can open a confidential document or email.
- Only users in the marketing department can edit and print the promotion announcement document or email, while all other users in your organization can only read it.
- Users cannot forward an email or copy information from it that contains news about an internal reorganization.
- The current price list that is sent to business partners cannot be opened after a specified date.

When a document or email is encrypted, access to the content is restricted, so that it:

- Can be decrypted only by users authorized by the label’s encryption settings.
- Remains encrypted no matter where it resides, inside or outside your organization, even if the file’s renamed.
- Is encrypted both at rest (for example, in a OneDrive account) and in transit (for example, a sent email).

Finally, as an admin, when you configure a sensitivity label to apply encryption, you can choose either to:

- **Assign permissions now**, so that you determine exactly which users get which permissions to content with that label.
- **Let users assign permissions** when they apply the label to content. This way, you can allow people in your organization some flexibility that they might need to collaborate and get their work done.

The encryption settings are available when you [create a sensitivity label](create-sensitivity-labels.md) in the Microsoft 365 compliance center, Microsoft 365 security center, or Office 365 Security & Compliance Center.

## Understand how the encryption works

Encryption uses the Azure Rights Management service (Azure RMS) from Azure Information Protection. This protection solution uses encryption, identity, and authorization policies. To learn more, see [What is Azure Rights Management?](https://docs.microsoft.com/azure/information-protection/what-is-azure-rms) from the Azure Information Protection documentation. 

When you use this encryption solution, the **super user** feature ensures that authorized people and services can always read and inspect the data that has been encrypted for your organization. If necessary, the encryption can then be removed or changed. For more information, see [Configuring super users for Azure Information Protection and discovery services or data recovery](https://docs.microsoft.com/azure/information-protection/configure-super-users).

## How to configure a label for encryption

[Create or edit a sensitivity label](create-sensitivity-labels.md#create-and-configure-sensitivity-labels), and on the **Encryption** page of the wizard, select one of the following options:

- **None**: The default setting for a new label. No new encryption is applied.
- **Apply**: Turns on encryption, and you then specify encryption settings.
- **Remove**: Removes encryption if the document or email is encrypted.

> [!NOTE]
> The **Remove** option is supported by the Azure Information Protection unified labeling client only. When you use built-in labeling, a label with this option is visible in Office apps and if selected, the encryption behavior is the same as **None**.

Configuring the encryption options:

![Sensitivity label options for encryption](../media/encrytion-options-sensitivity-label.png)


### What happens to existing encryption when a label's applied

If a sensitivity label is applied to unencrypted content, the outcome of the encryption options you can select is self-explanatory. For example, if encryption is set to **None**, the content remains unencrypted.

However, the content might be already encrypted. For example, another user might have applied:

- Their own permissions, which include user-defined permissions when prompted by a label, custom permissions by the Azure Information Protection client, and the **Restricted Access** document protection from within an Office app.
- An Azure Rights Management protection template that encrypts the content independently from a label. This category includes mail flow rules that apply encryption by using rights protection.
- A label that applies encryption with permissions assigned by the administrator.

The following table identifies what happens to existing encryption when a sensitivity label is applied to that content:

| |**Encryption: None**|**Encryption: Apply**|**Encryption: Remove**|
|:-----|:-----|:-----|:-----|
|**Permissions specified by a user**|Original encryption is preserved|New label encryption is applied|Original encryption is removed|
|**Protection template**|Original encryption is preserved|New label encryption is applied|Original encryption is removed|
|**Label with administator-defined permissions**|Original encryption is removed|New label encryption is applied|Original encryption is removed|

Note that in the cases where the new label encryption is applied or the original encryption is removed, this happens only if the user applying the label has a usage right or role that supports this action:
- The [usage right](https://docs.microsoft.com/azure/information-protection/configure-usage-rights#usage-rights-and-descriptions) Export or Full Control.
- The role of [Rights Management issuer or Rights Management owner](https://docs.microsoft.com/azure/information-protection/configure-usage-rights#rights-management-issuer-and-rights-management-owner), or [super user](https://docs.microsoft.com/azure/information-protection/configure-super-users).

If the user doesn't have one of these rights or roles, the label can't be applied and so the original encryption is preserved. The user sees the following message: **You don't have permission to make this change to the sensitivity label. Please contact the content owner.**

For example, the person who applies Do Not Forward to an email message can relabel the thread to replace the encryption or remove it, because they are the Rights Management owner for the email. But with the exception of super users, recipients of this email can't relabel it because they don't have the required usage rights.

#### Email attachments for encrypted email messages

When an email message is encrypted by any method, any unencrypted Office documents that are attached to the email automatically inherit the same encryption settings.

Documents that are already encrypted and then added as attachments always preserve their original encryption. 

## Configure encryption settings

When you select **Apply** on the **Encryption** page of the wizard to create or edit a sensitivity label, choose whether to:

- **Assign permissions now**, so that you can determine exactly which users get which permissions to content that has the label applied. For more information, see the next section [Assign permissions now](#assign-permissions-now).
- **Let users assign permissions** when your users apply the label to content. With this option, you can allow people in your organization some flexibility that they might need to collaborate and get their work done. For more information, see the [Let users assign permissions](#let-users-assign-permissions) section on this page.

For example, if you have a sensitivity label named **Highly Confidential** that will be applied to your most sensitive content, you might want to decide now who gets what type of permissions to that content.

Alternatively, if you have a sensitivity label named **Business Contracts**, and your organization's workflow requires that your people collaborate on this content with different people on an ad hoc basis, you might want to allow your users to decide who gets permissions when they assign the label. This flexibility both helps your users' productivity and reduces the requests for your admins to update or create new sensitivity labels to address specific scenarios.

Choosing whether to assign permissions now or let users assign permissions: 

![Option to add user or admin defined permissions](../media/sensitivity-label-user-or-admin-defined-permissions.png)


## Assign permissions now

Use the following options to control who can access email or documents to which this label is applied. You can:

1. **Allow access to labeled content to expire**, either on a specific date or after a specific number of days after the label is applied. After this time, users won’t be able to open the labeled item. If you specify a date, it is effective midnight on that date in your current time zone. (Note that some email clients might not enforce expiration and show emails past their expiration date, due to their caching mechanisms.)

2. **Allow offline access** never, always, or for a specific number of days after the label is applied. If you restrict offline access to never or a number of days, when that threshold is reached, users must be reauthenticated and their access is logged. For more information, see the next section on the Rights Management use license.

Settings for access control for encrypted content:

![Settings for admin defined permissions](../media/sensitivity-encryption-settings-for-admin-defined-permissions.png)

### Rights Management use license for offline access

When a user opens a document or email that’s been protected by encryption from the Azure Rights Management service, an Azure Rights Management use license for that content is granted to the user. This use license is a certificate that contains the user's usage rights for the document or email, and the encryption key that was used to encrypt the content. The use license also contains an expiration date if this has been set, and how long the use license is valid.

If no expiration date has been set, the default use license validity period for a tenant is 30 days. For the duration of the use license, the user is not reauthenticated or reauthorized for the content. This process lets the user continue to open the protected document or email without an internet connection. When the use license validity period expires, the next time the user accesses the protected document or email, the user must be reauthenticated and reauthorized.

In addition to reauthentication, the encryption settings and user group membership is reevaluated. This means that users could experience different access results for the same document or email if there are changes in the encryption settings or group membership from when they last accessed the content.

To learn how to change the default 30-day setting, see [Rights Management use license](https://docs.microsoft.com/azure/information-protection/configure-usage-rights#rights-management-use-license).

### Assign permissions to specific users or groups

You can grant permissions to specific people so that only they can interact with the labeled content:

1. First, add users or groups that will be assigned permissions to the labeled content.

2. Then, choose which permissions those users should have for the labeled content.

Assigning permissions:

![Options to assign permissions to users](../media/Sensitivity-Assign-permissions-settings.png)

#### Add users or groups

When you assign permissions, you can choose:

- Everyone in your organization (all tenant members). This setting excludes guest accounts.
- Any authenticated users. Make sure you understand the [requirements and limitations](#requirements-and-limitations-for-add-any-authenticated-users) of this setting before selecting it.
- Any specific user or email-enabled security group, distribution group, Office 365 group, or dynamic distribution group. 
- Any email address or domain outside your organization, such as gmail.com, hotmail.com, or outlook.com. 

When you choose all tenant members or browse the directory, the users or groups must have an email address.

As a best practice, use groups rather than users. This strategy keeps your configuration simpler.

##### Requirements and limitations for **Add any authenticated users**

This setting doesn't restrict who can access the content that the label encrypts, while still encrypting the content and providing you with options to restrict how the content can be used (permissions), and accessed (expiry and offline access). However, the application opening the encrypted content must be able to support the authentication being used. For this reason, federated social providers such as Google, and onetime passcode authentication work for email only, and only when you use Exchange Online and the new capabilities from Office 365 Message Encryption. Microsoft accounts can be used with Office 365 apps and the [Azure Information Protection viewer](https://portal.azurerms.com/#/download).

Some typical scenarios for the any authenticated users setting:
- You don't mind who views the content, but you want to restrict how it is used. For example, you don't want the content to be edited, copied, or printed.
- You don't need to restrict who accesses the content, but you want to be able to confirm who opens it.
- You have a requirement that the content must be encrypted at rest and in transit, but it doesn't require access controls.

#### Choose permissions

When you choose which permissions to allow for those users or groups, you can select either:

- A [predefined permissions level](https://docs.microsoft.com/azure/information-protection/configure-usage-rights#rights-included-in-permissions-levels) with a preset group of rights, such as Co-Author or Reviewer.
- A Custom group of rights, where you choose whichever permissions you want.

For more information on each specific permission, see [Usage rights and descriptions](https://docs.microsoft.com/azure/information-protection/configure-usage-rights#usage-rights-and-descriptions).  

![Options to choose preset or custom permissions](../media/Sensitivity-Choose-permissions-settings.png)

Note that the same label can grant different permissions to different users. For example, a single label can assign some users as Reviewer and a different user as Co-author, as shown in the following screenshot.

To do this, add users or groups, assign them permissions, and save those settings. Then repeat these steps, adding users and assigning them permissions, saving the settings each time. You can repeat this configuration as often as necessary, to define different permissions for different users.

![Different users with different permissions](../media/Sensitivity-Multiple-users-permissions.png)

#### Rights Management issuer (user applying the sensitivity label) always has Full Control

Encryption for a sensitivity label uses the Azure Rights Management service from Azure Information Protection. When a user applies a sensitivity label to protect a document or email by using encryption, that user becomes the Rights Management issuer for that content.

The Rights Management issuer is always granted Full Control permissions for the document or email, and in addition:

- If the encryption settings include an expiration date, the Rights Management issuer can still open and edit the document or email after that date.
- The Rights Management issuer can always access the document or email offline.
- The Rights Management issuer can still open a document after it is revoked.

For more information, see [Rights Management issuer and Rights Management owner](https://docs.microsoft.com/azure/information-protection/configure-usage-rights#rights-management-issuer-and-rights-management-owner).

## Let users assign permissions

You can use these options to let users assign permissions when they manually apply a sensitivity label to content:

- In Outlook, a user can select restrictions equivalent to the [Do Not Forward](https://docs.microsoft.com/azure/information-protection/configure-usage-rights#do-not-forward-option-for-emails) option for their chosen recipients.

- In Word, PowerPoint, and Excel, a user is prompted to select their own permissions for specific users, groups, or organizations. 
    > [!NOTE]
    > This option for Word, PowerPoint, and Excel is supported by the Azure Information Protection unified labeling client. For apps that use built-in labeling, support is currently in [preview for Windows and Mac](sensitivity-labels-office-apps.md#sensitivity-label-capabilities-in-word-excel-and-powerpoint). 
    > 
    > If this option is selected but isn't supported for a user's app, either that label doesn't display to the user, or (currently rolling out in preview for iOS and Android) the label displays for consistency, but it can't be applied with an explanation message to users.

When the options are supported, use the following table to identify when users see the sensitivity label:

|Setting |Label visible in Outlook|Label visible in Word, Excel, PowerPoint|
|:-----|:-----|:-----|:-----|
|**In Outlook, enforce restrictions equivalent to the Do Not Forward option**|Yes |No |
|**In Word, PowerPoint, and Excel, prompt users to specify permissions**|No |Yes|

When both settings are selected, the label is therefore visible in both Outlook and in Word, Excel, and PowerPoint.

A sensitivity label that lets users assign permissions can be applied to content only manually by users; it can't be auto-applied or used as a recommended label.

Configuring the user-assigned permissions:

![Encryption settings for user-defined permissions](../media/sensitivity-encryption-settings-for-user-defined-permissions.png)

### Outlook restrictions

In Outlook, when a user applies a sensitivity label that lets them assign permissions to a message, the restrictions are the same as the Do Not Forward option. The user will see the label name and description at the top of the message, which indicates the content's being protected. Unlike Word, PowerPoint, and Excel (see the [next section](#word-powerpoint-and-excel-permissions)), users aren't prompted to select specific permissions.

![Sensitivity label applied to message in Outlook](../media/sensitivity-label-outlook-protection-applied.png)

When the Do Not Forward option is applied to an email, the email is encrypted and recipients must be authenticated. Then, the recipients cannot forward it, print it, or copy from it. For example, in the Outlook client, the Forward button is not available, the Save As and Print menu options are not available, and you cannot add or change recipients in the To, Cc, or Bcc boxes.

Unencrypted Office documents that are attached to the email automatically inherit the same restrictions. The usage rights applied to these documents are Edit Content, Edit; Save; View, Open, Read; and Allow Macros. If the user wants different usage rights for an attachment, or the attachment is not an Office document that supports this inherited protection, the user needs to protect the file before attaching it to the email.

### Word, PowerPoint, and Excel permissions

In Word, PowerPoint, and Excel, when a user applies a sensitivity label that lets them assign permissions to a document, they are prompted to specify their choice of users and permissions when the encryption is applied.

For example, with the Azure Information Protection unified labeling client, users can:

- Select a permission level, such as Viewer (which assigns View Only permission) or Co-Author (which assigns View, Edit, Copy, and Print permissions).
- Select users, groups, or organizations. This can include people both inside or outside your organizations.
- Set an expiration date, after which the selected users cannot access the content. For more information, see the above section [Rights Management use license for offline access](#rights-management-use-license-for-offline-access).

![Options for user to protect with custom permissions](../media/sensitivity-aip-custom-permissions-dialog.png)

For built-in labeling, users see the same dialog box if they select the following:

- Windows: **File** tab > **Info** > **Protect Document** > **Restrict Access** > **Restricted Access**

- MacOS: **Review** tab > **Protection** > **Permissions** > **Restricted Access**


## Example configurations

For each example that follows, do the configuration from the Encryption page of the sensitivity label wizard.

### Example 1: Label that applies Do Not Forward to send an encrypted email to a Gmail account

This label is available only in Outlook and Outlook on the web, and is suitable when Exchange Online is configured for the [new capabilities in Office 365 Message Encryption](https://support.office.com/article/7ff0c040-b25c-4378-9904-b1b50210d00e). Instruct users to select this label when they need to send a protected email to people using a Gmail account (or any other email account outside your organization). 

Your users type the Gmail email address in the **To** box.  Then, they select the label and the Do Not Forward option is automatically added to the email. The result is that recipients cannot forward the email, or print it, copy from it, or save attachments, or save the email as a different name. 

1. Select **Set user-defined permissions**.

3. Make sure that the following option is selected: **In Outlook apply Do Not Forward**.

4. If selected, clear the following option: **In Word, Excel, PowerPoint and File Explorer prompt user for custom permissions**.

5. Click **Next** and complete the wizard.


### Example 2: Label that restricts read-only permission to all users in another organization

This label is suitable for sharing (read-only) very sensitive documents that always require an internet connection to view it. If needed, you can remove the domain name and recipients will not be able to view the document the next time they try to open it.

This label is not suitable for emails.

1. Make sure that the **Set permissions** option is selected, and then select **Add permissions**.

3. On the **Add permissions** pane, select **Enter details**.

4. Enter the name of a domain from the other organization, for example, **fabrikam.com**. Then select **Add**.

5. From **Choose permissions from preset**, select **Viewer**, and then select **OK**.

6. Back on the **Protection** pane, for **Allow offline access setting**, select **Never**.

7. Click **OK** and complete the wizard.


### Example 3: Add external users to an existing label that protects content

The new users that you add will be able open documents and emails that have already been protected with this label. The permissions that you grant these users can be different from the permissions that the existing users have.

1. On the **Protection** pane, make sure **Azure (cloud key)** is selected.
    
2. Ensure that **Set permissions** is selected, and then select **Add permissions**.

3. On the **Add permissions** pane, select **Enter details**.

4. Enter the email address of the first user (or group) to add, and then select **Add**.

5. Select the permissions for this user (or group).

6. Repeat steps 4 and 5 for each user (or group) that you want to add to this label. Then click **OK**.

7. Click **OK** on the **Protection** pane, and then click **Save** on the **Label** pane.

### Example 4: Label for protected email that supports less restrictive permissions than Do Not Forward

This label cannot be restricted to Outlook but does provide less restrictive controls than using Do Not Forward. For example, you want the recipients to be able to copy from the email or an attachment, or save and edit an attachment.

If you specify external users who do not have an account in Azure AD:

- The label is suitable for email when Exchange Online is using the [new capabilities in Office 365 Message Encryption](https://support.office.com/article/7ff0c040-b25c-4378-9904-b1b50210d00e). 
 
- For Office attachments that are automatically protected, these documents are available to view in a browser. To edit these documents, download and edit them with Office 365 apps (Click-to-Run), and a Microsoft account that uses the same email address. [More information](secure-collaboration-documents.md#supported-scenarios-for-opening-protected-documents)


> [!NOTE]
> Exchange Online is rolling out a new option, [Encrypt-Only](configure-usage-rights.md#encrypt-only-option-for-emails). This option is not available for label configuration. However, when you know who the recipients will be, you can use this example to configure a label with the same set of usage rights. 

When your users specify the email addresses in the **To** box, the addresses must be for the same users that you specify for this label configuration. Because users can belong to groups and have more than one email address, the email address that they specify does not have to match the email address that you specify for the permissions. However, specifying the same email address is the easiest way to ensure that the recipient will be successfully authorized. For more information about how users are authorized for permissions, see [Preparing users and groups for Azure Information Protection](prepare.md). 

1. On the **Protection** pane, make sure that **Azure (cloud key)** is selected.
    
2. Make sure **Set permissions** is selected, and select **Add permissions**.

3. On the **Add permissions** pane: To grant permissions to users in your organization, select **Add \<organization name> - All members** to select all users in your tenant. This setting excludes guest accounts. Or, select **Browse directory** to select a specific group. To grant permissions to external users or if you prefer to type the email address, select **Enter details** and type the email address of the user, or Azure AD group, or a domain name.
    
    Repeat this step to specify additional users who should have the same permissions.

4. For **Choose permissions from preset**, select **Co-Owner**, **Co-Author**, **Reviewer**, or **Custom** to select the permissions that you want to grant.
    
    Note: Do not select **Viewer** for emails and if you do select **Custom**, make sure that you include **Edit and Save**.
    
    To select the same permissions that match the new **Encrypt-Only** option from Exchange Online, select **Custom**. Then select all permissions except **Save As, Export (EXPORT)** and **Full Control (OWNER)**.

5. To specify additional users who should have different permissions, repeat steps 3 and 4.

6. Click **OK** on the **Add permissions** pane.

7. Click **OK** on the **Protection** pane, and then click **Save** on the **Label** pane.


### Example 5: Label that encrypts content but doesn't restrict who can access it

This configuration has the advantage that you don't need to specify users, groups, or domains to protect an email or document. The content will still be encrypted and you can still specify usage rights, an expiry date, and offline access. Use this configuration only when you do not need to restrict who can open the protected document or email. [More information about this setting](#more-information-about-add-any-authenticated-users)

1. On the **Protection** pane, make sure **Azure (cloud key)** is selected.
    
2. Make sure **Set permissions** is selected, and then select **Add permissions**.

3. On the **Add permissions** pane, on the **Select from the list** tab, select **Add any authenticated users**.

4. Select the permissions you want, and click **OK**.

5. Back on the **Protection** pane, configure settings for **File Content Expiration** and **Allow offline access**, if needed, and then click **OK**.

6. On the **Label** pane, select **Save**.


### Example 6: Label that applies "Just for me" protection

This configuration offers the opposite of secure collaboration for documents: With the exception of a [super user](configure-super-users.md), only the person who applies the label can open the protected content, without any restrictions. This configuration is often referred to as "Just for me" protection and is suitable when a user wants to save a file to any location and be assured that only they can open it.

The label configuration is deceptively simple:

1. On the **Protection** pane, make sure **Azure (cloud key)** is selected.
    
2. Select **OK** without selecting any users, or configuring any settings on this pane.
    
    Although you can configure settings for **File Content Expiration** and **Allow offline access**, when you do not specify users and their permisisons, these access settings are not applicable. That's because the person who applies the protection is the [Rights Management issuer](configure-usage-rights.md#rights-management-issuer-and-rights-management-owner) for the content, and this role is exempt from these access restrictions.

3. On the **Label** pane, select **Save**.


## Considerations for encrypted content

Encrypting your most sensitive documents and emails helps to ensure that only authorized people can access this data. However, there are some considerations to take into account:

- If your organization hasn't [enabled sensitivity labels for Office files in SharePoint and OneDrive (public preview)](sensitivity-labels-sharepoint-onedrive-files.md):
    
    - Search, eDiscovery, and Delve will not work for encrypted files. 
    - DLP policies work for the metadata of these encrypted files (including retention label information) but not the content of these files (such as credit card numbers within files).
    - Users can't open encrypted files using Office on the web. When sensitivity labels for Office files in SharePoint and OneDrive is enabled, users can use Office on the web to open encrypted files, with some [limitations](sensitivity-labels-sharepoint-onedrive-files.md#limitations) that include encryption that has been applied with an on-premises key (known as "hold your own key", or HYOK), and encryption that has been applied independently from a sensitivity label.

- For multiple users to edit an encrypted file at the same time, they must all be using Office for the web. If this isn't the case, and the file is already open:
    
    - In Office apps (Windows, Mac, Android, and iOS), users see a **File In Use** message with the name of the person who has checked out the file. They can then view a read-only copy or save and edit a copy of the file, and receive notification when the file is available.
    - In Office for the web, users see an error message that they can't edit the document with other people. They can then select **Open in Reading View**.

- The [AutoSave](https://support.office.com/article/what-is-autosave-6d6bd723-ebfd-4e40-b5f6-ae6e8088f7a5) functionality in Office apps (Windows, Mac, Android, and iOS) is disabled for encrypted files. Users see a message that the file has restricted permissions that must be removed before AutoSave can be turned on.

- Encrypted files might take longer to open in Office apps (Windows, Mac, Android, and iOS).

- The following actions for encrypted files aren't supported from Office apps (Windows, Mac, Android, and iOS), and users see an error message that something went wrong. However, SharePoint functionality can be used as an alternative:
    
    - View, restore, and save copies of previous versions. As an alternative, users can do these actions using Office on the web when you [enable and configure versioning for a list or library](https://support.office.com/article/enable-and-configure-versioning-for-a-list-or-library-1555d642-23ee-446a-990a-bcab618c7a37). 
    - Change the name or location of files. As an alternative, users can [rename a file, folder, or link in a document library](https://support.office.com/article/rename-a-file-folder-or-link-in-a-document-library-bc493c1a-921f-4bc1-a7f6-985ce11bb185) in SharePoint.

For the best collaboration experience for files that are encrypted by a sensitivity label, we recommend you use [sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md) and Office for the web. 

## Important prerequisites

Before you can use encryption, you might need to do some configuration tasks.

### Activate protection from Azure Information Protection

For sensitivity labels to apply encryption, the protection service (Azure Rights Management) from Azure Information Protection must be activated for your tenant. In newer tenants, this is the default setting, but you might need to manually activate the service. For more information, see [Activating the protection service from Azure Information Protection](https://docs.microsoft.com/azure/information-protection/activate-service).

### Configure Exchange for Azure Information Protection

Exchange does not have to be configured for Azure Information Protection before users can apply labels in Outlook to protect their emails. However, until Exchange is configured for Azure Information Protection, you do not get the full functionality of using Azure Rights Management protection with Exchange.
 
For example, users cannot view protected emails on mobile phones or with Outlook on the web, protected emails cannot be indexed for search, and you cannot configure Exchange Online DLP for Rights Management protection. 

To ensure that Exchange can support these additional scenarios, see the following:

- For Exchange Online, see the instructions for [Exchange Online: IRM Configuration](https://docs.microsoft.com/azure/information-protection/configure-office365#exchangeonline-irm-configuration).
- For Exchange on-premises, you must deploy the [RMS connector and configure your Exchange servers](https://docs.microsoft.com/azure/information-protection/deploy-rms-connector). 
