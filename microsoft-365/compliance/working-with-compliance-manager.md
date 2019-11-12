---
title: "Work with Microsoft Compliance Manager (Preview)"
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
description: "Microsoft Compliance Manager is a free workflow-based risk assessment tool in the Microsoft Service Trust Portal. Compliance Manager enables you to track, assign, and verify regulatory compliance activities related to Microsoft cloud services."
---

# Work with Microsoft Compliance Manager (Preview)

> [!IMPORTANT]
> Microsoft Compliance Manager is a dashboard and management tool that provides a summary of your data protection and compliance stature and recommendations to improve data protection and compliance. The customer actions provided in Compliance Manager are recommendations; it is up to your organization to evaluate the effectiveness of these recommendations in their respective regulatory environment prior to implementation. Recommendations found in Compliance Manager should not be interpreted as a guarantee of compliance.

## Access Compliance Manager

You access Compliance Manager from the Service Trust Portal. Anyone with a Microsoft account or Azure Active Directory organizational account can access Compliance Manager.
  
1. Go to [https://servicetrust.microsoft.com](https://servicetrust.microsoft.com/).

2. Sign in with your Microsoft service account. This is your Office 365, Microsoft 365, or Azure Active Directory (Azure AD) user account.

3. In the Service Trust Portal, select **Compliance Manager**. This is the preview version of Compliance Manager. **Compliance Manager (Classic)** is the link to the previous version of Compliance Manager.

4. When the Non-Disclosure Agreement is displayed, read it, and select **Agree** to continue. You must agree once, and then the Compliance Manager dashboard is displayed.

To get you started, an ISO/IEC 27001:2103 Assessment for Office 365 appears by default for your organization.

## Administration

There are specific administrative functions that are only available to the global administrator and only visible when logged in with a global administrator account. The global administrator can assign user permissions, and can turn on automatic Secure Score updates for all actions.
  
### Assigning Compliance Manager roles to users

Once the administrator assigns Compliance Manager roles to other users, those users can view data in Compliance Manager and perform actions determined by their role. The administrator can also give read-only access to Compliance Manager by assigning the user the [Global Reader role in Azure Active Directory (Azure AD)](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles#global-reader).

Each Compliance Manager role has slightly different permissions. You can view the permissions assigned to each role, see which users are in which roles, and add or remove users from that role through the Service Trust Portal. Select the **Admin** menu item, and choose **Settings** to view.
  
![STP Admin menu: Settings selected](media/65a82b1b-d462-452f-988b-7e4263bd638e.png)
  
To add or remove users from Compliance Manager roles.
  
1. Go to [https://servicetrust.microsoft.com](https://servicetrust.microsoft.com).

2. Sign in with your Azure Active Directory global administrator account.

3. On the Service Trust Portal top menu bar, select **Admin** and then choose **Settings**.

4. In the **Select Role** drop-down list, select the role that you want to manage.

5. Users added to each role are listed on the **Select Role** page.

6. To add users to this role, select **Add**. In the **Add Users** dialog, select the user field. You can scroll through the list of available users or begin typing the user name to filter the list based on your search term. Select the user to add that account to the **Add Users** list provisioned with that role. If you would like to add multiple users concurrently, begin typing a user name to filter the list, and then select the user to add to the list. Select **Save** to provision the selected role to these users. 

    ![Compliance Manager — add users](media/compliance-manager-add-users.png)
  
7. To remove users from this role, select the users and select **Delete**.

    ![Compliance Manager — delete users](media/compliance-manager-delete-users.png)

### Controlling automatic Secure Score updates

Secure Score updates can be turned on automatically for all actions, can be turned off for all actions, or can be set by individual action.

1. Sign in to the [Service Trust Portal](https://servicetrust.microsoft.com) with your global administrator account.

2. On the Service Trust Portal top menu bar, select **Admin** and then choose **Settings**.

4. In the **Secure Score** tab, select the appropriate button for you chosen setting.

**Note:** Only the global administrator can turn on or off automatic updates for all actions. The Compliance Manager administrator can turn on automatic updates for individual actions, but not for all actions globally.

## Groups

Groups allow you to logically organize Assessments and that share common information and workflow tasks between Assessments that have the same or related customer-managed controls. You can group Assessments by year, standard, service, team, division, or agencies within your organization to help minimize customer-managed Actions:
  
- **FFIEC IS Assessments 2019**
  - Office 365 + FFIEC IS
  - Intune + FFIEC IS
- **Data Security and Privacy Assessments**
  - Office 365 + ISO 27001:2013
  - Office 365 + ISO 27018:2014

When you create a new Assessment, you must create a new group for the Assessment or assign the Assessment to an existing group. Groups cannot be created as stand-alone entities. It's recommended that you determine a grouping strategy for your organization *before* adding new assessments. By default, a Group named "Default Group" is available for your initial Assessments. Groups do not have any security properties. All permissions are associated with Assessments.

When you work with groups, remember:
  
- Related assessment controls in different assessments within the same Group automatically update when completed.
- New groups can copy information from an existing group when you create a new Assessment. Any information added to the Implementation Details and Test Plan and Management Response fields of customer-managed controls from Assessments in the group that you're copying from are copied to the same (or related) customer-managed controls in the new Assessment. If you're adding a new Assessment to an existing group, common information from Assessments in that group are copied to the new Assessment.
- Group names (also called *Group IDs*) must be unique within your organization.
- Groups can contain Assessments for the same certification/regulation, but each group can only contain one Assessment for a specific cloud service/certification pair. For example, a group can't contain two Assessments for Office 365 and NIST CSF. A group can contain multiple Assessments for the same cloud service only if the corresponding certification/regulation for each one is different.
- Once an assessment has been added to an assessment group, the grouping cannot be changed. You can rename the assessment group, which changes the name of the assessment grouping for all the assessments associated with that group. You can create an assessment and a new assessment group and copy information from an existing assessment, which effectively creates a duplicate of that assessment in a different assessment group.
- Archiving an assessment breaks the relationship between that assessment and the group. Any further updates to other related assessments are no longer reflected in the archived assessment.

## Tenant Management

Compliance Manager (Preview) includes a new interface for managing new data elements called **Tenant Management**. This interface enables you to manage tenant-wide settings:

- **Dimensions:** View metadata for Templates, Assessments, and Action Items that allow you to create custom pivots for filters.
- **Owners:** Specify an owner for each Action Item.
- **Customer Actions:** Manage the complete list of Actions Items included in Compliance Manager (Preview) and enable/disable Secure Score monitoring for Actions that are integrated with Secure Score.

Select **Tenant Management** to open the management interface, and use the following steps to manage **Dimensions**, **Owners**, and **Customer Actions**.

### Dimensions

Dimensions are sets of metadata that provide information about a Template, an Assessment, or an Action Item. Dimensions use the concept of Keys and Values, where the Dimension Key represents a property, and Dimension Value represents valid values for the property. For example, in Compliance Manager there are three types of Actions. They are defined by a Dimension Key of **Action Type** and Dimension Values of **Documentation**, **Operational**, and **Technical**. You can edit or delete existing Dimensions.

> [!IMPORTANT]
> You can add new dimensions, and they can be assigned to Templates that you have already imported. You can also add new dimensions to any new Templates you create.

### Owners

Owners are used to identify the responsible party for each control. All built-in controls are owned by Microsoft, by customers, or by both. You can create custom values for Owners that can be used to specify more granular responsibilities within your organization. For example, you could create Owners that represent specific groups, teams, or business units within your organization.

#### Add an Owner

1. Open **Tenant Management** and select **Owners**.
2. Select **+ Add owner**.
3. Provide a Name and Description for the Owner and select **Save**. The description is displayed in the Owner column.

#### Edit an Owner

You can’t edit an Owner name, but you can modify the description that is displayed in the Owner column.

1. Open **Tenant Management** and select **Owners**.
2. Locate the Owner you want to edit, select the ellipses (…) next to it, and select **Edit**.
3. Modify the Description as needed and select **Save**.

#### Delete an Owner

1. Open **Tenant Management** and select **Owners**.
2. Locate the Owner you want to delete, select the ellipses (…) next to it, and select **Delete**.
3. When the confirmation message appears, select **Delete**.

### Customer Actions

The Customer Actions area shows all the customer actions for all Templates and Assessments in Compliance Manager (Preview).

![Compliance Manager — add users](media/compliance-manager-customer-actions.png)

At-a-glance, you can see an Action’s title, owner, category, enforcement, and score, and determine if it is integrated with Secure Score. You can expand an Action and select **Read More** to read the Action’s description and access any links in the description. You can also use this interface to enable and disable Secure Score integration on a per-action basis, and to add custom actions. Actions that have Secure Score integration capabilities have an ellipsis (…) next to them (note that custom actions also have an ellipsis next to them).

#### Enable or disable Secure Score integration

1. Select the ellipses (…) for the Action you want to modify and select **Edit**.
2. Toggle the switch for Secure Score continuous update to On or Off to enable or disable continuous monitoring through Secure Score.
3. Select **Save**.

#### Add a customer action

1. Select **+ Add Customer Action**.
2. Provide a unique title for the Action in the **Title** field.
3. Provide a Compliance Score for the Action in the **Maximum Compliance Score** field (this can be any number from 1-99).
4. Use the **Action Type** dropdown to specify the type of Action you are adding. If the Action Type does not exist, you can add it by adding the value to the
Action Type dimension key.
5. Use the **Dimensions** dropdown to specify or add dimension keys and values for the Action.
6. Use the **Owner** dropdown to specify the owner for Action.
7. Select **+** to add a description and description title for the Action.
8. Select the **X** to close the Description blade.
9. Select **Save** to save the Customer Action.

#### Delete a customer action

1. Select the ellipses (…) for the Action you want to modify and select **Delete**.
2. When the confirmation message appears, select **Delete**.

## Assessments

### Add an Assessment
  
1. In the Assessments dashboard, select **+ Add Assessment**.

2. When the blade opens, enter the following information:

    - **Title (required):** Enter a title for your Assessment
    - **Please select a template (required):** Select a standard or custom template
    - **Please select a group or add a new group (required):** Select an existing group or choose to add a new group, and provide a unique group name
    - **Would you like to copy the data from an existing group? (optional):** Toggle the control to enable group copy and then:
        - **Select a group (optional):** If group copy is enabled, select the group to copy from
            - **Implementation Details (optional):** Select to copy implementation details to the new group
            - **Test plan & additional information (optional):** Select to copy test plan and additional information details to the new group
            - **Documents (optional):** Select to copy documents to the new group

3. Select **Save** to create the Assessment.

 The new Assessment appears on the Assessment dashboard and displays the following information:

- The title of the Assessment.
- The dimensions of the Assessment, including certification, environment, and product applied to the Assessment.
- The date it was created and date when it was last modified.
- The Assessment Score shown as a percentage. This score automatically includes your scores from Microsoft-managed controls and from Secure Score.
- Progress indicators that show the number of assessed Microsoft-managed and customer-manged controls.

### Copying information from existing Assessments

When you create an Assessment, you have the option to copy information from an existing group. This allows you to apply the information entered into the copied assessment to the same controls in the new Assessment. For example, if you have a group for all FFIEC-related Assessments in your organization, you can copy the following information from existing assessments:

- Implementation Details
- Test Plan & Additional Information
- Documents

#### Copy information from an existing Assessment to a new Assessment
  
1. In the Assessment dashboard, select **+ Add Assessment**.
    
2. In the **Add an Assessment** window, complete the following information

    - **Title (required):** Enter a title for your Assessment.
    - **Please select a template (required):** Select a standard or custom template.
    - **Please select a group or add a new group (required):** Choose **Add a new group** and provide a unique group name.
    - **Would you like to copy the data from an existing group? (optional):** Toggle the control to On to enable group copy and then:
            - **Select a group (optional):** If group copy is enabled, select the group to copy from.
            - **Implementation Details (optional):** Select to copy implementation details to the new group.
            - **Test plan & additional information (optional):** Select to copy test plan and additional information details to the new group.
            - **Documents (optional):** Select to copy documents to the new group.

3. Select **Save** to create the Assessment.

### View an Assessment
  
1. In the Assessments dashboard, select the assessment name to open it and view the Action Items and Controls Info.

Here's an example of the Assessment for Office 365 and ISO 27001. The first view illustrates the new Action Items view in Compliance Manager (Preview).

![Compliance Manager Action Items View](media/compliance-manager-action-items.png)

The Actions are listed in alphabetical order, and each Action is assigned a score and an owner. Select  the **Read More** link to read the details of each Action. 

![Compliance Manager Action Items View](media/compliance-manager-actions-read-more.png)

Select the **Review** link to manage, assign, implement, and test the action. Below is an example Action.

![Compliance Manager Action View](media/compliance-manager-action.png)

In previous versions of Compliance Manager, the workflow for implementing requirements was performed at the Control level. A compliance officer would assign a control to someone to implement the control. There were two drawbacks to this:

- Controls often had multiple actions associated with them, and the user to whom a control was assigned, might not be the right person to complete all actions that were required to implement the control
- Combining separate tasks into a single Action prevented the collection of the signals and telemetry that is used to automatically record tenant configuration changes in Compliance Manager (Preview).

In Compliance Manager (Preview), the workflow process has moved from the Control level to the Action level. When reviewing an Action, the following fields can be used to manage the Action workflow:

- **Assign User:** Select this field to choose or enter the user to whom this Action should be assigned. You can scroll through the list, or type a name to find it, and then select it.
- **Manage Documents:** You can upload evidence of implementation in the form of Office documents, image files and screenshots, PowerShell output in CSV or TXT, and PDFs.
- **Implementation Status:** Used to indicate the Action’s current implementation status. Possible values are Not Implemented, Implemented, Alternative Implementation, Planned, and Not in Scope.
- **Implementation Date:** The date on which the Action was taken.
- **Test Result:** Used to indicate the results of implementation validation. Possible values are Not Assessed, Passed, Failed-Low Risk, Failed-Medium Risk, Failed-High Risk, and Not in Scope.
- **Test Date:** The date on which validation occurred.
- **Implementation Notes:** Enter implementation details for your organization, along with any notes that you want to include.
- **Test Plan:** Enter the test plan details for this action, along with any notes that you want to include.
- **Additional Information:** Enter any additional information about this Action or how it was implemented in your organization, along with any notes you want to include.

Compliance Manager (Preview) also includes the control-based pivot found in previous versions. Select the **Controls Info** dashboard to view it. You can view information for controls at the Assessment and Template level. Below is an example of the Controls Info dashboard for Assessments.

![Compliance Manager Controls Info View](media/compliance-manager-controls-info.png)

For Assessments, the Controls Info dashboard displays:

- A **Group** dropdown to select which Group to view (when using multiple groups).
- An **Assessment** dropdown to select which Assessment to view.
- Metadata about the selected Assessment, including:
    - A progress indicator for **Assessed Controls** showing the number of assessed controls over the total number of controls.
    - The current **Compliance Score** for the Assessment, shown as a percentage.
    - Details about the **Certification** and **Product** used in the Assessment.
    - The current **Status** of and last **Modified** date for the Assessment.
- A list of **In Scope Services** for the Assessment.
- Details of the controls, grouped by Control Family, with links to customer actions and Microsoft implementation details:
    - **Your Actions** displays the customer actions that you can perform to satisfy some or all the control’s requirements. Many controls have multiple Actions associated with them, and all Actions associated with a control are displayed here. The Actions here have the same UI as those listed in the Actions dashboard.
    - **Microsoft Actions** displays the list of controls from Microsoft’s internal framework that apply to the selected certification control. For each internal control, select **Implemented** to see Microsoft’s implementation and test details, along with the test result and test date, as shown below.

![Compliance Manager Microsoft Action View](media/compliance-manager-microsoft-action.png)

### Export an Assessment

You can export an Assessment to an Excel file for compliance stakeholders in your organization or for external auditors and regulators. The report is a snapshot of the Assessment as of the date and time that the report is created. The report contains the details for all Microsoft and customer-managed controls for the Assessment, control implementation status, control test date, test results, and provides links to uploaded evidence documents. You should export the Assessment report prior to archiving an assessment because archived assessments do not retain links to uploaded documents.
  
### Export an Assessment report
  
1. On the Compliance Manager dashboard, select **Controls Info** tab.
2. Select the **Group** and **Assessment** in the drop-down menus for the Assessment you want to export.
3. Select the **Export** button.

The assessment report is downloaded as an Excel file in your browser session. The files name for the Excel file defaults to the title of the Assessment.

### Hide a Template or an Assessment

When you are finished with a Template or Assessment and no longer need it for compliance purposes, you can hide it from your view. When a Template or Assessment is hidden, it is removed from the default view, and you must select **Include Hidden** checkbox to display it.

![Compliance Manager Hidden Template View](media/compliance-manager-hidden-template.png "Compliance Manager hidden template")

> [!IMPORTANT]
> Hidden Assessments do not retain their links to uploaded evidence documents. It is highly recommended that you export the Assessment before hiding it to retain links to the evidence documents in the report.
  
#### Hiding a Template

1. Open the **Templates** dashboard.
2. Locate the Template you want to hide and at the ellipses in its row, select **Hide**.
3. When you see the confirmation message, select **Hide**.

#### Hide an Assessment

1. Open the **Assessments** dashboard.
2. Select the **Group** from the dropdown that contains the Assessment you want to hide.
3. Locate the Assessment you want to hide and at the ellipses, select **Hide**.
4. When you see the confirmation message, select **Hide**.

#### View hidden Assessments
  
1. Open the **Assessments** dashboard tab and select the **Include Hidden** checkbox.
2. The hidden assessments appear in the **Hidden Assessments** section.

#### Unhide an Assessment

1. On the **Assessments** tab, select the **Include Hidden** checkbox.
2. The hidden assessments appear in the **Hidden Assessments** section.
3. Locate the Assessment you want to unhide and at the ellipses, select **Unhide**.
4. When you see the confirmation message, select **Unhide**.

## Controls and Actions

Controls and Actions are the primary data pivots used in Compliance Manager (Preview). The Control pivot, which existed in previous versions of Compliance Manager, has been enhanced to show the Microsoft and customer controls in the same control families. This consolidated view makes it easier to see the complete shared responsibility model on a per-control basis. The Action pivot is new in Compliance Manager (Preview) and it is designed to provide a streamlined view of all of actions recommended by Microsoft.

### Controls

Controls can be viewed from the Controls Info dashboard. Controls represent the requirements from a standard, certification, regulation, or framework. To map these requirements across multiple standards, regulations, etc., and to associate them with Actions, everything is treated as if it were a control framework. For example, like a control framework, regulations, such as HIPAA, have been broken down by section, and the HIPAA controls in Compliance Manager use the same numbering scheme as those sections, as shown below:

![Compliance Manager Microsoft Controls Details](media/compliance-manager-control-details.png)

There are three types of controls:

1. **Microsoft-managed controls:** these are controls for which only Microsoft has responsibility. They appear in the in-box Templates and are added to Compliance Manager by Microsoft.
2. **Customer-managed controls:** these are controls for which only customers have responsibility. They appear in the in-box Templates and are added to Compliance Manager by customers.
3. **Shared management controls:** these are controls where responsibility is shared between Microsoft and the customer. These appear in the in-box Templates and are added to Compliance Manager by Microsoft. The customer can also edit or disable Microsoft-managed controls.

### Actions Items

Actions Items are the recommended tasks for implementing the requirements of a standard or regulation, or to test, verify, and document your organization's implementation requirements. Actions are associated with one or more Controls. Each Control has one or more Action associated with it, and each Action can be associated with one or more Controls. Actions are part of the core workflow in Compliance Manager (Preview), as they are the objects that are assigned, tracked, and validated by your organization.

#### Assign Action Items
  
1. On the **Action Items** dashboard, select the **Group** containing the Assessment(s) whose Action you want to assign.
2. In the **Assessment** dropdown, select the Assessment whose Action you want to assign, or select **All** from the dropdown to see all available Actions.
3. Locate the Action you want to assign, and in the **Owner** column, select the link for **Review**, **Implemented** or **Test**.
4. Select the **Assign User** field, and a list of users in your organization appear. Scroll the list and select user or filter the list to select a user by typing in the user’s name.
5. In the Implementation Notes field, enter any notes you wish to convey to the assigned user.
6. Select **Save** to assign the Action.

#### Reassign Action Items

This function enables an organization to remove any active or outstanding dependencies on the user account by reassigning an Action to a new user.

1. On the **Action Items** dashboard, select the **Group** containing the Assessment(s) whose Action you want to reassign.
2. In the **Assessment** dropdown, select the Assessment whose Action you want to reassign, or select **All** from the dropdown to see all available Actions.
3. Locate the Action you want to reassign, and in the **Owner** column, select the link for **Review**, **Implemented**, or **Test**.
4. Delete the existing user from the **Assign User** field, and either choose a different user from the list of users or filter the list to select a user by typing in the user’s name.
5. In the Implementation Notes field, enter any notes you wish to convey to the user.
6. Select **Save** to reassign the Action.

## Templates

A Template is the base object in Compliance Manager (Preview) that is associated with a Product and a Certification (for example, standard, regulation, control framework, etc.). Templates can be viewed and added from the Templates dashboard.

![Compliance Manager Microsoft Template Dashboard](media/compliance-manager-template-dashboard.png)
 
The dashboard displays each Template, along with the Certification and Product associated with the Template, the dates on which the Template was created and last modified, the number of customer and Microsoft-managed controls, the maximum Compliance Score for the Template, and the status of the Template (for example, Approved, Pending Approval, Imported).

The built-in Templates each have a built-in Assessment associated with them, but you can create additional Assessments based on built-in Templates, and you can import your own Templates, and create custom Assessments based off those.

### Create a Template

You can create a Template by copying an existing Template or by importing a custom Template. There is a specific format and schema that must be used for Template data or it will not import into Compliance Manager. A file with the correct schema and sample data can be downloaded from here.
Each custom Template should be in a separate Excel workbook (in .xls or .xlsx format) that contains five tabs:

1. Template-Assessment
2. ControlFamily
3. Actions
4. Ownership
5. Dimensions

The schema used within each tab is detailed below.

#### Template-Assessment tab

This tab has a single column:

- **inScopeServices**: Comma-delimited list of products or services that are in-scope for the Template.

#### ControlFamily tab

This tab includes columns that define the controls that are mapped to the Actions listed on the Actions tab, and includes details like control name, family, title, and description.  The columns for this tab, which must be ordered within Excel in the order listed below, are: 

- **controlName:** Control name from certification/standard/regulation, etc.
- **controlFamily:** Control family from certification/standard, regulation, etc.
- **controlTitle:** Control title from certification/standard/regulation, etc.
- **controlDescription:** Control description from certification/standard/regulation, etc.
- **controlVersion:** Optional control version info.  Example: for NIST 800-53, the current value is Rev 4, so the controlVersion is 4.  For CSA CCM, it is 3.0.1.
- **isDisabled:** Use TRUE or FALSE to indicate whether the control has been disabled.
- **controlType:** Use CC to indicate these are customer-managed controls.
- **controlComplianceScore:** Sum of the score of all Actions assigned to the Control.
- **controlActionTitle:** Double semi-colon-delimited list of all actionTitles for this control as listed on the Actions tab. 

#### Actions tab

This tab includes columns that define individual Actions, and it includes details like action title, ownership, and dimensions. The columns for this tab, which must be ordered within Excel in the order listed below, are: 

- **actionTitle:** Title of the action. Each title must be unique, and we recommend using Pascal case.
- **actionRelatedODVs:** Double semicolon-delimited list of actionTitles that are parents of the child listed in the actionTitle column. In a parent/child relationship, the parent represents the high watermark. Thus, if you complete a parent action, you also complete all child actions. For example, when you have similar requirements but different standard-defined values, such as password length, where one standard/regulation requires a minimum of 15 characters, and another requires a minimum of 12 or 10. 15 would be the parent in this example, and if you configure a minimum of 15 characters, you also satisfy the actions that recommend 12 or 10 characters in other assessments.

    > [!NOTE]
    > The actionRelatedODVs column is a required column for the schema; however, the feature (related actions) is not available in Compliance Manager (Preview).  It is scheduled to be added in a later release.

- **actionDimensionValues:** Double semicolon-delimited list of applicable dimensions from the Dimensions tab, using the following format:

    ```
    Dimension Key::Dimension Value;;Dimension Key::Dimension Value.
    ```
    
    For example:

    ```
    Product::Office 365;;Certification::NIST CSF
    ```

    All Dimensions that are used in a custom Template must be listed on the Dimensions tab of the import file, even if they are already listed on the Dimensions dashboard.
- **actionScore:** Numeric value for each Action, which represents the score for that action. We recommend following the scoring model used by the built-in assessments, which is based on each Action’s purpose and enforcement.
- **actionOwnership:** Double semicolon-delimited list of Owners. All listed Owners must be included on the Ownership tab.
- **actionDescription:** Text of each Action, which must be unique. This field supports Markdown Language as described below.

#### Ownership tab

This tab includes columns that define owners for each action.  The columns for this tab, which must be ordered within Excel in the order listed below, are:

- **ownershipName:** Unique name of owner/responsible party.
- **ownershipDescription:** Description of the owner/responsible party.

#### Dimensions tab

This tab includes columns that define the Dimensions that can be associated with an Action.  The columns for this tab, which must be ordered within Excel in the order listed below, are:

- **dimensionKey:** List of Keys used for Dimensions. For example, Product, Certification, etc.
- **dimensionValue:** Unique value for each dimension key. For example, Office 365, Intune, Azure, Custom Product, etc.
- **allowMultiSelect:** Use TRUE or FALSE to indicate that multiple dimension values can be selected for a single dimension key.

#### Using Markdown Language in Description Fields

Templates and Assessments support the use of Markdown language for some text elements and formatting.  There are three formatting elements of Markdown language that are used in Compliance Manager:

- Bullets and Numbered lists
- Hyperlinks
- Boldface

Bullets are represented as asterisks instead of Word or Excel bullets. For example:

```
* Item A
* Item B
* Item C
```

Numbers are represented as numbers, but with spaces for indentation (three spaces per level) and only numbers used for all sublevels (for example, no letters).  For example:
   1. Item A
   2. Item B
      1. Sub-item A
      2. Sub-item B
   3. Item C
   4. Item D
      1. Sub-item A
      2. Sub-item B
   5. Item E

Hyperlinks are constructed by placing brackets around the hyperlink text and the hyperlink itself in parentheses immediately next to the close bracket.  For example:

```
Click [here](https://www.microsoft.com) to go to Microsoft’s home page.
```
This text renders as follows:  Click [here](https://www.microsoft.com) to go to Microsoft’s home page.
As shown in the above example, Compliance Manager does not render URLs with underlining.

Boldface text is just two asterisks on each side of the text to be bolded.  For example:

```
**This text will render in bold**
```
**This text renders in bold**

### Create a Template

You can create a Template by copying an existing Template or by importing Template data from Excel. When importing data from Excel, the Template requires two different Compliance Manager Administrators to publish the data (one to publish, and one to approve).

#### Create a Template by copying an existing Template

1. Open the **Templates** dashboard and select **+ Add Template**.
2. In the **Enter template name** field, provide a unique name for the Template.
3. Check the **Copy from an existing template** checkbox and select the template you want to copy from the dropdown.
4. Optionally add any additional Dimensions.
5. Select **Add to Dashboard**.

#### Create a Template by importing data

1. Open the **Templates** dashboard and select **+ Add Template**.
2. In the **Enter template name** field, provide a unique name for the Template.
3. Select at least one Dimension from the available list.
4. Select **Browse** to navigate to the location of the import file, select it, and select **Open**.
5. The import file will be validated and indicate the number of controls and control families that were detected. If there are errors, a link will be provided to a modified version of the import file that includes error details. All errors must be resolved before the data will be imported.
6. Once the data passes validation, select **Add to Dashboard**.
7. The imported Template appears on the **Templates** dashboard and it has a status of **Imported**. Select the ellipses (…) and select **Publish** to publish the Template. When the confirmation message appears, select **Publish**. The Template status changes to **Pending Approval**.
8. Another user with the Compliance Manager Administrator role must approve the Template in the Templates dashboard. They must select the ellipses (…) and select **Approve**. When the confirmation message appears, select **Approve**. The Template is now ready for use.

> [!IMPORTANT]
> When creating a template, you must include Dimensions for both **Product** and **Certification** to ensure your template displays in Compliance Score.

### Customize a Template

Templates can be customized through the additional of custom controls. All custom controls are considered customer-managed Controls.

#### Add a custom control to a Template

1. Open the **Template** you want to modify.
2. Select **+ Add** custom control.
3. Select a **Control Family** from the dropdown or enter a new control family if it does not exist.
4. Provide a unique name or ID for the control in the **Control ID** field.
5. Provide the control title in the **Title** field.
6. Provide the requirements and other information for the control in the **Description** field.
7. Select **Assign Customer** Action.
8. Locate the Action(s) you want to assign to the control:
    - Use **Filter by Dimension** to use dimensions assigned to the Action(s) to locate and list them.
    - Use **Filter by Owner** to use the owner(s) assigned to the Action(s) to locate and list them.
    - Select an **Action Type** from the dropdown to list Actions by type.
    - Enter the title of the Action to locate and list it.
9. Using the criteria in Step 8, a list of **Matching Action(s)** will appear. Select the first Action you want to assign to the control.
10. The details of the Action appear. Select the **Description** you want to use and select **Done**.
11. Repeat Steps 9 and 10 for each additional Action you want to assign.
12. When all applicable Actions have been selected, select **Assign**.
13. Select **Save** to save the new control.

> [!NOTE]
> Any changes made to a template will not be reflected in existing assessments. Template updates must be made first, and then applied to a new assessment, in order for the changes to be seen.

### Export a Template to JSON

Compliance Manager (Preview) also supports exporting Templates to JavaScript Object Notation (JSON) format. This enables you to exchange Compliance Manager data with other systems that support JSON.

## Reports

You can export an Assessment to an Excel file for compliance stakeholders in your organization or for external auditors and regulators. The report is a snapshot of the Assessment as of the date and time of the export. The report contains the details for Microsoft and customer-managed controls for the Assessment, control implementation status, control test date, test results, and links to uploaded evidence documents. You should export Assessments before archiving them because archived Assessments do not retain links to uploaded documents.

### Export an Assessment

1. On the Compliance Manager dashboard, select **Controls Info** tab.
2. Select the Group and Assessment in the dropdown menus for the Assessment you want to export.
3. Select Export. The Assessment export is downloaded as an Excel file.

![Compliance Manager Assessment Excel Report](media/compliance-manager-assessment-report.png)

## Permissions

The following table describes each Compliance Manager permission and what it allows the user do. The table also indicates the role that each permission is assigned.

||**Azure AD Global Reader**|**Compliance Manager Reader**|**Compliance Manager Contributor**|**Compliance Manager Assessor**|**Compliance Manager Administrator**|**Portal Admin**|
|:-----|:-----|:-----|:-----|:-----|:-----|:-----|
|**Read data:** Users can read but not edit data (except for Template data and Tenant Management).  <br> | X | X | X | X | X  | X |
|**Edit data:** Users can edit all fields, except the Test Result and Test Date fields (except for Template data and Tenant Management).  <br> ||| X | X  | X | X |
|**Edit test results:** Users can edit the Test Result and Test Date fields.  <br> |||| X | X | X |
|**Manage assessments:** Users can create, archive, and delete Assessments.  <br> ||||| X | X |
|**Manage master data:** Users can view, edit, and delete template data and tenant management data.  <br> ||||| X | X |
|**Manage users:** Users can add other users in their organization to the Reader, Contributor, Assessor, and Administrator roles. Only those users with the Global Administrator role in your organization can add or remove users from the Portal Admin role.  <br> |||||| X |
