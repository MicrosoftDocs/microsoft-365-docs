---
title: "Create and use a template to add users"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.date: 02/18/2020
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom:
- MSStore_Link
- AdminSurgePortfolio
search.appverid:
- MET150
- MOE150
description: "You can create and use a template to save time and standardize settings when you add multiple users in the Microsoft 365 admin center."
---

# Create and use a template to add users

You can create and use a template to save time and standardize settings when you are adding multiple users. Templates are particularly useful if you have users who share many common properties, like those who have the same role and work at the same location and those who require the same software. For example, you might have a team of support engineers who work in the same office.  

## Create a template

Templates are easy to create&mdash;you can select **Users** > **Active users** > **User templates**, and then select **Add a template** from the drop-down list, or you can add a new user and when you are finished, you will have the option of saving the entry as a template.

When you create a template after adding a user, the values you choose for the following settings are saved in the template:

- Domain name
- Password settings choice: you can choose to create passwords or have them auto-generated
- One-time password choice: you can require the user to create a new password after first sign in
- License location
- License choices
- Application choices
- Role
- Most profile information, such as **Job profile**, **Department**, **Office**, **Office phone**, and **Street address** 

The following information is user-specific and isn't saved in the template:

- First and last name
- Display name
- User name
- Choice to send the password in email and who the password email is sent to
- Mobile phone number

If you choose not to enter information for a setting within a section, that value will be blank and that setting will not display in the template. For example, if you leave **Job title** blank, when you review your template and when you use your template, **Job title** will not appear at all. If you leave all the **Profile** section settings blank, the **Profile** section will display **None provided** in your final template.

When you create a template by selecting the **Add a template** option, you can choose which values to complete. Anything that is left blank will appear as **None provided** in the template.

## Use a template to add a user

To use an existing template to add a user:

1. In the admin center, select **Users** > **Active users**.

2. Select **User templates**, and then select a template from the drop-down list. (The list will contain only the templates that you created, not those created by other admins.)

   > [!NOTE]
   > You can also use a template to add a user by selecting **User templates** > **Manage templates**, selecting a template, and then selecting **Use template**.

3. Follow the steps to create a user from the template you selected.

   > [!NOTE]
   > If you have insufficient licenses available for a user that you add, and your payment information is available, we will attempt to purchase another license using your existing payment information. If your payment information is unavailable, the user will be created as an unlicensed user.

## Manage templates

You can only delete templates you no longer need and add new ones. To delete a template:

1. In the admin center, select **Users** > **Active users**.

2. Select **Templates**, and then select **Manage templates** from the drop-down list.

3. A list of templates will appear. You can delete a template by doing any of the following:
    - Select one or more templates, and then select **Delete**. 
    - Select the three dots to the right of the template name, and then select **Delete**.
    - Select the template name. When the template details appear on the right side of your screen, select **Delete template**.

## Related articles

[Add users and assign licenses at the same time](add-users.md)

[Remove a former employee from Microsoft 365](remove-former-employee.md)
  
