---
title: "Manage subject rights requests in Microsoft privacy management (preview)"
f1.keywords:
- CSH
ms.author: v-jgriffee
author: jmgriffee
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- M365-privacy-management
search.appverid: 
- MOE150
- MET150
description: "The subject rights request solution in Microsoft privacy management helps you find personal data and collaborate on reviewing content and creating reports."
---

# Manage subject rights requests in privacy management (preview)

In this article: learn about how to use the subject rights request solution to **find personal data** in your environment, **collaborate on reviews**, create **reports**, and **automate** key tasks.

## Purpose of subject rights requests

Privacy management provides powerful subject rights requests capabilities to help you handle requests from people seeking to manage their personal data within your organization. These requests are sometimes also referred to as data subject requests (DSRs), data subject access requests (DSARs), or consumer rights requests. Privacy management empowers personnel responsible for fulfilling subject rights requests to easily identify data subjects and find their personal information among your organization’s data in Exchange, SharePoint, OneDrive, and Teams.

Privacy management is uniquely capable in helping you prioritize items to review within the data you collect for these requests. The solution is aware of Microsoft Information Protection sensitivity labels, which indicate content that is potentially confidential and may necessitate special review, and flags items with these labels. For more information about sensitivity labels, see [Learn about sensitivity labels](sensitivity-labels.md). In addition, privacy management can detect and flag items containing the data of multiple people, where you may need to redact content prior to supplying it to the data subject.

Once data has been collected and evaluated, you can select the most relevant items to include in your reports and exports, and securely collaborate with other team members to move the requests toward completion.

## Get started with subject rights requests

Privacy management provides a central hub for your privacy administrators to handle subject rights requests that your organization has received.

To begin handling a new request case or to work on a request in progress, visit the main **Subject rights requests** page. It provides a visual overview of the cases that your team has created within privacy management, their status (active, closed, or overdue), and the request types, and a filterable list of all requests. This page is also where you can go to open a new request.

To view details about open cases, select any request in the list and choose **Go to request details**. For more information, see [Review and take action on requests](#review-and-take-action-on-requests).

To open a new request, see [Create a request](#create-a-request).

## Create a request

Subject rights management administrators can use privacy management’s wizard to create requests. This wizard will guide you through the process of finding personal data about a data subject and fulfilling their request.

The four main steps include the following.

### Identify the data subject

Provide the name of the subject who made the request and specify their relationship to your company.

### Select the request type

Choose a request type based on what the data subject wants you to do with their data. If their request relates to a specific data privacy regulation, you can also select it from a provided list to add more context. Setting a deadline (required) will make it easy to sort for approaching or overdue requests and resolve them in a timely manner. Request types include:

- **Access**: Provides a summary of the data subject’s personal information held by your organization in Microsoft 365.
- **Export**: Provides a summary and an export of the data subject’s personal information, as collected and annotated during review.
- **Tagged list for follow up**: Generates a summary of files that may require additional action outside of privacy management. One example scenario may be if you need to facilitate deletion of the data subject's personal information per their request.

### Confirm the request name

This step allows you to confirm the name of this request and add an optional description for reference.

### Review and finish

A summary of what you’ve entered during the previous steps. Any field can be edited before you select **Create request**.

At this level, some properties can be edited after the request has been created, including the deadline, request name, and description, but key properties like the identity of the subject cannot be changed. To edit an existing request, find it in your list of requests on the Subject rights requests page and use the **Edit request details** action.

## Review and take action on requests

Once a request has been opened, privacy management will begin searching your Microsoft 365 data to find data about your subject. To see the initial results, select that request in the list and choose **Go to request details**. Here you can learn more about the request’s properties, the search findings, and the request’s status. This page will also become your hub to work and collaborate on managing the files found, creating reports and exports, and completing the request.

Tiles on this page include:

- **Details**: The core details about the request, including its deadline and request date, its description, and the related privacy regulation.
- **Progress**: A timeline indicating completed steps and any tasks yet to be finished.
- **Data estimate summary**: An overview of the data evaluated in your search. To learn more about this information, see View and edit search queries.
- **Priority items to review**: If applicable, this will show information about important items that privacy management has detected for you, including confidential information already bearing a Microsoft sensitivity label, or items with data about multiple individuals that may require redaction. Priority items can be found under Data collected by filtering by the “Priority Types” column.

### Monitor progress and complete requests

Subject rights requests go through multiple stages on the way to completion. Some stages automatically progress as privacy management does its data evaluation, and others advance when subject rights requests administrators and contributors complete essential steps like reviewing, selecting, and redacting files.

Since requests may need to be worked on over time or by multiple contributors, privacy management gives continual updates on a request’s status and guidance on the next  steps to take. These updates can be viewed on the subject rights request’s overview page. The progress stages include the following.

#### Data estimate

The data estimate is the initial stage of data evaluation. After a request is created, privacy management identifies how many items in your organization’s data include potential matches to your data subject and makes note of where these items are in Microsoft 365. Once the data estimate is done, you can preview the results and review the details of your original search query. If you wish to edit your search query, see the instructions under [View and edit search queries](#view-and-edit-search-queries). If your initial results look satisfactory, you can proceed to **retrieve data**.

- Up to 10,000 individual items can be retrieved from any search. Files associated with a matching item (for example, file attachments on an email) may count toward your total. If your search exceeds the file count threshold, try revising your search to refine its scope. See the [View and edit search queries](#view-and-edit-search-queries) section for more information. You will not be able to edit your search query once you initiate the retrieve data stage.

#### Retrieve data

This stage indicates that privacy management is in the process of retrieving your data. Once it is complete, it will automatically advance to **review data**.

#### Review data

At this stage, your contributors should review the findings under the Data collected tab. Essential steps include:

- Choose whether to include the identified items in your summaries and/or exports. If a reported match is not required in the export or report, select the option to "Exclude." If the content appears to be a false positive, you can choose "Not a match" to both exclude the file from your final reports and flag the item as something that should not have been picked up by the request. To set an item's status, use the action menu (vertical ellipses) beside its name and select your desired choice. If prompted, add a note for internal reference to explain your decision. Notes are required when excluding files.
- Use the **Apply tags** option to help you identify items that need attention. The available tags include options provided by the system, for instance tagging an item for follow-up, and may include custom tags as defined under Settings.
- Use **Annotate** to create inline mark-ups or redactions on a selected file. For example, if you need to include a file for an individual that also contains the personal information of others, you can use **Area redaction** (under the Drawing button in the command bar) to black out all information that does not pertain to the person who made the request. When your edits are complete, select Include to add the redacted file to the request. Note that annotation creates a copy of the file, so that nothing in the original file is altered and will remain in its original location. The copy is stored in your Azure blob and will remain for the duration of your stated data retention period. For more information, see [Data retention](#data-retention) below.
- To review notes on an item, select it and go to the File Notes tab. You can also use the Add file note option to create a new comment. To review or add notes at an overall case level, go to the main Notes tab above and use **Add case note**. These notes will be visible to users working on the request, but will not be included in the final report or otherwise shared with the data subject.

When all items have been reviewed and their statuses set, select **Complete review** to open a flyover pane where you can review a summary of the data and add any relevant notes. These notes are for internal record keeping and aren’t shared with the data subject. Select Complete review again to move on to the next stage. Summaries of your decisions will be provided later under the Reports tab.

#### Generate reports

This stage indicates that your reports are being generated. When complete, these can be found under the **Reports** tab. Your finished files here can be exported for delivery to the data subject who made the request.

#### Close the request

When you have performed the necessary actions to resolve your subject rights request, choose **Close the request**. This creates the final report, which will be encrypted and made available in the **Reports** tab. This might take a while depending on the number of files in the request.

### View and edit search queries

To see detailed information about the data search behind a subject rights request, select **View search query details** from the data estimate summary card. This opens a pane summarizing the query and showing further details about what was found.

You will have the option here to **Preview search results** to see what type of content will be returned for this query. If you determine that you would like to change the properties of this search, and you have not begun the Retrieve Data phase, you can use the **Edit search query** option. This wizard offers the ability to change or add properties for data subject identification, your search filters and conditions, and the locations in which to look for data (including Exchange, SharePoint, OneDrive, and/or Teams). Use these options to reach your desired level of specificity. You can review the final version of your new query before hitting **Save**.

When you finish editing your search query, a new search will run to replace your previous search results. This resets your status in the Progress section to the first step, **Data estimate**. The new search may take up to 60 minutes to complete. Once it’s done, you’ll see updated results on the request’s details page.

### Data retention

Reports generated through this tool and the associated data, such as annotated files saved in Azure, are stored for a specified length of time. This duration is defined at a global level through **Settings** in the **Data retention periods** section, which allow you to choose between 30 and 90 days. To learn more, see [Get started with privacy management](privacy-management-setup.md).

## Collaborate on requests with Teams

Privacy management supports collaboration through Microsoft Teams to allow your group to work together on subject rights requests. When you create a new request, a Teams channel is automatically created and associated to your request by default. Here you can discuss the request and safely share input and contributions as it moves toward completion. To join the conversation, open your request and use the **Chat with collaborators** option. This will open Microsoft Teams and place you within the General channel for your subject rights request's Team site.

To review the list of active collaborators that can view and contribute to your Team site, within your subject rights request open the **Collaborators** tab. To add additional users to collaborate on this request, select the option to Add a collaborator.

To change the default behavior of generating Teams sites when creating a subject rights request, select the **Settings** gear in the upper right corner of the subject rights request page and select **Teams collaboration** to modify the setting.

You can also use the **Share** option in the upper right within a subject rights request to loop people in via Teams or email, or to copy the link to the page in privacy management. Sharing via Teams will allow you to select an existing Teams site available to your account, and select a specific channel within that site where it will post the link to this case along with any message you supply.

## Automate subject rights request tasks

Microsoft Power Automate is a workflow service that automates actions across applications and services. When you enable Power Automate flows for privacy management, you can automate important tasks for cases and users. To learn more about Power Automate, visit their [documentation site](/power-automate/getting-started).

Customers with Microsoft 365 subscriptions that include privacy management do not need another Power Automate licenses to use the recommended privacy management Power Automate templates. These templates can be customized to support your organization and cover core privacy management scenarios. If you choose to use premium Power Automate features in these templates, create a custom template using the Microsoft 365 compliance connector, or use Power Automate templates for other compliance areas in Microsoft 365, you may need more Power Automate licenses.

The following Power Automate templates are included in privacy management:

- **Create record for privacy management case in ServiceNow**: This template is for organizations that want to use their ServiceNow solution to track subject rights request cases. You will be asked to enter your ServiceNow instance details. Once connected to your instance, subject rights requests administrators will be able to create a record for the case in ServiceNow and can customize what the template will populate into selected fields if needed. For more information on the connector, see the [ServiceNow Connector reference page](/connectors/service-now/).
- **Create a calendar reminder**: This template is for setting due date reminders in your Outlook calendar for subject rights requests. The tool will populate certain details for you from the properties of the request, such as the name of the request and its due date. You can add descriptive details, specify recipients, and adjust other advanced settings.

### Create a new Power Automate flow from a template

To begin, open the subject rights request you want to work with, select **Automate**, and then select **Manage Power Automate flows**. This opens the Flows flyout pane. Use the New option and choose the template you want to use from the available options. From here, follow the prompts to complete setup.

After you save an instance of the template, you must execute it from the subject rights request’s detail page so that the flow instance has the right context and ID. Open the request, return to the **Automate** menu, select the template, and select **Run flow**. You can see your past activities by selecting **See flow run activity**.

### Share a Power Automate flow

By sharing a Power Automate flow, you can add another owner and allow them to edit, update, and delete the flow. All owners can also access the run history and add or remove other owners. To share a flow, open the subject rights request you want to work with, select **Automate**, and then select **Manage Power Automate flows**. From this pane you can select an existing flow, then use the Share option to add a user or a group.

This pane also gives you the option to manage the embedded connections to services being used in the Power Automate flow. Changing these settings may affect your ability to execute the flow.

### Edit or delete Power Automate flow

To adjust details of a Power Automate flow, open the subject rights request, select **Automate**, and select **Manage Power Automate flows**. From this pane, you can select an existing flow to view details. Use Edit in any section to change the properties, then save.

To remove the flow entirely, use the **Delete** option. It will remove the flow for all owners and uninstall it for all users. Previous flow instances will continue to run to avoid data loss. You can confirm your choice before the deletion is final.

## Data matching

With data matching, organizations can enable the privacy management solution to identify data subjects based on exact supplied data values. This can help increase the accuracy of locating data subject content both for your internal personnel and for external users you interact with. It also simplifies the need to supply fields manually during subject rights request creation, and provides context within subject rights requests and for the Overview tile that showcases your items with the most data subject content. To learn more about that view, see [Find and visualize your data](privacy-management-data-profile.md#items-with-the-most-data-subject-content).

To use the data matching feature, you will need to be a member of the Privacy Management role group. Select the settings gear icon from the upper right of the main subject rights requests page and select **Data matching**. From here, you will need to define the personal data schema and provide a personal data upload as shown below. Note that you can add items, and you can delete items you add via the UI. However, you cannot modify an item in place from the UI at this time.

### Prepare for data import

Before defining the schema or uploading data, you will need to identify the source of your data subject information. The required file format is .csv, which can be read by an application such as Microsoft Excel. Structure this export so that your column headers appear in the first row. These headers should include the names of the attributes for your personal data schema. Check the format of the data in each field. If any of the data contains commas, surround these values with double quotes to ensure it will not be parsed into separate fields.

### Define the personal data schema

The personal data schema will describe the attributes for your data subjects. Upload this schema on the first tab of the data matching settings area. The required files include a **personal data schema** XML file and a **rule package** XML file.

#### Personal data schema XML

The personal data schema file is an XML file that will define what column names are expected.

- Name this schema file *pdm.xml*.
- Define each column name using the Field Name tag as seen in the example below.
- Use searchable = “true” for fields you want to be searchable, up to a maximum of five fields. At least one of your field names must be searchable. Sample syntax: `\<Field name="" searchable=""/>`.
- The personal data schema has a DataStore tag section. Four mandatory fields must be mapped to your field names: primaryKeyField, upnField, firstNameField, lastNameField.

As an example, the following XML file defines a sample schema, with five fields specified as searchable: PatientID, MRN, SSN, Phone, and DOB. The primaryKeyField is mapped to PatientID, upnField is mapped to MRN, firstNameField is mapped to FirstName, and lastNameField is mapped to LastName.

You can copy, modify, and use our example.

 ```xml
<PdmSchema xmlns="http://schemas.microsoft.com/office/2020/pdm">
      <DataStore name="Patientrecords" description="Schema for patient records" version="1" primaryKeyField="PatientID" upnField="MRN" firstNameField="FirstName" lastNameField="LastName">
            <Field name="PatientID" searchable="true"/>
            <Field name="MRN" searchable="true" />
            <Field name="FirstName" />
            <Field name="LastName" />
            <Field name="SSN" searchable="true" />
            <Field name="Phone" searchable="true" />
            <Field name="DOB" searchable="true" />
            <Field name="Gender" />
            <Field name="Address" />
      </DataStore>
</PdmSchema>
 ```

#### Rule package XML

When you set up your rule package, make sure to correctly reference your personal data schema file created above: pdm.xml. In the following sample rule package XML, the following fields need to be customized to create your data match sensitive type:

- **RulePack id** & **PrivacyMatch id**: Use New-GUID to generate a GUID.
- **Datastore**: This field specifies the personal data match lookup data store to be used. Provide the defined DataStore name of a configured personal data schema.
- **idMatch**: This field points to the primary element for the personal data match.
  - **Matches**: Specifies the field to be used in exact lookup. Provide a searchable field name from the personal data schema.
  - **Classification**: This field specifies the sensitive type match that triggers personal data match lookup. You can provide the Name or GUID of an existing built-in or custom sensitive information type. In order to avoid causing performance issues, if you use a custom sensitive information type as the Classification element in personal data match,  do not use a custom sensitive information type that will match a large percentage of content (such as "any number" or "any five-letter word"). We recommend adding supporting keywords or including formatting in the definition of the custom classification sensitive information type.
- **Match**: This field points to additional evidence found in proximity of idMatch.
  - **Matches**: Provide any field name in the personal data schema for DataStore.
- **Resource**: This section specifies the name and description for sensitive type in multiple locales.
  - **idRef**: Provide GUID for ExactMatch ID.
  - **Name & descriptions**: customize as required.

In our rule package XML example below, we are referencing the pdm.xml example file from the previous step that creates the personal data schema XML:

- **Datastore**: The dataStore name references the schema file we created earlier: dataStore = "PatientRecords".
- **idMatch**: The idMatch value references a searchable field that is listed in the pdm.xml file we created earlier: idMatch matches = "SSN".
  - **Classification**: The classification value references an existing or custom sensitive information type: classification = "U.S. Social Security Number (SSN)". (In this case, we use the existing sensitive information type of U.S. Social Security Number.)

Create a rule package in XML format (with Unicode encoding), like in the following example code. You can copy, modify, and use this example.

 ```xml
<RulePackage xmlns="http://schemas.microsoft.com/office/2020/pdm">
  <RulePack id="fd098e03-1796-41a5-8ab6-198c93c62b21">
    <Version build="0" major="2" minor="0" revision="0" />
    <Publisher id="eb553734-8306-44b4-9ad5-c388ad970528" />
    <Details defaultLangCode="en-us">
      <LocalizedDetails langcode="en-us">
        <PublisherName>IP DLP</PublisherName>
        <Name>Health Care PDM Rulepack</Name>
        <Description>This rule package contains the Personal Data Match sensitive type for health care sensitive types.</Description>
      </LocalizedDetails>
    </Details>
  </RulePack>
  <Rules>
    <PrivacyMatch id = "E1CC861E-3FE9-4A58-82DF-4BD259EAB381" patternsProximity = "300" dataStore ="PatientRecords" recommendedConfidence = "65" >
      <Pattern confidenceLevel="65">
        <idMatch matches = "SSN" classification = "U.S. Social Security Number (SSN)" />
      </Pattern>
      <Pattern confidenceLevel="75">
        <idMatch matches = "SSN" classification = "U.S. Social Security Number (SSN)" />
        <Any minMatches ="3" maxMatches ="6">
          <match matches="PatientID" />
          <match matches="MRN"/>
          <match matches="FirstName"/>
          <match matches="LastName"/>
          <match matches="Phone"/>
          <match matches="DOB"/>
        </Any>
      </Pattern>
    </PrivacyMatch>
    <LocalizedStrings>
      <Resource idRef="E1CC861E-3FE9-4A58-82DF-4BD259EAB381">
        <Name default="true" langcode="en-us">Patient SSN Exact Match.</Name>
        <Description default="true" langcode="en-us">PDM Sensitive type for detecting Patient SSN.</Description>
      </Resource>
    </LocalizedStrings>
  </Rules>
</RulePackage>
 ```

### Upload personal data
After defining the personal data schema, you can perform the **personal data upload** on the second tab of the data matching settings page. When you select **Add**, choose the personal schema that you defined in the first step, then upload the file containing the personal data.

You can upload this personal data by choosing a local file, or by supplying an SAS URL to an existing Microsoft Azure Storage location containing your personal data file.
If you prepared a file as the first step in this process that conforms to the schema created, you can use that file for the upload.
