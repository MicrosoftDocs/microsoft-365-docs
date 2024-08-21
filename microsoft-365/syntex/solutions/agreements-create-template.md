---
title: Create a template with the SharePoint Agreements AI solution (Preview)
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssathyamoort
ms.date: 09/01/2024
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
description: Learn how to create a template with the SharePoint Agreements AI solution.
---

# Create a template with the SharePoint Agreements AI solution (Preview)

> [!NOTE]
> This feature is currently in limited preview and subject to change.

Templates serve as a standard format for consistently generating agreements. You can convert an existing agreement to a template or start with a blank document

## Create a new template or use an existing agreement

Follow these steps to create a new template.

1. Navigate to Agreements app in Teams, select **Create a template**.

2. Optionally, you can select **Pick a file** to create a template from an existing document.

3. Provide a name for the template.

4. Select the workspace where the template will be stored and the category which the template belongs to.

5. Set values for country and language for the template.

6. You can also optionally provide a description and tags.

7. Select **Open in Word** to setup fields, insert sections, configure workflows and request for approvals, and publish it once it's ready.

    > [!NOTE]
    > You can't change the name of the template or the workspace where the template is stored after a draft template is created.

### Create a template in Microsoft Word

You can also create a template in Microsoft Word.

1. Navigate to the **Agreements** tab in Word, select **Manage templates**.

2. To create a new blank template, select **Create new template**.

3. If you want to convert an existing document into a template, select **Convert this document to template**.

4. Provide a user-friendly name and a description for the template.

5. Select the workspace where the template will be stored and the category which the template belongs to.

6. Set values for the country and language for the template.

7. Select **Save** to create the draft template.

## Set up fields

TBD

## Associate a field to a list or library

To associate a field to the SharePoint list or library:

1. Select the dropdown menu under **Type** and select **SharePoint list**. Then, use the **Select** button to choose a SharePoint column.

![](media/image1.png)

2. On the **Select a list** page, select the list location and the list you want to use, and then select **Next**.

![](media/image2.png)

3. On the **Select a source column from the existing list** page, select the column name you want to associate with the field, and then select **Save**.

![](media/image3.png)

4. If you want to see the original page of lists again, select the **Go to the list in SharePoint** link at the bottom of the list.

5. When you're done, you'll see that the list field has been associated with the field.

![](media/image4.png)

If you want users to be able to add inputs manually, in addition to choosing from a list, select **Document authors can type in values manually for this field**. In this case, the default for the manual input data type is single line of text. Also, the values input by the authors will only be used to generate the document. They will not be added to the SharePoint list.

### Insert the field into the template

To insert the added field into the content of a template:

1. Select the content of the template (any text in the document) that you want to replace with a field or place the cursor at a specific location in the template where you want to insert the field.

2. To insert the field only at the specified selection, select **Insert**. To insert the field at all similar places in the document, select the down arrow icon next to the **Insert** button and select **Insert at all similar places**. This will insert the field at all locations with text that exactly matches the selected text.

![](media/image5.png)

3. To identify or review the multiple field insertions in the template, use the left and right arrows at the bottom of the field card.

![](media/image6.png)

4. To delete the field or view more details and perform additional actions, select **More options** (**...**) on the field card.

## Insert a section

Sections are reusable blocks of content that can be inserted in a template. They can form one of the core building blocks of your templates. You can create sections once and use them across multiple templates. Once you create a new template or edit an existing template, you can choose to insert new or remove already inserted published sections.

To insert a section into the content of a template:

1. From the **Manage templates** panel, select **Insert sections**.

2. Choose **+Select a section from library.** This will take you to the list of published sections.

3. Pick the relevant section for your template from the list, and then choose **Select**.

4. Optionally, you can edit section content after it is placed in the template as needed, if the section is marked as **Editable**.

5. You can insert as many sections as possible. The list of sections inserted will be displayed under the **Insert sections** section. You can select the relevant section, and the Word document will auto-scroll to the canvas section where the section is inserted.

6. At any time, you can delete the section from the template by selecting the **Delete** option.

## Configure workflows

Create customizable workflows that will apply to all documents when created with the template.

### Configure an approval workflow for documents generated from the template

Once you create a new template or edit an existing template, you can configure an approval flow so that all documents generated from the template are approved by the set of approvers before it can proceed to the next step.

To set up a mandatory approval workflow:

1. In the **Configure workflow** section, select **Configure required approval**.

![](media/image1.png)

2. Set the name of the approval request. The name can be modified by document authors when they will be prompted to send the approval request after document authoring is completed.

3. Select **Approvers** (who needs to approve it) and decide the approval order. Once the changes are done, select **Setup approval flow**. Multiple approvers can be added to a level, and only one of them needs to approve for the request to move to next level.

![](media/image2.png)

4. Once set up, you can also choose to later modify the approval request. Once your modifications are complete, select **Save changes** to save the updated flow. You can delete the already saved approval flow by selecting **Delete approval flow**.

![](media/image3.png)

## Configure a SharePoint eSignature workflow

Once you create a new template or edit an existing one, you can configure a SharePoint eSignature flow so that all documents generated from the template must be sent for signatures as designated in the assigned flow. Agreements Solution leverages SharePoint eSignature solution to set up and send signature requests to recipients. For more information, see [Overview of SharePoint eSignature](/microsoft-365/syntex/esignature-overview).

To set up a mandatory signature workflow, do the following steps.

1. In the **Configure workflow** section, select **Configure required signatures**.

2. Set up signature fields in the template by first adding a signer label, such as first party or vendor.

3. Place your cursor where you want the signature to appear in the document, then insert the fields for signature, initials, and date.

    > [!NOTE]
    > You only need to insert the signature field locations in the template. During document generation, authors will have to assign signatory email addresses to the fields and send the PDF version of this document for signing.

4. You can add multiple instances of the same signature field across the template and then navigate through its occurrences.

5. You can create multiple signature fields for your template and add its instances in the Word document.

6. Once set up, you can also choose to later modify the signature request. Once your modifications are complete, select **Save changes** to save the updated flow. You can delete the already saved signature flow by selecting **Delete signature flow**.