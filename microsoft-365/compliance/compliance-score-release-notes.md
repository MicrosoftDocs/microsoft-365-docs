---
title: "Microsoft Compliance Score release notes"
ms.author: chvukosw
author: chvukosw
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Release notes for the public preview of Microsoft Compliance Score, a dashboard in the M365 compliance center that helps simplify and automate risk assessments."
---

# Microsoft Compliance Score release notes (Preview)

The public preview of Microsoft Compliance Score provides you with early access to upcoming functionality and updates.

Compliance Score is a new feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) that calculates a risk-based score, measuring your progress towards completing recommended actions that help reduce compliance risks.

## Compliance Score and Compliance Manager relationship

Many of the compliance functions handled in Compliance Manager can now be done in Compliance Score. However some functionality still resides only in Compliance Manager, and some previous functionality in Compliance Manager is altered during the public preview period. 

Keep these points in mind as you work with Compliance Score and Compliance Manager during public preview:

- **Managing assessments**: users can view assessments and their status details in Compliance Score. However users can only perform assessment management tasks in Compliance Manager ([view instructions](working-with-compliance-manager.md#assessments)), and tasks and are limited to the following:
    - Upload new assessments, but not modify existing assessments. If you need to modify an existing assessment, you will need to upload a new template.
    - Export assessments
    - Archive assessments
    - View archived assessments
 - **Creating templates for assessments**: 
   - Users must go to Compliance Manager to create new templates and export existing templates. 
   - Existing templates cannot be customized. Read instructions for [managing templates in Compliance Manager](working-with-compliance-manager.md#templates).
   - When creating a template, you must include Dimensions for both **Product** and **Certification** to ensure your template displays in Compliance Score.
 - **Setting permissions**: Compliance Score users who were not previously granted permissions in Compliance Manager must have their permissions set in the Microsoft 365 compliance center. Users whose roles were previously set in Compliance Manager can use that same level of access when working in Compliance Score.
- **Transfer of data**: organizations with data residing in Compliance Manger will see that data in Compliance Score, and vice-versa.
- **Signing in to Compliance Manager from Compliance Score**: if a user is signed in to Compliance Score and selects a link to go to Compliance Manager, the user will not have to sign in again. After clicking the link, a new tab opens in your browser featuring a dialogue box. In the top section with the header, “Already a Microsoft cloud services customer? Sign in to your account,” select the **Sign In** button to automatically sign in to Compliance Manager.

## Known issues in Compliance Score (Preview)

The following sections cover known issues to be resolved in upcoming releases of Compliance Score.

### Custom templates for assessments

**Issue: Your custom assessment shows irrelevant actions in Compliance Score.**

**Solution:**

When creating a custom template for an assessment, be sure that it does not use a combination of **Product** and **Certification** that already exists in another template.

For example, avoid using a **Product** dimension of Microsoft 365 and a **Certification** dimension of FFIEC, as the standard template  for FFIEC already uses this dimension combination.  

In addition to having a unique **Product** and **Certification** combination, your custom template must also contain at least one custom dimension, such as a custom product or another new dimension you added (see immediately below).

**Issue: You need new dimensions for your custom template.**

**Solution:**

Assessments created from custom templates may not appear correctly in Compliance Score because certain dimensions are not yet available. To correct the issue, follow the steps below when creating custom templates for assessments.

1. Download [this sample import file](https://servicetrust.microsoft.com/ViewPage/TrustDocumentsV3?command=Download&downloadType=Document&downloadId=6894fb7e-d21d-4646-a514-ceb212072043&tab=7f51cb60-3d6c-11e9-b2af-7bb9f5d2d913&docTab=7f51cb60-3d6c-11e9-b2af-7bb9f5d2d913_FAQ_and_White_Papers) and save a copy to your computer.
   - **Note**: this file will only be used to import the dimensions you need to Compliance Manager. It will not be the file used to create your custom template, so its file name should not be similar to the eventual template name to avoid confusion.
2. Add the dimension values for **Product** and **Certification** you'll need for your custom assessment.
3. **Save** the file.
4. Upload the template to Compliance Manager following these instructions:
   - In Compliance Manger, from the Templates dashboard, select **+Add Template**.
   - On the **Add Template** flyout, under the **Dimension** header, for **Certification** select **CCPA**, and for **Product** select **Intune**.
   - Select **Browse** and find the file you downloaded and saved in steps 1-3 above, then select **Add to Dashboard**.
   - Find your new template in the Dashboard, go to the ellipses on the far right side of its row, select **Reject**, then confirm the rejection. This removes the template from your inventory, yet the dimensions you added to that template remain in Compliance Manager so you can select them for a future template.
   - **Refresh** your browser so that the next time you create a template, the new dimension(s) will be an available option for you to select.

5. Create your custom template in Compliance Manager following [these instructions](working-with-compliance-manager.md#create-a-template-1).
6. **Upload** your custom template to Compliance Manager using the correct **Product** and **Certification** tag.
7. Have another Compliance Manager admin approve the template.

The custom template is now ready to use.

### Launch Now links in certain improvement actions

In certain improvement actions, selecting the **Launch Now** link that appears underneath the implementation instructions gives an error. To access the proper destination, which is the the SharePoint admin center, follow these steps:

1. Go to the [Microsoft 365 Admin Center](https://admin.microsoft.com).
2. On the left navigation menu, select **Show all**.
3. Under **Admin centers,** select **SharePoint**.

Below are the affected improvement actions, which all reside in the **Protect information** category:
  - Apply encryption to SharePoint Library
  - Classify Data in SharePoint Online
  - Configure External Sharing Links to Expire
  - Enable Versioning for Document Libraries

### Long load times for non-admin users
Compliance Score users who hold roles other than an admin role may experience long load times when trying to a sign in. Refreshing your browser will resolve this issue. (Learn more about [Compliance Score roles](compliance-score-setup.md#set-user-permissions-and-assign-roles).)

### Supported browsers

- The latest versions of Microsoft Edge, Chrome, and Safari are supported.
- There may be instances where updated data does not appear until your browser is refreshed.
- The preview version of Microsoft Edge is not supported but has no known issues.
- Internet Explorer is not supported.
 
### Language support

- Compliance Score is only available in U.S. English.