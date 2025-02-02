---
title: Create a template in SharePoint Agreements
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssathyamoort
ms.date: 01/27/2025
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to create a template with the SharePoint Agreements solution.
---

# Create a template in SharePoint Agreements

Templates serve as a predefined structure that standardizes the creation of documents and agreements. They ensure consistency and uniformity across various documents within the workspace, streamlining the creation process and reducing the likelihood of errors. Templates can include specific sections, formatting, and content guidelines that align with the organization's requirements and branding.

Once you create and publish a template, users with access to the template can start [generating agreements](agreements-create-agreement.md) from it. Users are asked to [input values for fields](#add-fields-to-a-template), and send it for approval or eSignature based on the [workflow configured](#configure-a-workflow) with the template.

> [!NOTE]
> You can always edit a published template. However, you need to republish the template for the changes to take effect. Documents will be created based of the last published version of the template.

## Create a new template from the Agreements app

1. Go to the Agreements app in Microsoft Teams, and then select **Create a template**.

2. Optionally, you can select **Pick a file** to create a template from an existing document.

   - If you pick a file, the content of the file is copied over to the template.

   - If not, a blank template is created for you.

3. On the **Create a template** page, provide a name for the template, select the workspace where the template will be stored, and the category that the template belongs to. Set values for the country or region and the language for the template.

   ![A screenshot of the Create a template page.](../../media/content-understanding/agreements-create-template.png)

4. You can also provide a description and tags for the template.

5. Select **Open in Word** to set up fields, insert sections, configure workflows, request approvals, and publish it once it's ready.

> [!NOTE]
> You can't change the name of the template or the workspace where the template is stored after a draft template is created.

### Create a template in Microsoft Word

You can also create a template in Microsoft Word.

1. Go to the **Agreements** tab in Word, and then select **Manage templates**.

2. To create a new blank template, select **Create new template**. If you want to convert an existing document into a template, select **Convert this document to template**.

3. You can provide a user-friendly name and a description for the template.

4. Select the workspace where the template will be stored and the category that the template belongs to.

5. Set values for the country or region and the language for the template.

6. Select **Save** to create the draft template.

7. You can now add content to the template and set up fields, sections, and workflows for this template.

> [!NOTE]
> Prior to converting an existing document to a template, you need to remove any content controls or restricted editing sections from the document.


## Add fields to a template

Fields are areas of the template that should be filled in when generating agreements from the template. When configuring the template, you can define as many fields as you like. For example, the name of a contractor can occur multiple times in a consulting agreement document. You can create a field named "Contractor Name" and associate it with all occurrences of the name throughout the document when you generate a template.

Fields can either be added to the content of the document, or kept as other properties for the template. You can also define if a field needs to be provided when agreements are created from the template, or if the field is optional.

### Standard fields

There are a few standard fields that come with SharePoint Agreements AI. These fields include:

- **First party** – The first party on the agreement.
- **Second party** – The second party on the agreement.
- **Effective date**  –The date on which the agreement comes into effect.
- **Expiration date** – The date on which the agreement expires.
- **Expiration type** – This type can either be single date, where the agreement expires on a specific date, or evergreen, where the agreement never expires.

To add fields to a template, follow these steps:

1. On the **Manage templates** panel, select **Set up fields**.

   ![A screenshot of the Manage templates panel.](../../media/content-understanding/agreements-template-fields.png)

2. Here, you can search for and reuse an existing field or create a new one.

3. To insert the field into the content of the document, select the text from the main content area or place the cursor where you'd like to replace with the field, and select **Insert** from the field card on the **Manage templates** panel. You can also choose to insert this field at all similar instances throughout the document. You can review all field insertions in the template with the left and right arrow keys within the field card.

   ![A screenshot showing an opened document and the Manage templates panel.](../../media/content-understanding/agreements-insert-field-selection.png)

4. To delete the field or view more details and perform other actions, select **More options** (**...**) on the field card.

### Create a new field

To create a new field, select **Create a new field**. When creating the field, you can provide a name for the field, mark the field as a required field, add a description, and select the type of field. Fields include the following types:

- Single line of text
- Multiple lines of text
- Number
- Date and time
- Hyperlink
- Email
- Table
- SharePoint List

### Associate a field to a list or library

You can associate fields to a SharePoint list or library. If you do so, users will be provided the list of values in the list to pick from, rather than being asked to type in the value for the fields manually.

> [!NOTE]
> If you associate fields with multiple columns of the same list or library, users can pick values for the fields that correspond to a single row in the list or library. For example, if you have a list that has the list of states and countries or regions, and you associate two fields, state and country to these columns, the value for country will be automatically picked up once the user selects the state.

To associate a field to a SharePoint list or library, follow these steps when creating a new field:

1. In the **Type** section, choose **SharePoint List**, and then choose **Select**.

2. On the **Select a list** page, select the SharePoint site and the list you want to use.

   ![A screenshot of Select a list page.](../../media/content-understanding/agreements-list-selection-dialog.png)

3. On the **Select a column from the list** page, select the column name you want to associate with the field, and then select **Save**.

   ![A screenshot showing the field associated with a SharePoint list.](../../media/content-understanding/agreements-list-panel.png)

You can also allow users to manually input values with the **Document authors can type in values manually for this field** option. The values input by the authors are only used to generate the document. They won't be added to the SharePoint list.

## Add sections to a template

Sections are reusable blocks of content that can be used across templates. For more information, see [Manage sections](agreements-manage-sections.md).

To insert published sections into your template, follow these steps:

1. From the **Manage templates** panel, select **Insert sections**.

2. Pick the relevant section for your template from the list.

3. You can insert as many sections as you'd like. The list of sections inserted will be displayed under the **Insert sections** part.

4. You can also remove the section from the template by selecting the **Delete** option.

## Add conditional sections to a template

Conditional sections in a template let you create documents that change based on the information given by the document authors.

Before you can create a conditional section, you first need to add fields to the template on which the condition is based. Then, follow these steps to create a conditional section.

1. In the document, open the **Manage templates** panel and select **Define conditional sections**.

   ![A screenshot of an opened document and the Manage templates panel.](../../media/content-understanding/agreements-define-conditional-sections.png)

2. On the **Manage templates** panel, under **Conditional sections**, select **+ New** to start adding the condition.

   ![A screenshot of the Conditional sections area on the Manage templates panel.](../../media/content-understanding/agreements-new-conditional-section.png)

3. Under **New conditional section**, in the **Name** box, enter a name that reflects the content you've selected. (For this example, we named it *Reimbursement Section*.)

   ![A screenshot of the New conditional section area on the Manage templates panel.](../../media/content-understanding/agreements-name-new-conditional-section.png)

### Set conditions

You can add conditions to specify whether this section of the template will be included in the final generated document based on the values of the fields entered by the author.

For this example, we want to show the selected content for two conditions: if the fees are less 10,000 and if the nature of employment is full time.

#### Add the first condition

On the **Manage templates** panel, in the **Set up condition** section:

1. Select **Choose a field**, and then select the appropriate field. (For this example, we selected *Fees*.)

2. Select **Choose a condition**, and then select the appropriate condition. (For this example, we selected *lesser than*.)

3. Select **Enter a value**, and then enter the appropriate value. (For this example, we entered *10000*.)

   ![A screenshot of the first condition in the Set up condition section on the Manage templates panel.](../../media/content-understanding/agreements-add-first-condition.png)

#### Add additional conditions

In the **Set up condition** section:

1. Under the first condition, select **+ And** or **+ Or**, depending how you want the additional condition to be linked to the first condition. (For this example, we chose *And*.)

2. Select **Choose a field**, and then select the appropriate field. (For this example, we selected *Nature of employment*.)

3. Select **Choose a condition**, and then select the appropriate condition. (For this example, we selected *exact match*.)

4. Select **Enter a value**, and then enter the appropriate value. (For this example, we entered *FTE*.)

   ![A screenshot of an additional condition in the Set up condition section on the Manage templates panel.](../../media/content-understanding/agreements-add-additional-conditions.png)

5. When you're done entering conditions, select **Save**. You can see the new condition under **Conditional sections**.

   ![A screenshot of the new condition on the Condition sections panel on the Manage templates panel.](../../media/content-understanding/agreements-saved-condition.png)

#### Map the condition to a document section

After creating the condition, you need to map it to the section of the document that you want to display based on this condition. To do this, select the relevant section in the document and then select **Map**.

If you want to change the section of the document mapped to this condition, select **Unmap** and then repeat the process of mapping a section to the condition.

#### Edit a conditional section

To edit the conditions in a conditional section, select **More options** (**...**), and then select **Edit**.

   ![A screenshot of a condition section showing the Edit and Delete options on the Manage templates panel.](../../media/content-understanding/agreements-edit-delete-condition.png)

#### Delete a conditional section

To delete the conditions in a conditional section, select **More options** (**...**), and then select **Delete**. This deletes the condition and unmaps the selected section.

> [!NOTE]
> - You can create conditional sections around text, complete paragraphs, and entire tables. To create conditional sections around images, ensure the images are inline images.
>- You can't add conditions around table rows and columns.
>- You can't map multiple sections in the document to one condition. One condition can only be mapped to one section in the document.
>- You can't add nested conditions. To achieve nested conditions, you need to create conditional sections around every section and specify all the required conditions.

## Configure a workflow

Create customizable workflows that apply to all documents when created with the template.

### Configure an approval workflow for documents generated from the template

To set up a mandatory approval workflow on a template, follow these steps:

1. On the **Manage templates** panel, in the **Configure workflows** section, select **Configure required approvals**.

   ![A screenshot of the Configure workflows section on the Manage templates panel.](../../media/content-understanding/agreements-setup-approvals.png)

2. Set the name of the approval request. The name can be modified by document authors when they'll be prompted to send the approval request after document authoring is completed.

3. Select **Approvers** (who needs to approve it) and decide the approval order. Once the changes are done, select **Setup document approval flow**. Multiple approvers can be added to a level, and only one of them needs to approve for the request to move to next level.

   ![A screenshot of the Approvers section on the Manage templates panel.](../../media/content-understanding/agreements-approval-setup.png)

4. Once your modifications are complete, select **Save changes**. You can delete the already saved approval flow by selecting **Delete approval flow**.

5. Finally, publish the template for the changes to take effect.

### Configure a SharePoint eSignature workflow

After creating or editing a template, you can set up a SharePoint eSignature flow. This ensures that every document generated from the template is automatically sent for signatures according to the specified flow. SharePoint Agreements uses SharePoint eSignature to set up and send signature requests to recipients. For more information, see [Overview of SharePoint eSignature](/microsoft-365/syntex/esignature-overview).

To set up a mandatory signature workflow, follow these steps:

1. In the **Configure workflow** section, select **Configure required signatures**.

2. Set up signature fields in the template by first adding a signer label, such as first party or vendor.

3. Place your cursor where you want the signature to appear in the document, then insert the fields for signature, initials, and date.

   > [!NOTE]
   > You only need to insert the signature field locations in the template. During document generation, authors will have to assign signatory email addresses to the fields and send the PDF version of this document for signing.

4. You can add multiple instances of the same signature field throughout the template and then navigate through each occurrence.

5. You can create multiple signature fields for your template and add their instances in the Word document.

   ![A screenshot of setting up the signature fields in a Word document.](../../media/content-understanding/agreements-set-up-signature-fields.png)

6. Once set up, you can also choose to later modify the signature request before publishing the template.

## Publish the template

When you're done configuring your template, you can publish the template. Once the template state is **Published**, it becomes available for document authors to use it for document generation.

### Request approval before publishing a template

You can also request an approval on a template before publishing the template. The SharePoint Agreements AI solution uses the Approvals app in Teams to send approval requests. For more information, see [Approvals in Microsoft Teams](/power-automate/teams/native-approvals-in-teams).

To request approval before publishing the section, follow these steps:

1. From the **Agreements** tab in Word, select **Manage template**.

2. Select the template to send for approval or [create a new template](#create-a-template-in-microsoft-word).

3. Select the **Request approval before publishing** option to set up an approval flow before publishing the template.

4. Create the approval request.

5. Fill in the name of the request and the approvers (who needs to approve it). Decide approval order, add any additional information, and then select **Notify via email** if you want to send email notifications along with Teams notification.

6. After configuring the approval request, select **Send**. The template document is marked as read-only once the approval request starts, and those approvers who don't have access to the template will be granted view permissions.

7. Once the approval request is sent, you can track the request status (**Approval in progress** or **Approval completed**) through the Word pane by reloading the template management pane or selecting **Refresh**. You can also view the request later by selecting the **Sent** tab in the Approvals app in Teams.

8. You can cancel the sent approval request by selecting **Cancel request** or select **Edit section**, which will cancel all running flows and unlock the template for further edits, and the document will return to **Draft** state.

### Share published templates

Once a template is published, workspace owners, workspace members, and template managers can create agreements from it. You can also share the template with read-only permission to users not in the workspace. This gives those users the ability to create agreements from the template.

<br>

> [!div class="nextstepaction"]
> [See the complete list of help documentation.](agreements-overview.md#help-documentation)
