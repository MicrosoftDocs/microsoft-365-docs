<span id="_Toc510769836" class="anchor"><span id="_Toc511030357" class="anchor"><span id="_Toc511041393" class="anchor"><span id="_Toc511043138" class="anchor"><span id="_Toc511045050" class="anchor"><span id="_Toc511046202" class="anchor"><span id="_Toc511046425" class="anchor"><span id="_Toc511054127" class="anchor"><span id="_Toc511056347" class="anchor"><span id="_Toc511056411" class="anchor"><span id="_Toc511061989" class="anchor"><span id="_Toc511076766" class="anchor"><span id="_Toc511167719" class="anchor"><span id="_Toc511207912" class="anchor"><span id="_Toc511215451" class="anchor"><span id="_Toc511377200" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Introduction to DSRs
====================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================


The guide discusses how to use Office 365 products, services and administrative tools to help you find and act on personal data to respond to DSRs. Specifically, this includes how to find, access, and act on personal data that resides in Microsoft's cloud. Here’s a quick overview of the processes outlined in this guide:

1.  ***Discover***—Use search and discovery tools, such as those offered by Microsoft's Security and Compliance Center (SCC), to more easily find customer content that may be the subject of a DSR. Once potentially responsive documents are collected, you can perform one or more of the DSR actions described in the following steps to respond to the DSR request. Alternatively, you may determine that the request doesn't meet your organizations guidelines for responding to DSRs.

2.  ***Access***—Retrieve personal data that resides in the Microsoft cloud and, if requested, make a copy of it available to the data subject.

3.  ***Rectify***—Make changes or implement other requested actions on the personal data, where applicable.

4.  ***Restrict**—*Restrict the processing of personal data, either by removing licenses for various Office 365 services, or by turning off the desired services or features where possible. You can also remove data from the Microsoft cloud and retain it on-premises or at another location.

5.  ***Delete***—Permanently remove personal data that resides in the Microsoft cloud.

6.  ***Export***—Provide an electronic copy of personal data to the data subject. The GDPR’s “right of data portability” allows a data subject to request an electronic copy of personal data that’s in a structured, commonly used, machine-readable format.

<span id="_Toc508792503" class="anchor"><span id="_Toc510440214" class="anchor"><span id="_Toc510769837" class="anchor"><span id="_Toc511030358" class="anchor"><span id="_Toc511041394" class="anchor"><span id="_Toc511043139" class="anchor"><span id="_Toc511045051" class="anchor"><span id="_Toc511046203" class="anchor"><span id="_Toc511046426" class="anchor"><span id="_Toc511054128" class="anchor"><span id="_Toc511056348" class="anchor"><span id="_Toc511056412" class="anchor"><span id="_Toc511061990" class="anchor"><span id="_Toc511076767" class="anchor"><span id="_Toc511167720" class="anchor"><span id="_Toc511207913" class="anchor"><span id="_Toc511215452" class="anchor"><span id="_Toc511377201" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Terminology
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Here are definitions of terms from the GDPR that are relevant to this guide.

-   *Controller—*The natural or legal person, public authority, agency or other body which, alone or jointly with others, determines the purposes and means of the processing of personal data; where the purposes and means of such processing are determined by Union or Member State law, the controller or the specific criteria for its nomination may be provided for by Union or Member State law.

-   *Personal data* and *data subject—*Any information relating to an identified or identifiable natural person (‘data subject’); an identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person.

-   *Processor*—A natural or legal person, public authority, agency or other body which processes personal data on behalf of the controller.

<span id="_Toc508792504" class="anchor"><span id="_Toc510440215" class="anchor"><span id="_Toc510769838" class="anchor"><span id="_Toc511030359" class="anchor"><span id="_Toc511041395" class="anchor"><span id="_Toc511043140" class="anchor"><span id="_Toc511045052" class="anchor"><span id="_Toc511046204" class="anchor"><span id="_Toc511046427" class="anchor"><span id="_Toc511054129" class="anchor"><span id="_Toc511056349" class="anchor"><span id="_Toc511056413" class="anchor"><span id="_Toc511061991" class="anchor"><span id="_Toc511076768" class="anchor"><span id="_Toc511167721" class="anchor"><span id="_Toc511207914" class="anchor"><span id="_Toc511215453" class="anchor"><span id="_Toc511377202" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>How to use this guide
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

To help you find information relevant to your use case, this guide is divided into four parts.

[Part 1: Responding to DSRs for Customer Data](#_Part_1:_Responding) — *Customer Data* is data produced and stored in Office 365 in the day-to-day operations of running your business.[^1] Examples of the most commonly used Office 365 applications which allow you to author data include Word, Excel, PowerPoint, Outlook and OneNote. Office 365 also consists of applications such as SharePoint Online, Teams, and Forms which allow you to better collaborate with others. Part 1 of this guide discusses how to discover access, rectify, restrict, delete, and export data from Office 365 applications that have been used to author and store data in Office 365 online services. It addresses products and services for which Microsoft is acting as a data processor to your organization, and thus DSR capability is made available to your tenant administrator.

[Part 2: Responding to DSRs with respect to insights generated by Office 365](#_Deleting_documents_in) - Office 365 provides certain insights through services like Delve, MyAnalytics, and Workplace Analytics. How these insights are generated and how to respond to DSRs related to them are explained in Part 2 of this guide.

[Part 3: Responding to DSRs for System-generated Logs](#_Part_3:_Responding) **–** When you use Office 365 enterprise services, Microsoft generates some information such as service logs that record the use or performance of features in the online services. Most service generated data contain pseudonymous identifiers generated by Microsoft and this category is thus generally referred to within this document as *system-generated logs*. Although this data can't be attributed to a specific data subject without the use of additional information, some of it may be deemed personal under GDPR's definition for "personal data." Part 3 of this guide discusses how to access, delete, and export system-generated logs.

[Part 4: Additional resources to assist you with DSRs](#_Part_4:_Additional) – Part 4 of this guide lists limited scenarios in which Microsoft is the data controller when certain Office 365 products and services are used.

**Note:** In most cases, when users in your organization use Microsoft Office 365 products and services, you are the data controller and Microsoft is the processor. As a data controller, you are responsible for responding to the data subject directly. To assist you with this, Parts 1-3 of this guide detail the technical capabilities available to your organization to respond to a DSR request. In some limited scenarios, however, Microsoft will be the data controller when people use certain Office 365 products and services. In these cases, the information in Part 4 provides guidance on how data subjects can submit DSR requests to Microsoft.

<span id="_Toc508792505" class="anchor"><span id="_Toc510440216" class="anchor"><span id="_Toc510769839" class="anchor"><span id="_Toc511030360" class="anchor"><span id="_Toc511041396" class="anchor"><span id="_Toc511043141" class="anchor"><span id="_Toc511045053" class="anchor"><span id="_Toc511046205" class="anchor"><span id="_Toc511046428" class="anchor"><span id="_Toc511054130" class="anchor"><span id="_Toc511056350" class="anchor"><span id="_Toc511056414" class="anchor"><span id="_Toc511061992" class="anchor"><span id="_Toc511076769" class="anchor"><span id="_Toc511167722" class="anchor"><span id="_Toc511207915" class="anchor"><span id="_Toc511215454" class="anchor"><span id="_Toc511377203" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Part 1: Responding to DSRs for Customer Data
==========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

The guidance for responding to DSRs for Customer Data is divided into the following four sections.

-   [Using the Content Search eDiscovery tool to respond to DSRs](#_Using_the_Content)

-   [Using In-App functionality to respond to DSRs](#_Using_In-App_functionality)

-   [Responding to DSR rectification requests](#_Responding_to_DSR)

-   [Responding to DSR restriction requests](#_Responding_to_DSR_1)

<span id="_Toc510440217" class="anchor"><span id="_Toc510769840" class="anchor"><span id="_Toc511030361" class="anchor"><span id="_Toc511041397" class="anchor"><span id="_Toc511043142" class="anchor"><span id="_Toc511045054" class="anchor"><span id="_Toc511046206" class="anchor"><span id="_Toc511046429" class="anchor"><span id="_Toc511054131" class="anchor"><span id="_Toc511056351" class="anchor"><span id="_Toc511056415" class="anchor"><span id="_Toc511061993" class="anchor"><span id="_Toc511076770" class="anchor"><span id="_Toc511167723" class="anchor"><span id="_Toc511207916" class="anchor"><span id="_Toc511215455" class="anchor"><span id="_Toc511377204" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>How to determine the Office 365 applications that may be in scope for a DSR for Customer Data
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

To help you determine where to search for personal data or what to search for, it helps to identify the Office 365 applications that people in your organization can use to create and store data in Office 365. Knowing this narrows the Office 365 applications that are in-scope for a DSR and helps you determine how you will search for and access personal data that’s related to a DSR. Specifically, this means whether you can use the Content Search tool or if you’ll have to use the in-app functionality of the application the data was created in.

A quick way to identify the Office 365 applications that people in your organization are using to create Customer Data is to determine which applications are included in your organization's Office 365 subscription. To do this, you can access user accounts in the Office 365 admin portal and look at the product licensing information. See <span id="_Set__up" class="anchor"></span>Assign licenses to users in Office 365 for business.

<span id="_Using_the_Content" class="anchor"><span id="_Toc510440218" class="anchor"><span id="_Toc510769841" class="anchor"><span id="_Toc511030362" class="anchor"><span id="_Toc511041398" class="anchor"><span id="_Toc511043143" class="anchor"><span id="_Toc511045055" class="anchor"><span id="_Toc511046207" class="anchor"><span id="_Toc511046430" class="anchor"><span id="_Toc511054132" class="anchor"><span id="_Toc511056352" class="anchor"><span id="_Toc511056416" class="anchor"><span id="_Toc511061994" class="anchor"><span id="_Toc511076771" class="anchor"><span id="_Toc511167724" class="anchor"><span id="_Toc511207917" class="anchor"><span id="_Toc511215456" class="anchor"><span id="_Toc511377205" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Using the Content Search eDiscovery tool to respond to DSRs
==============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

When looking for personal data within the larger set of data your organization creates and stores using in Office 365, you may want to first consider which applications people have most likely used to author the data you’re looking for. Microsoft estimates that over 90% of an organization’s data that is stored in Office 365 is authored in Word, Excel, PowerPoint, OneNote, and Outlook. Documents authored in these Office applications are most likely stored on a SharePoint Online site, in a user’s OneDrive for Business account, or in a user’s Exchange Online mailbox. That means you can use the Content Search eDiscovery tool to search (and perform other DSR-related actions) across SharePoint Online sites, OneDrive for Business accounts, and Exchange Online mailboxes (including the sites and mailboxes associated with Office 365 Groups, Microsoft Teams, EDU Assignments, and StaffHub) to find documents and mailbox items that may be relevant to the DSR you’re investigating. You can also use the Content Search tool to discover Customer Data authored in other Office 365 applications.

The following table lists the Office 365 applications that people use to create Customer Authored Content and that can be discovered by using Content Search. This section of the DSR guide provides guidance about how discover, access, export, and delete data created with these Office 365 applications.

**Table 1: Applications where Content Search can be used to find Customer Data**

  ----------------------------------------------------------------
  ![](media/O365-DSR-Doc-Final_image3.png)Calendar      ![](media/O365-DSR-Doc-Final_image4.png)\
                                     SharePoint Online
  ------------------------------- -- -----------------------------
  ![](media/O365-DSR-Doc-Final_image5.png)\             ![](media/O365-DSR-Doc-Final_image6.png)\
  Excel                               Skype for Business

  ![](media/O365-DSR-Doc-Final_image7.png)\             ![](media/O365-DSR-Doc-Final_image8.png)\
  Office Lens                         Tasks

  ![](media/O365-DSR-Doc-Final_image9.png)\             ![](media/O365-DSR-Doc-Final_O365-DSR-Doc-Final_image10.png)\
  OneDrive for Business              Teams

  ![](media/O365-DSR-Doc-Final_O365-DSR-Doc-Final_image11.png)\            ![](media/O365-DSR-Doc-Final_O365-DSR-Doc-Final_image12.png)To-Do
  OneNote                            

  ![](media/O365-DSR-Doc-Final_O365-DSR-Doc-Final_image13.png)\            ![](media/O365-DSR-Doc-Final_O365-DSR-Doc-Final_image14.png)\
  Outlook/Exchange Online            Video

  ![](media/O365-DSR-Doc-Final_O365-DSR-Doc-Final_image15.png)\            ![](media/O365-DSR-Doc-Final_O365-DSR-Doc-Final_image16.png)\
  People                             Visio

  ![](media/O365-DSR-Doc-Final_O365-DSR-Doc-Final_image17.png)\            
  PowerPoint                         
  ----------------------------------------------------------------

<span id="_Toc510769842" class="anchor"><span id="_Toc511030363" class="anchor"><span id="_Toc511041399" class="anchor"><span id="_Toc511043144" class="anchor"><span id="_Toc511045056" class="anchor"><span id="_Toc511046208" class="anchor"><span id="_Toc511046431" class="anchor"><span id="_Toc511054133" class="anchor"><span id="_Toc511056353" class="anchor"><span id="_Toc511056417" class="anchor"><span id="_Toc511061995" class="anchor"><span id="_Toc511076772" class="anchor"><span id="_Toc511167725" class="anchor"><span id="_Toc511207918" class="anchor"><span id="_Toc511215457" class="anchor"><span id="_Toc511377206" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Using Content Search to find personal data
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The first step in responding to a DSR is to find the personal data that is the subject of the DSR. This consists of using Office 365 eDiscovery tools to search for personal data (among all your organization’s data in Office 365) or going directly to the native application in which the data was created. This first step - finding and reviewing the personal data at issue - will help you determine whether a DSR meets your organization's requirements for honoring or declining a data subject request. For example, after finding and reviewing the personal data at issue, you may determine the request doesn’t meet your organization’s requirements because doing so may adversely affect the rights and freedoms of others, or because the personal data is contained in a business record your organization has a legitimate business interest in retaining.

As previously stated, Microsoft estimates that over 90% of an organization’s data is created with Office applications, such as Word and Excel. This means that you can use the Content Search in the Security & Compliance Center to search for most DSR-related data.

This guide assumes that you or the person searching for personal data that may be responsive to a DSR request is familiar with or has experience using the Content Search tool in the Security & Compliance Center. For general guidance on using Content Search, see [Content Search in Office 365](https://support.office.com/article/Content-Search-in-Office-365-53390468-eec6-45cb-b6cd-7511f9c909e4). Be sure that the person running the searches has been assigned the necessary permissions in the Security & Compliance Center. This person should be added as a member of the eDiscovery Manager role group in the Security & Compliance Center; see [Assign eDiscovery permissions in the Office 365 Security & Compliance Center](https://support.office.com/article/Assign-eDiscovery-permissions-in-the-Office-365-Security-Compliance-Center-5b9a067b-9d2e-4aa5-bb33-99d8c0d0b5d7). Consider adding other people in your organization who are involved in investigating DSRs to the eDiscovery Manager role group, so they can perform the necessary actions in the Content Search tool such as previewing and exporting search results. However, unless you set up compliance boundaries (as described [here](#set-up-compliance-boundaries-to-limit-the-scope-of-content-searches)) be aware that an eDiscovery Manager can search all content locations in your organization, including ones that may not be related to a DSR investigation. [](#_Set__up)

After you find the data, you can then perform the specific action to satisfy the request by the data subject.

### Searching content locations

You can search the following types of content locations with the Content Search tool.

-   Exchange Online mailboxes; this includes the mailboxes associated with Office 365 Groups and Microsoft Teams

-   Exchange Online public folders

-   SharePoint Online sites; this includes the sites associated with Office 365 Groups and Microsoft Teams

-   OneDrive for Business accounts

**Note:** This guide assumes that all data that might be relevant to a DSR investigation is stored in Office 365; in other words, stored in the Microsoft cloud. Data stored on a user’s local computer or on-premises on your organization’s file servers is outside the scope of a DSR investigation for data stored in Office 365.

### Tips for searching content locations

-   Begin by searching all content locations in your organization (which you can search in a single search) to quickly determine which content locations contain items that match your search query. Then you can re-run the search and narrow the search scope to the specific locations that contain relevant items.

-   Use search statistics to identify the top locations that contain items that match your search query. See [View keyword statistics for Content Search results](https://support.office.com/article/View-keyword-statistics-for-Content-Search-results-9701a024-c52e-43f0-b545-9a53478aec04).

-   Search the Office 365 audit log for recent file and folder activities performed by the user who is the subject of the DSR. Searching the audit log will return a list of auditing records that will contain the name and location of resources the user has recently interacted with. You may be able to use this information to build a content search query. See [Search the audit log in the Office 365 Security & Compliance Center](https://support.office.com/article/Search-the-audit-log-in-the-Office-365-Security-Compliance-Center-0d4d0f35-390b-4518-800e-0c7ec95e946c).

### Building search queries to find personal data

The DSR you’re investigating most likely will contain identifiers that you can use in the keyword search query to search for the personal data. Here are some common identifiers that can be used in a search query to find personal data:

-   Email address or alias

-   Phone number

-   Mailing address

-   Employee ID number

-   National ID number or EU member version of a Social Security Number

The DSR that you’re investigating most likely will have an identifier and other details about the personal data that is the subject of the request that you can use in a search query.

Searching for just an email address or employee ID will probably return a lot of results. To narrow the scope of your search so it returns content most relevant to the DSR, you can add conditions to the search query. When you add a condition, the keyword and a search condition are logically connected by the **AND** Boolean operator. This means only items that match *both* the keyword and the condition will be returned in the search results.

The following table lists some conditions you can use to narrow the scope of a search. The table also lists the values that you can use for each condition to search for specific document types and mailbox items.

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **Condition**    **Description**                                                                                                                                                                                                                                                                                                                                                                                                                          **Example of condition values**
  ---------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------
  File type        The extension of a document or file. Use this condition to search for Office documents and files created by Office 365 applications. Use this condition when searching for documents located on SharePoint Online sites and OneDrive for Business accounts.                                                                                                                                                                              csv – Searches for comma separated value (CSV) files; Excel files can be saved in CSV format and CSV file can easily be imported into Excel
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                   Note that the corresponding document property is filetype.                                                                                                                                                                                                                                                                                                                                                                               docx – Searches for Word file
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                   For a complete list of file extensions that you can search for, see [Default crawled file name extensions and parsed file types in SharePoint.](https://technet.microsoft.com/library/jj219530.aspx)                                                                                                                                                                                                                                     mpp – Searches for Project files
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                            one – Searches for OneNote files
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                            pdf – Search for files saved in a PDF format
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                            pptx – Searches for PowerPoint files
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                            xlxs – Searches for Excel files
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                            vsd – Searches for Visio files
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                            wmv – Searches for Windows Media video files

  Message type     The email message type to search for. Use this condition to search mailboxes for contacts (People), meetings (Calendar) tasks, or Skype for Business conversations.                                                                                                                                                                                                                                                                      contacts – Searches the My Contacts list (People) of a mailbox
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                   Note that the corresponding email property is kind.                                                                                                                                                                                                                                                                                                                                                                                      email – Searches email messages
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                            im – Searches Skype for Business conversations
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                            meetings – Searches appointments and meeting requests (Calendar)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                            tasks – Searches the My Tasks list (Tasks); using this value will also return tasks created in Microsoft To-Do.

  Compliance tag   The label assigned to an email message or a document. Labels are used to classify email and documents for data governance and enforce retention rules based on the classification defined by the label. Use this condition to search for items that have been automatically or manually assigned a label.                                                                                                                                > compliancetag="personal data"
                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                   This is a useful condition for DSR investigations because your organization may be using labels to classify content related to data privacy or that contains personal data or sensitive information. See the “Using Content Search to find all content with a specific label applied to it” section in [Overview of labels in Office 365](https://support.office.com/article/overview-of-labels-af398293-c69d-465e-a249-d74561552d30).   
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

There are many more email and document properties and search conditions that you can use to build more complex search queries. See the following sections in the [Keyword queries and search conditions for Content Search](https://support.office.com/article/Keyword-queries-and-search-conditions-for-Content-Search-c4639c2e-7223-4302-8e0d-b6e10f1c3be3?ui=en-US&rs=en-US&ad=US) help topic for more information.

-   [Searchable email properties](https://support.office.com/article/Keyword-queries-and-search-conditions-for-Content-Search-c4639c2e-7223-4302-8e0d-b6e10f1c3be3)

-   [Searchable site (document) properties](https://support.office.com/article/Keyword-queries-and-search-conditions-for-Content-Search-c4639c2e-7223-4302-8e0d-b6e10f1c3be3)

-   [Search conditions](https://support.office.com/article/Keyword-queries-and-search-conditions-for-Content-Search-c4639c2e-7223-4302-8e0d-b6e10f1c3be3)

### Searching for personal data in SharePoint lists, discussions, and forms

In addition to searching for personal data in documents, you can also use Content Search to search for other types of data that’s created by using native SharePoint Online apps. This includes data created by using SharePoint lists, discussions, and forms. When you run a Content Search and search SharePoint Online sites (or OneDrive for Business accounts) data from lists, discussions, and forms that match the search criteria will be returned in the search results.

### Examples of search queries

Here are some examples of search queries that use keywords and conditions to search for personal data in response to a DSR. The examples show two versions of the query: one of the keyword syntax (where the condition is included in Keyword box) and one showing the GUI-based version of the query with conditions.

#### Example 1

This example returns Excel files located on SharePoint Online sites and OneDrive for Business accounts that contain the specified email address. Note that files might be returned if the email address appears in the file metadata.

**Keyword syntax**

pilar@contoso.com AND filetype="xlxs"

**GUI**

![](media/O365-DSR-Doc-Final_O365-DSR-Doc-Final_image18.png)

#### Example 2

This example returns Excel or Word files located on SharePoint Online sites and OneDrive for Business accounts that contain the specified employee ID or birth date.

(98765 OR "01-20-1990") AND (filetype="xlxs" OR filetype="docx")

**GUI**

![](media/O365-DSR-Doc-Final_O365-DSR-Doc-Final_image19.png)

#### Example 3

This example returns email messages that contain the specified ID numbers, which is a France Social Security Number (INSEE)

"1600330345678 97" AND kind="email"

**GUI**

![](media/O365-DSR-Doc-Final_image20.png)

### Working with partially indexed items in Content Search

Partially indexed items (also called *unindexed items*) are Exchange Online mailbox items and documents on SharePoint Online and OneDrive for Business sites that for some reason weren't completely indexed for search, which means they aren’t searchable by using Content Search. Most email messages and site documents are successfully indexed because they fall within the [indexing limits for Office 365](https://support.office.com/article/limits-for-content-search-in-the-office-365-security-compliance-center-78fe3147-1979-4c41-83bb-aeccf244368d?). The reasons that email messages or files aren’t indexed for search include:

-   The file type is file type is [unrecognized or unsupported for indexing](https://support.office.com/article/partially-indexed-items-in-content-search-in-office-365-d1691de4-ca0d-446f-a0d0-373a4fc8487b?); though sometimes the file type is supported for indexing but an indexing error occurred for a specific file

-   Email messages have an attached file without a valid handler, such as image file (this is the most common cause of partially indexed email items)

-   Files attached to email messages are too large or there are too many attached files

We recommend that you learn more about partially indexed items so that you can work with them when responding to DSR requests. For more information, see:

-   [Partially indexed items in Content Search in Office 365](https://support.office.com/article/partially-indexed-items-in-content-search-in-office-365-d1691de4-ca0d-446f-a0d0-373a4fc8487b?)

-   [Investigating partially indexed items in Office 365 eDiscovery](https://support.office.com/article/investigating-partially-indexed-items-in-office-365-ediscovery-4e8ff113-6361-41e2-915a-6338a7e2a1ed)

-   [Exporting unindexed items](https://support.office.com/article/Export-Content-Search-results-from-the-Office-365-Security-Compliance-Center-ed48d448-3714-4c42-85f5-10f75f6a4278#unidexeditems)

### Tips for working with partially indexed items

It’s possible that data responsive to a DSR investigation may be in a partially indexed item. Here’s some suggestions for working with partially indexed items:

-   After you run a search, the number of estimated partially items is displayed in the search statistics; this estimate doesn’t include partially indexed items in SharePoint Online and OneDrive for Business. Export the reports for a Content Search to get information about partially indexed items. The **Unindexed Items.csv** report contains information about unindexed items, including the location of the item, the URL if the item is in SharePoint Online or OneDrive for Business, and the subject line (for messages) or name of the document. For more information, see [Export a Content Search report](https://support.office.com/article/Export-a-Content-Search-report-5c8c1db6-d8ac-4dbb-8a7a-f65d452169b9).

-   The statistics and list of partially indexed items that are returned with the results of a Content Search are all the partially items from the content locations that are searched.

<!-- -->

-   To retrieve partially indexed items that are potentially responsive to a DSR investigation, you can do one of the following things.

#### Export all partially indexed items

You export the both the results of a content search and the partially indexed items from the content location that were search. You can also export only the partially indexed items. Then you can open them in their native application and review the content. You have to use this option to export items from SharePoint Online and OneDrive for Business. See [Export Content Search results from the Office 365 Security & Compliance Center](https://support.office.com/article/Export-Content-Search-results-from-the-Office-365-Security-Compliance-Center-ed48d448-3714-4c42-85f5-10f75f6a4278).

#### Export a specific set of partially indexed items from mailboxes

Instead of exporting all partially indexed mailbox items from a search, you can re-run a Content Search to search for a specific list of partially indexed items, and then export them. Note that you can do this only for mailbox items. See [Prepare a CSV file for a targeted Content Search in Office 365](https://support.office.com/article/prepare-a-csv-file-for-a-targeted-content-search-in-office-365-82c97bb4-2b64-4edc-804d-cedbda525d22).

<span id="_Toc510440220" class="anchor"><span id="_Toc510769843" class="anchor"><span id="_Toc511030364" class="anchor"><span id="_Toc511041400" class="anchor"><span id="_Toc511043145" class="anchor"><span id="_Toc511045057" class="anchor"><span id="_Toc511046209" class="anchor"><span id="_Toc511046432" class="anchor"><span id="_Toc511054134" class="anchor"><span id="_Toc511056354" class="anchor"><span id="_Toc511056418" class="anchor"><span id="_Toc511061996" class="anchor"><span id="_Toc511076773" class="anchor"><span id="_Toc511167726" class="anchor"><span id="_Toc511207919" class="anchor"><span id="_Toc511215458" class="anchor"><span id="_Toc511377207" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Next steps
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

After you find the personal data that's relevant to the DSR, be sure to retain the specific Content Search that you used to find the data. You will likely re-use this search to complete other steps in the DSR response process, such as obtaining a copy of it, exporting it, or permanently deleting it. [](#_Step_2:_Access)[](#_Step_6:_Export_1)[](#_Step_5:_Delete)

<span id="_Additional_considerations_for" class="anchor"><span id="_Toc508792510" class="anchor"><span id="_Toc510440221" class="anchor"><span id="_Toc510769844" class="anchor"><span id="_Toc511030365" class="anchor"><span id="_Toc511041401" class="anchor"><span id="_Toc511043146" class="anchor"><span id="_Toc511045058" class="anchor"><span id="_Toc511046210" class="anchor"><span id="_Toc511046433" class="anchor"><span id="_Toc511054135" class="anchor"><span id="_Toc511056355" class="anchor"><span id="_Toc511056419" class="anchor"><span id="_Toc511061997" class="anchor"><span id="_Toc511076774" class="anchor"><span id="_Toc511167727" class="anchor"><span id="_Toc511207920" class="anchor"><span id="_Toc511215459" class="anchor"><span id="_Toc511377208" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Additional considerations for selected applications
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The following sections describe things you should keep in mind when searching for data in the following Office 365 applications.

-   [Office Lens](#office-lens)

-   [OneDrive for Business and SharePoint Experience Settings](#onedrive-for-business-and-sharepoint-online-experience-settings)

-   [Microsoft Teams for Education](#microsoft-teams-for-education)

-   [Microsoft To-Do](#_Microsoft_To-Do)

-   [Skype for Business](#skype-for-business)

### Office Lens

A person using Office Lens (a camera app supported by devices running iOS, Android, and Windows) can take a picture of whiteboards, hardcopy documents, business cards, and other things that contain a lot of text. Office Lens uses optical character recognition technology that will extract text in an image and save it to an Office document such as a Word, PowerPoint, and OneNote or to a PDF file. Users can then upload the file that contains the text from the image to their OneDrive for Business account in Office 365. That means you can use the Content Search tool to search, access, delete, and export data in files that were created from an Office Lens image. For more information about Office Lens, see:

-   [Office Lens for iOS](https://support.office.com/article/Office-Lens-for-iOS-fbdca5f4-1b1b-4391-a931-dc1c2582397b)

-   [Office Lens for Android](https://support.office.com/article/Office-Lens-for-Android-ec124207-0049-4201-afaf-b5874a8e6f2b)

-   [Office Lens for Windows](https://support.office.com/article/Office-Lens-for-Windows-577ec09d-8da2-4029-8bb7-12f8114f472a)

### OneDrive for Business and SharePoint Online experience settings

In addition to user-created files stored in OneDrive for Business accounts and SharePoint Online sites, these services store information about the user that is used to enable various experiences. Users still in your organization can access much of this information by using in-product functionality. The following information provides guidance on how to access, view, and export OneDrive for Business and SharePoint Online application data.

#### SharePoint user profiles

The user's Delve profile allows users to maintain properties stored in the SharePoint Online user profile, including birthday, mobile phone number (and other contact information), about me, projects, skills and expertise, schools and education, interests, and hobbies.

##### **End** users

Users can discover, access, and rectify SharePoint Online user profile data using the Delve profile experience. See [View and update your profile in Office Delve](https://support.office.com/article/view-and-update-your-profile-in-office-delve-4e84343b-eedf-45a1-aeb9-8627ccca14ba) for more details.

An alternate way for users to access their profile data is to navigate to the **edit profile page** in their OneDrive for Business account, which can be accessed by going to the **EditProfile.aspx** **path** under the OneDrive for Business account URL. For example, for a user **user1@contoso.com**, their OneDrive for Business account is located at:

https://contoso-my.sharepoint.com/personal/user1\_contoso\_com/\_layouts/15/**OneDrive.aspx**

The URL for the edit profile page would be:

https://contoso-my.sharepoint.com/personal/user1\_contoso\_com/\_layouts/15/**EditProfile.aspx**.

Note that properties sourced in Azure Active Directory can’t be changed within SharePoint Online. However, users can go to their **Account** page by selecting their **photo** in the Office 365 header, and then selecting **My account**. Changing the properties here may require users to work with their admins to discover, access, or rectify a user profile property.

##### **Admins**

Admins can discover, access, rectify, and export SharePoint user profile properties on behalf of users in several ways:

-   View, access and rectify profile properties in the SharePoint admin center. Go to the **SharePoint admin center** and click the **user profiles** tab. Click **Manage user profiles**, enter a user's name and click **Find**. The admin can right-click any user and select **Edit My Profile**. Note that properties sourced in Azure Active Directory can’t be changed within SharePoint Online.

-   Export a profile data using SharePoint Online PowerShell. For example, an admin can extract the information for a user **user1@contoso.com** by doing the following:

1.  [Connect to SharePoint Online](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps) using the SharePoint Online management shell.

2.  Run the following commands:

> \$user = "user1@contoso.com"
>
> Export-SPOUserProfile -LoginName \$user -OutputFolder "C:\\users\\admin\\exportfolder"
>
> Running these commands will export all user profile properties to a CSV file that is saved in the specified folder. Then you can redact as appropriate and share this data with the user.

-   [Manage user profiles in the SharePoint admin center](https://support.office.com/article/Manage-user-profiles-in-the-SharePoint-admin-center-494bec9c-6654-41f0-920f-f7f937ea9723). Admins can determine which properties are editable by users. Admins can also define new custom properties. See [Create and edit custom user properties](https://support.office.com/article/Manage-user-profiles-in-the-SharePoint-admin-center-494bec9c-6654-41f0-920f-f7f937ea9723).

#### User Information list on SharePoint Online sites

A subset of a user's SharePoint user profile is synchronized to the User information list of every site that they visit or have permissions to access. This is used by SharePoint Online experiences, such as People columns in document libraries, to display basic information about the user, such as the name of the creator of a document.

Admins can control which properties are replicable inside the SharePoint admin center. To do this:

1.  Go to the **SharePoint admin center** and click the **user profiles** tab.

2.  Click **Manage User Properties** to see a list of properties.

3.  From here, you can right-click any property and select **Edit** and adjust various settings.

> Under **Policy Settings** the **replicable** property controls whether the property will be represented in the User information list. Note that not all properties support adjusting this, as some are needed to replicate for the service to work.

The data in a User Information list will match the information stored in SharePoint user profile and will be automatically rectified if the source is changed. Because it matches the information in the SharePoint user profile, there is no need to export it separately.

If a user wants to see all sites they have access to, they can go to SharePoint Home and search for **contentclass:STS\_Site**.

For users that have left the organization, this data remains in the sites they interacted with for referential integrity of SharePoint column fields. Admins can discover, access, and export the user information data by using SharePoint Online PowerShell:

1.  [Connect to SharePoint Online](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps) using the SharePoint Online Management Shell.

2.  Run the following commands, which you can also save as a [PowerShell script](https://docs.microsoft.com/powershell/scripting/powershell-scripting?view=powershell-6):

> \$sites = Get-SPOSite -IncludePersonalSite \$true
>
> \$user = "[](mailto:)user1@contoso.com"
>
> foreach (\$site in \$sites)
>
> {
>
> Export-SPOUserInfo -LoginName \$user -site \$site.Url -OutputFolder "C:\\users\\admin\\exportfolder"

}

See [Get-SPOSite](https://docs.microsoft.com/powershell/module/sharepoint-online/get-sposite?view=sharepoint-ps) documentation for more details.

#### OneDrive for Business experience settings

A user's OneDrive for Business experience stores information to help the user find and navigate to content of interest to them. Most of this information can be accessed by end users using the corresponding in-product features listed in the following table:

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **Experience**                                                                                                                          **Data stored**                                                                                                                                                                                                                          **End user access**
  --------------------------------------------------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Shared items                                                                                                                            A list of documents shared with the user by others. It also presents a view of the documents the user has shared with others, which is a view of the permissions the user has set on the items in their OneDrive for Business account.   From a user's OneDrive for Business, select **Shared.**

  [Discover view](https://support.office.com/article/Help-users-use-the-Discover-view-in-OneDrive-effbf250-57c8-436d-9e0f-edd017a896b7)   A list of relevant content they have access to, based on who they work with and what they're working on.                                                                                                                                 From a user's OneDrive for Business, select **Discover.**
                                                                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                          This depends on integration with the Office Graph, which admins can control in the **Settings** **tab** in the SharePoint admin center.                                                                                                  

  Mobile Push Notifications                                                                                                               Push notifications to users' OneDrive for Business and SharePoint Online mobile apps, if configured. This includes relevant activity such as new files shared with them.                                                                 View **Notifications** sent to the OneDrive for Business and SharePoint mobile apps.
                                                                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                          Admins can manage these in **Settings tab** in the SharePoint admin center, under **Mobile Push Notifications – OneDrive** and **Mobile Push Notifications – SharePoint**.                                                               

  Followed Sites and Content                                                                                                              Users can follow sites, documents, or people.                                                                                                                                                                                            Followed sites can be viewed and managed in the **SharePoint Home** experience. This experience shows **Recent Sites** as well.
                                                                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                          Followed sites can be viewed using in product experiences.                                                                                                                                                                               From a user's OneDrive for Business account, they can select the **Settings** gear icon, select **Site Settings**, then select **Newsfeed.** On the right side, they can click the appropriate content type under **I'm Following.**

  Newsfeed                                                                                                                                A list of user activities, including followed content, mentions, and profile changes. Users can access it using in-product experiences.                                                                                                  From a user's OneDrive for Business account, they can select the **Settings** gear icon, select **Site Settings**, and then select **Newsfeed.**
                                                                                                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                                                                   Newsfeed settings can be managed as part of the user profile experience, that was previously described.

  Access requests                                                                                                                         A list of requested access to content.                                                                                                                                                                                                   From a user's OneDrive for Business account, they can select the **Settings** gear icon, select **Site Settings**, and then select **Access Requests and Invitations**
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

An admin can export these lists by using [PowerShell Script](https://docs.microsoft.com/powershell/scripting/powershell-scripting?view=powershell-6) and [SharePoint Client-Side Object Model (CSOM)](https://docs.microsoft.com/sharepoint/dev/sp-add-ins/complete-basic-operations-using-sharepoint-client-library-code) commands. See [Appendix B](#_Appendix_B:_Scripts) in this guide for a sample of the script to export these settings. This script can also be adapted to meet your organization’s needs. For example, an admin can extract the information for **user1@contoso.com** by using the following procedure.[](#_Appendix_B:_OneDrive)

1.  Assign yourself admin permissions to the user's OneDrive for Business account. This can be done in the Office 365 admin center describe [here](https://support.office.com/article/get-access-to-and-back-up-a-former-user-s-data-a6f7f9ad-e3f5-43de-ade5-e5a0d7531604).[](#onedrive-for-business)

2.  Run the **ExportODBLists** PowerShell script (or a customize version of the script):

> \$ODBSite = "https://contoso-my.sharepoint.com/personal/user1\_contoso\_com"
>
> ExportODBLists.ps1 -siteUrl \$ODBSite

The script will export data stored for the features described in the previous table to multiple CSV files. The admin can review or redact before providing them to the end user.

The script creates following CSV files (if the corresponding lists are found). The name of the CSV file corresponds to the title of the list.

  **(Reference, \<id\>).csv, where \<id\> is a sequence of letters and numbers**   List of items shared with the user
  -------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------
  **Sharing Links.csv**                                                            List of sharing links generated by the user
  **userActivityFeedHiddenListF4387007-BE61-432F-8BDB-85E6B9679E4B.csv**           List of relevant activity
  **notificationSubscriptionHiddenList6D1E55DA-2564-4A22-A5F9-6C4FCAFF53DE.csv**   List of notifications sent to mobile apps, and app IDs for those devices
  **Social.csv**                                                                   List of followed content
  **MicroFeed.csv**                                                                List of Newsfeed items
  **Access Requests.csv**                                                          List of Access requests
  **SharePointHomeCacheList.csv**                                                  Cached data from the user navigating to SharePoint Home. This is refreshed every time the user navigates to SharePoint Home.

#### OneDrive for Business and SharePoint Online search

OneDrive for Business and SharePoint Online in-app search experience stores a user's search queries for 30 days to increase relevance of search results. To export query results, an admin can use the export profile command as previously documented:

> \$user = "user1@contoso.com"
>
> Export-SPOUserProfile -LoginName \$user -OutputFolder "C:\\users\\admin\\exportfolder"

### Microsoft Teams for Education

Microsoft Teams for Education offers two additional collaboration features that teachers and students can use that creates and stores personal data: Assignments and OneNote Class Notebook. You can use Content Search to discover data in both.

#### Assignments

Students files associated with an Assignment are stored in a document library in the corresponding Teams SharePoint Online site. IT admins can use the Content Search tool to search for student files that are related to assignments. For example, an admin could search all SharePoint Online sites in the organization and use the student’s name and class or assignment name in the search query to find data relevant to a DSR.

There’s other data related to Assignments that isn’t stored in the class team SharePoint Online site, which means it’s not discoverable with Content Search. This includes:

-   Files that the teacher assigns to students as part of the assignment

-   Student grades and feedback from the teacher

-   The list of documents submitted for an assignment by each student

-   Assignment metadata

For this type if data, an IT admin or data owner (such as a teacher) may have to go into the Assignment in the class team to find data relevant to a DSR.

#### OneNote Class Notebook

The OneNote Class Notebook is stored in the class team SharePoint Online site. Every student in a class has a private notebook that’s shared with the teacher. There’s also a content library where a teacher can share documents with students, and a collaboration space for all students in the class. Data related to these capabilities is discoverable with Content Search.

Here’s specific guidance to search for a Class Notebook.

1.  Run a Content Search using the following search criteria:

-   Search all SharePoint Online sites

-   Include the name of the class team as a search keyword; for example, “9C Biology”.

1.  Preview the search results and look for the item that corresponds to the Class Notebook.

2.  Select that item, and then copy the folder path that’s displayed in the details pane. This is the root folder for the Class Notebook.

3.  Edit the search that you created in step 1 and replace the class name in the keyword query with the folder path of the Class Notebook and precede the folder path with the **path** site property; for example, **path:https://contosoedu.onmicrosoft.com/sites/9C Biology/SiteAssets/9C Biology Notebook/**. Be sure to include the quotation marks and the trailing forward slash.

4.  Add a search condition and select the File Type condition and use one for the value of the file type. This will return all OneNote files in the search results. The resulting keyword syntax would look something like this:[](#building-search-queries-to-find-personal-data)

> path: "https://contosoedu.onmicrosoft.com/sites/9C Biology/SiteAssets/9C Biology Notebook/" AND filetype="one"

1.  Re-run the Content Search. The search results should include all OneNote files for the Class Notebook from the class team.

### Microsoft To-Do

Tasks (called *to-*dos, which are saved in *to-do lists*) in Microsoft To-Do are saved as tasks in a user’s Exchange Online mailbox. That means that you can use the Content Search tool to search, access, delete, and export to-dos. For more information, see [Set up Microsoft To-Do](https://support.office.com/article/Set-up-Microsoft-To-Do-490c1a8c-2333-4952-8125-841afadb9620).

### Skype for Business

Here some additional information about how to access, view, and export personal data in Skype for Business.

-   Files attached to a meeting are retained in the actual meeting for 180 days and then become inaccessible. These files can be accessed by meeting participants by joining the meeting from the meeting request and then viewing or downloading the attached file. See the “Use the attachments in the meeting” section in [Preload attachments for a Skype for Business meeting](https://support.office.com/article/preload-attachments-for-a-skype-for-business-meeting-fd3d9f9d-b448-4754-b813-02e49393f251).

-   Conversations in Skype for Business are retained in the Conversation History folder in user mailboxes. You can use Content Search to search mailboxes for data in Skype conversations.

-   A data subject can export their contacts in Skype for Business. To do this, they would right-click a contact group in Skype for Business and click **Copy**. Then they can paste the list of email addresses into a text or Word document.

-   If the Exchange Online mailbox of a meeting participant is placed on Litigation Hold or assigned to an Office 365 retention policy, files attached to a meeting are retained in the participants mailbox. You can use Content Search to search for those files in the participant’s mailbox if the retention period for the file has not expired. For more information about retaining files, see [Retaining large files attached to a Skype for Business meeting](https://docs.microsoft.com/skypeforbusiness/set-up-policies-in-your-organization/retaining-large-files-attached-to-a-meeting).

<span id="_Toc510440222" class="anchor"><span id="_Toc510769845" class="anchor"><span id="_Toc511030366" class="anchor"><span id="_Toc511041402" class="anchor"><span id="_Toc511043147" class="anchor"><span id="_Toc511045059" class="anchor"><span id="_Toc511046211" class="anchor"><span id="_Toc511046434" class="anchor"><span id="_Toc511054136" class="anchor"><span id="_Toc511056356" class="anchor"><span id="_Toc511056420" class="anchor"><span id="_Toc511061998" class="anchor"><span id="_Toc511076775" class="anchor"><span id="_Toc511167728" class="anchor"><span id="_Toc511207921" class="anchor"><span id="_Toc511215460" class="anchor"><span id="_Toc511377209" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Providing a copy of personal data
================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

After you’ve found personal data that is potentially responsive to a DSR, it’s up to you and your organization to decide which data to provide the data subject. For example, you can provide them with a copy of the actual document, an appropriately redacted version, or a screenshot of the portions that you’ve deemed appropriate to share. For each of these responses to an access request, you’ll have to retrieve a copy of the document or other item that contains the responsive data.

When providing a copy to the data subject, you may have to remove or redact personal information about other data subjects and any confidential information.

<span id="_Using_the_application" class="anchor"><span id="_Toc510440223" class="anchor"><span id="_Toc510769846" class="anchor"><span id="_Toc511030367" class="anchor"><span id="_Toc511041403" class="anchor"><span id="_Toc511043148" class="anchor"><span id="_Toc511045060" class="anchor"><span id="_Toc511046212" class="anchor"><span id="_Toc511046435" class="anchor"><span id="_Toc511054137" class="anchor"><span id="_Toc511056357" class="anchor"><span id="_Toc511056421" class="anchor"><span id="_Toc511061999" class="anchor"><span id="_Toc511076776" class="anchor"><span id="_Toc511167729" class="anchor"><span id="_Toc511207922" class="anchor"><span id="_Toc511215461" class="anchor"><span id="_Toc511377210" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Using Content Search to get a copy of personal data
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

There are two ways to use the Content Search tool to get a copy of a document or mailbox item that you’ve found after running a search.

-   Preview the search results and then download a copy of the document or item. This is a good way to download a few items or files.

-   Export the search results and then download a copy of all items returned by the search. This method is more complex, but it’s a good way to download lots of items that are responsive to the DSR. Useful reports are also included with you export search results. You can use these reports to get additional information about each item. The **Results.csv** report is particularly useful because it contains a lot of information about the exported items, such as the exact location of the item (for example, the mailbox for email messages or the URL for documents or lists located on SharePoint Online and OneDrive for Business sites). This information will help you identify the owner of the item, in case you need to contact them during the DSR investigation process. For more information about the reports that are included when you export search results, see [Export a Content Search report](https://support.office.com/article/Export-a-Content-Search-report-5c8c1db6-d8ac-4dbb-8a7a-f65d452169b9).

### Preview and download items

After you run a new search or open an existing search, you can preview each item that matched the search query to verify that it’s related to the DSR you’re investigating. This also includes SharePoint lists and web pages that are returned in the search results. You can also download the original file if you have to provide it to the data subject. In both cases you could take a screenshot to satisfy the data subject’s request obtain the information.

Note that some types of items can’t previewed. If an item or file type isn't supported for preview, you have the option to download an individual item to your local computer or to a mapped network drive or other network location. You can only preview [supported file types](https://support.office.com/article/content-search-in-office-365-53390468-eec6-45cb-b6cd-7511f9c909e4?ui=en-US&rs=en-US&ad=US).

To preview and download items:

1.  Open the Content Search in the Security & Compliance Center.

2.  If the results aren’t displayed, click **Preview results**.

3.  Click an item to view it.

4.  Click **Download original file** to download the item to your local computer. You’ll also have to download items that can’t be previewed.

For more information about previewing search results, see [Preview search results](https://support.office.com/article/content-search-in-office-365-53390468-eec6-45cb-b6cd-7511f9c909e4?ui=en-US&rs=en-US&ad=US).

### Export and download items

You can also export the results of a content search to get a copy of email messages, documents, lists, and web pages containing the personal data, though this method is more involved than previewing items. See the next section for details about exporting the results of a Content Search.[](#_Step_6:_Export_1)

<span id="_Toc510440224" class="anchor"><span id="_Toc510769847" class="anchor"><span id="_Toc511030368" class="anchor"><span id="_Toc511041404" class="anchor"><span id="_Toc511043149" class="anchor"><span id="_Toc511045061" class="anchor"><span id="_Toc511046213" class="anchor"><span id="_Toc511046436" class="anchor"><span id="_Toc511054138" class="anchor"><span id="_Toc511056358" class="anchor"><span id="_Toc511056422" class="anchor"><span id="_Toc511062000" class="anchor"><span id="_Toc511076777" class="anchor"><span id="_Toc511167730" class="anchor"><span id="_Toc511207923" class="anchor"><span id="_Toc511215462" class="anchor"><span id="_Toc511377211" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Exporting personal data 
=======================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

The “right of data portability” allows a data subject to request an electronic copy of personal data that’s in a “structured, commonly used, machine-readable format”, and to request that your organization transmit these electronic files to another data controller. Microsoft supports this right in two ways:

-   Offering Office 365 applications that save data in native, machine-readable, commonly-used electronic format. For more information about Office file formats, see [Office File Formats-Technical Documents](https://msdn.microsoft.com/en-us/library/office/cc313105(v=office.12).aspx).

-   Enabling your organization to export the data in the native file format, or a format (such as CSV, TXT, and JSON) that can be easily imported to another application.

To meet a DSR export request, you can export Office documents in their native file format and export data from other Office 365 applications.

<span id="_Toc510440225" class="anchor"><span id="_Toc510769848" class="anchor"><span id="_Toc511030369" class="anchor"><span id="_Toc511041405" class="anchor"><span id="_Toc511043150" class="anchor"><span id="_Toc511045062" class="anchor"><span id="_Toc511046214" class="anchor"><span id="_Toc511046437" class="anchor"><span id="_Toc511054139" class="anchor"><span id="_Toc511056359" class="anchor"><span id="_Toc511056423" class="anchor"><span id="_Toc511062001" class="anchor"><span id="_Toc511076778" class="anchor"><span id="_Toc511167731" class="anchor"><span id="_Toc511207924" class="anchor"><span id="_Toc511215463" class="anchor"><span id="_Toc511377212" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Export and download content using Content Search
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

When you export the results of a Content Search, email items can be downloaded as PST files or as individual messages (.msg files). When you export documents and lists from SharePoint Online and OneDrive for Business sites, copies in the native file formats are exported. For example, SharePoint lists are exported as CSV files and Web pages are exported as .aspx or html files.

**Note**: Exporting mailbox items from a user’s mailbox using Content Search requires that the user (whose mailbox you’re exporting items from) is assigned an Exchange Online Plan 2 license. 

To export and download items:

1.  Open the Content Search in the Security & Compliance Center.

2.  On the search fly out page, click ![](media/O365-DSR-Doc-Final_image21.png) **More**, and then click **Export results**. Note that you can also export a report.

3.  Complete the sections on the **Export results** fly out page. Be sure to use the scroll bar to view all export options.

4.  Go back to the Content search page in the Security & Compliance Center, and click the **Export** tab.

5.  Click **Refresh** to update the page.

6.  Under the **Name** column, click the export job that you just created. The name of the export job is the name of the content search appended with **\_Export**.

7.  On the export fly out page, under **Export key**, **click Copy to clipboard**. You’ll use this key in step 10 to download the search results

8.  On the top of the fly out page, click ![](media/O365-DSR-Doc-Final_image21.png) **Download results**.

9.  If you're prompted to install the **Microsoft Office 365 eDiscovery Export Tool**, click **Install**.

10. In the **eDiscovery Export Tool**, paste the export key that you copied in step 7 in the appropriate box.

11. Click **Browse** to specify the location where you want to download the search result files.

12. Click **Start** to download the search results to your computer.

When the export process is complete, you can access the files in the location on your local computer where they were downloaded. Results of a content search are downloaded to a folder named after the Content Search. Documents from sites are copied to a subfolder named **SharePoint**. Mailbox items are copied to subfolder named **Exchange**.

For detailed step-by-step instructions, see [Export Content Search results from the Office 365 Security & Compliance Center](https://support.office.com/article/Export-Content-Search-results-from-the-Office-365-Security-Compliance-Center-ed48d448-3714-4c42-85f5-10f75f6a4278).

<span id="_Downloading_documents_and" class="anchor"><span id="_Toc510440226" class="anchor"><span id="_Toc510769849" class="anchor"><span id="_Toc511030370" class="anchor"><span id="_Toc511041406" class="anchor"><span id="_Toc511043151" class="anchor"><span id="_Toc511045063" class="anchor"><span id="_Toc511046215" class="anchor"><span id="_Toc511046438" class="anchor"><span id="_Toc511054140" class="anchor"><span id="_Toc511056360" class="anchor"><span id="_Toc511056424" class="anchor"><span id="_Toc511062002" class="anchor"><span id="_Toc511076779" class="anchor"><span id="_Toc511167732" class="anchor"><span id="_Toc511207925" class="anchor"><span id="_Toc511215464" class="anchor"><span id="_Toc511377213" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Downloading documents and lists from SharePoint Online and OneDrive for Business
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Another way to export data from SharePoint Online and OneDrive for Business is to download documents and lists directly from a SharePoint Online site or a OneDrive for Business account. You would have to get assigned the permissions to access a site, and then go to the site and download the contents. See:

-   [Download files and folders from OneDrive or SharePoint](https://support.office.com/article/download-files-and-folders-from-onedrive-or-sharepoint-5c7397b7-19c7-4893-84fe-d02e8fa5df05)

-   [Export SharePoint lists to Excel](https://support.office.com/article/export-to-excel-from-sharepoint-bfb2ea48-6118-4fa9-abb6-cced9424e5d9)

For some DSR export requests, you may want to allow the data subject to download content themselves. This enables the data subject to go to a SharePoint Online site or shared folder and click **Sync** to sync all contents in the document library or selected folders. See:

-   [Enable users to sync SharePoint files with the new OneDrive sync client](https://support.office.com/article/Enable-users-to-sync-SharePoint-files-with-the-new-OneDrive-sync-client-22e1f635-fb89-49e0-a176-edab26f69614)

-   [Sync SharePoint files with the new OneDrive sync client](https://support.office.com/article/sync-sharepoint-files-with-the-new-onedrive-sync-client-6de9ede8-5b6e-4503-80b2-6190f3354a88)

<span id="_Toc510440227" class="anchor"><span id="_Toc510769850" class="anchor"><span id="_Toc511030371" class="anchor"><span id="_Toc511041407" class="anchor"><span id="_Toc511043152" class="anchor"><span id="_Toc511045064" class="anchor"><span id="_Toc511046216" class="anchor"><span id="_Toc511046439" class="anchor"><span id="_Toc511054141" class="anchor"><span id="_Toc511056361" class="anchor"><span id="_Toc511056425" class="anchor"><span id="_Toc511062003" class="anchor"><span id="_Toc511076780" class="anchor"><span id="_Toc511167733" class="anchor"><span id="_Toc511207926" class="anchor"><span id="_Toc511215465" class="anchor"><span id="_Toc511377214" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Deleting personal data
=====================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

The “right to erasure” by the removal of personal data from an organization’s Customer Data is a key protection in the GDPR. Removing personal data includes deleting entire documents or files or deleting specific data within a document or file (which would be an action and process like the ones described in the Rectify section in this guide).

As you investigate or prepare to delete personal data in response to a DSR, here are a few important things to understand about how data deletion (and retention) works in Office 365.

-   **Soft delete vs. hard delete** – In Office 365 services such as Exchange Online, SharePoint Online, and OneDrive for Business there is the concept of *soft deletion* and *hard deletion*, which relate to the recoverability of a deleted item (usually for a limited period) before it’s permanently removed from the Microsoft cloud with no chance of recovery. In this context, a soft-deleted item can be recovered by a user and/or an admin for a limited amount of time before it’s hard-deleted. When an item has been hard-deleted, it’s marked for permanent removal and will be purged as soon as it is processed by the corresponding Office 365 service. Here’s how soft delete and hard delete works for items in mailboxes and sites (regardless of whether the data owner or an admin deletes items):

    -   **Mailboxes:** A item is soft-deleted when it’s deleted from the Deleted Items folder or when a user deletes an item by pressing **Shift + Delete**. When item is soft-deleted, it is moved to the Recoverable Items folder in the mailbox. At this point, the item can be recovered by the user until the deleted item retention period expires (in Office 365, the deleted item retention policy is 15 days, but can be increased up to 30 days by an admin). After retention period expires, the item is hard-deleted and moved to a hidden folder (called the *Purges* folder). The item will be permanently removed (purged) from Office 365 the next time the mailbox is processed (mailboxes are processed once every 7 days).

    -   **SharePoint Online and OneDrive for Business sites**: When a file or documented is deleted, it is moved to the site’s Recycle Bin (also called the *first-stage Recycle Bin* (which is like the Recycle Bin in Windows). The item will remain in the Recycle Bin for 93 days (the deleted item retention period for sites in Office 365). After that period, the item is automatically moved to Recycle Bin for the site collection, which also called the *second-stage Recycle Bin*. (Note that users or admins--with the appropriate permissions--can also delete items from the first-stage Recycle Bin). At this point, the item becomes soft-deleted; it can still be recovered by (by a site collection administrator in SharePoint Online or by the user or admin in OneDrive for Business).When an item is deleted from the second-stage Recycle Bin (either manually or automatically) it becomes hard-deleted and is not accessible by user or an IT admin. Note that the retention period is 93 days for both the first-stage and second-stage recycle bins. That means the second-stage Recycle Bin retention starts when the item is first deleted; therefore, the total maximum retention time is 93 days for both recycle bins.

> Understanding the actions that result in an item being soft-deleted or hard-deleted will help you determine how to delete data in a way that meets GDPR requirements when responding to a deletion request.

-   **Legal holds and retention policies** – In Office 365, a “hold” can be place on mailboxes and sites; in short, this means that nothing will be permanently removed (hard-deleted) if a mailbox or site is on hold, until the retention period for an item expires or until the hold is removed. This is important in the context of deleting Customer Content in response to a DSR: if an item is hard-deleted from a content location that is on hold, the item is not permanently removed from Office 365. That means it could conceivably be recovered by an IT admin. If your organization has a requirement or policy that data be permanently deleted and unrecoverable in Office 365 in response to DSR, then a hold would have to be removed from a mailbox or site to permanently delete data in Office 365. More than likely, your organization’s guidelines for responding to DSRs will have a process in place to determine whether a specific DSR deletion request or a legal hold takes precedence. If a hold is removed to delete items, it can be re-implemented after the item is deleted.

<span id="_Deleting_documents_in_1" class="anchor"><span id="_Toc510440228" class="anchor"><span id="_Toc510769851" class="anchor"><span id="_Toc511030372" class="anchor"><span id="_Toc511041408" class="anchor"><span id="_Toc511043153" class="anchor"><span id="_Toc511045065" class="anchor"><span id="_Toc511046217" class="anchor"><span id="_Toc511046440" class="anchor"><span id="_Toc511054142" class="anchor"><span id="_Toc511056362" class="anchor"><span id="_Toc511056426" class="anchor"><span id="_Toc511062004" class="anchor"><span id="_Toc511076781" class="anchor"><span id="_Toc511167734" class="anchor"><span id="_Toc511207927" class="anchor"><span id="_Toc511215466" class="anchor"><span id="_Toc511377215" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Deleting documents in SharePoint Online and OneDrive for Business
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

After you find the document located on a SharePoint Online site or in a OneDrive for Business account (by following the guidance in Discover section of this guide) that needs to be deleted, a data privacy officer or IT admin would need to be assign the necessary permissions to access the site and delete the document. If appropriate, the document owner can also be instructed to delete the document.

Here’s the high-level process for deleting documents from sites.

1.  Go to the site and locate the document.

2.  Delete the document. When you delete a document from a site, it’s sent to the first-stage Recycle Bin.

3.  Go to the first-stage Recycle Bin (the site Recycle Bin) and delete the same document you deleted in the previous step. The document is sent to the second-stage Recycle Bin. **At this point, the document is soft-deleted**.

4.  Go to the second-stage Recycle Bin (which is the site collection Recycle Bin) and delete the same document that you deleted from the first-stage Recycle Bin. **At this point, the document is hard-deleted.**

**Important:** You can’t delete a document that is located on a site that is on hold (with one of the retention or legal hold features in Office 365). In the case where a DSR delete request takes precedence over a legal hold, the hold would have to be removed from the site before a document could be permanently deleted.

See the following topics for detailed procedures.

-   [Delete a file, folder, or link from a SharePoint document library](https://support.office.com/article/Delete-a-file-folder-or-link-from-a-SharePoint-document-library-71f3c90a-0d24-4d80-8b66-f88234b79a52#ID0EAADAAA=Online)

-   [Delete items or empty the Recycle Bin of a SharePoint site](https://support.office.com/article/delete-items-or-empty-the-recycle-bin-of-a-sharepoint-site-2e713599-d13e-40d6-96dc-66f0a366f74e#ID0EAADAAA=Online)

-   [Delete items from the site collection recycle bin](https://support.office.com/article/Delete-items-from-the-site-collection-Recycle-Bin-dd5c00c2-aef6-4458-9d04-80b185077653#ID0EAADAAA=Online)

-   “Get access to the former employee’s OneDrive for Business documents” section in [Get access to and back up a former user's data](https://support.office.com/article/get-access-to-and-back-up-a-former-user-s-data-a6f7f9ad-e3f5-43de-ade5-e5a0d7531604?ui=en-US&rs=en-US&ad=US)

-   [Delete files or folders in OneDrive for Business](https://support.office.com/article/Delete-files-or-folders-in-OneDrive-21fe345a-e488-4fa7-932b-f053c1bebe8a)

-   [Delete a list in SharePoint](https://support.office.com/article/delete-a-list-in-sharepoint-2a7bca5b-b8fd-4e5b-8f4b-2ac034f3070d#ID0EAADAAA=Online)

-   [Delete list items in SharePoint Online](https://support.office.com/article/delete-list-items-in-sharepoint-online-db722233-4a38-4889-a6cf-4b33fe5c60c0)

<span id="_Toc510440229" class="anchor"><span id="_Toc510769852" class="anchor"><span id="_Toc511030373" class="anchor"><span id="_Toc511041409" class="anchor"><span id="_Toc511043154" class="anchor"><span id="_Toc511045066" class="anchor"><span id="_Toc511046218" class="anchor"><span id="_Toc511046441" class="anchor"><span id="_Toc511054143" class="anchor"><span id="_Toc511056363" class="anchor"><span id="_Toc511056427" class="anchor"><span id="_Toc511062005" class="anchor"><span id="_Toc511076782" class="anchor"><span id="_Toc511167735" class="anchor"><span id="_Toc511207928" class="anchor"><span id="_Toc511215467" class="anchor"><span id="_Toc511377216" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Deleting a SharePoint site
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

You may determine that the best way to respond to a DSR delete request is to delete an entire SharePoint site, which will delete all that data located in the site. You can do this by running cmdlets in SharePoint Online PowerShell.

-   Use the [Remove-SPOSite](https://docs.microsoft.com/powershell/module/sharepoint-online/remove-sposite?view=sharepoint-ps) cmdlet to delete the site and move it the SharePoint Online Recycle Bin (soft-delete).

-   Use the [Remove-SPODeletedSite](https://docs.microsoft.com/powershell/module/sharepoint-online/remove-spodeletedsite?view=sharepoint-ps) cmdlet to permanently delete the site (hard-delete).

Note that you can’t delete a site the is placed on an eDiscovery hold or is assigned to a retention policy. Sites must be removed from an eDiscovery hold or retention policy before you can delete it.

<span id="_Toc510440230" class="anchor"><span id="_Toc510769853" class="anchor"><span id="_Toc511030374" class="anchor"><span id="_Toc511041410" class="anchor"><span id="_Toc511043155" class="anchor"><span id="_Toc511045067" class="anchor"><span id="_Toc511046219" class="anchor"><span id="_Toc511046442" class="anchor"><span id="_Toc511054144" class="anchor"><span id="_Toc511056364" class="anchor"><span id="_Toc511056428" class="anchor"><span id="_Toc511062006" class="anchor"><span id="_Toc511076783" class="anchor"><span id="_Toc511167736" class="anchor"><span id="_Toc511207929" class="anchor"><span id="_Toc511215468" class="anchor"><span id="_Toc511377217" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Deleting a OneDrive for Business site
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Similarly, you may determine to delete a user’s OneDrive for Business site in response to a DSR deletion request. If you delete the user’s Office 365 account, their OneDrive for Business site is retained (and restorable) for 30 days. After 30 days, it’s moved to the SharePoint Online Recycle Bin (soft-deleted), and then after 93 days, it’s permanently deleted (hard-deleted). To accelerate this process, you can use the [Remove-SPOSite](https://docs.microsoft.com/powershell/module/sharepoint-online/remove-sposite?view=sharepoint-ps) cmdlet to move the OneDrive for Business site to the Recycle Bin and then use the [Remove-SPODeletedSite](https://docs.microsoft.com/powershell/module/sharepoint-online/remove-spodeletedsite?view=sharepoint-ps) cmdlet to permanently delete it. As with sites in SharePoint Online, you can’t delete a user’s OneDrive for Business site if it was assigned to an eDiscovery hold or a retention policy before the user’s account was deleted.

<span id="_Toc510440231" class="anchor"><span id="_Toc510769854" class="anchor"><span id="_Toc511030375" class="anchor"><span id="_Toc511041411" class="anchor"><span id="_Toc511043156" class="anchor"><span id="_Toc511045068" class="anchor"><span id="_Toc511046220" class="anchor"><span id="_Toc511046443" class="anchor"><span id="_Toc511054145" class="anchor"><span id="_Toc511056365" class="anchor"><span id="_Toc511056429" class="anchor"><span id="_Toc511062007" class="anchor"><span id="_Toc511076784" class="anchor"><span id="_Toc511167737" class="anchor"><span id="_Toc511207930" class="anchor"><span id="_Toc511215469" class="anchor"><span id="_Toc511377218" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Deleting OneDrive for Business and SharePoint Online Experience Settings
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

In addition to user-created files stored in OneDrive for Business accounts and SharePoint Online sites, these services store information about the user that is used to enable various experiences. These were previously documented in this document. See the [Additional considerations for select applications](#_Additional_considerations_for) section under [Using the Content Search eDiscovery tool to respond to DSRs](#_Set__up), for information about how to access, view, and export OneDrive for Business and SharePoint Online application data.

### Deleting a SharePoint user profile

The SharePoint user profile will be permanently deleted 30 days after the user account is deleted in Azure Active Directory. However, you can hard-delete the user account, which will remove the SharePoint user profile. For more information, see the [Deleting a user](#_Deleting_a_user) section in this guide.[](#_Deleting_a_user)

If you decide to just delete the user account (and not hard-delete it) you can manually remove the SharePoint user profile by doing the following:

1.  [Connect to SharePoint Online](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps) using the SharePoint Online Management Shell.

2.  Run the following commands in SharePoint Online PowerShell:

> \$user = "user1@contoso.com"
>
> Remove-SPOUserProfile -LoginName \$user

### Deleting User Information lists on SharePoint Online sites

For users that have left the organization, this data remains in the sites they interacted with for referential integrity of SharePoint column fields. Admins can discover and delete the data in User Information lists using doing the following:

1.  [Connect to SharePoint Online](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps) using the SharePoint Online Management Shell.

2.  Run the following commands in SharePoint Online PowerShell (which you can also save and run as a [PowerShell script](https://docs.microsoft.com/powershell/scripting/powershell-scripting?view=powershell-6)):

> \$sites = Get-SPOSites
>
> \$user = <user1@contoso.com>
>
> foreach (\$site in \$sites)
>
> {
>
> Remove-SPOUserInfo -LoginName \$user -site \$site.Url
>
> }

By default, this command will retain the display name of the user and delete unnecessary properties such as telephone number, email address, skills and expertise, or other properties that were copied from the SharePoint Online user profile.

You can also use the **RedactUser** parameter to specify an alternate display name for the user in the User Information list. This will affect several parts of the user experience and will result in information loss when looking at the history of files in the site.

Finally, the redaction capability can’t remove all possible metadata or content referencing a user from documents. The way to achieve this redaction of content is describe in the [Making changes to content in OneDrive for Business and SharePoint Online](#_Making_changes_to) section in this guide. This method consists of downloading, deleting, and then uploading a redacted copy of the file.[](#_Making_changes_to)

### Deleting OneDrive for Business experience settings

The recommended way to delete all OneDrive for Business experience settings and information is to remove the user's OneDrive for Business site, after reassigning any retained files to other users.

An admin can delete these lists by using PowerShell and the SharePoint Client-Side Object Model commands. A script to export these lists has been in [Appendix B](#_Appendix_B:_Scripts), which an admin can adapt to meet the admin's needs. For example, an admin can extract the information for user1@contoso.com as follows:[](#_Appendix_B:_Scripts)

1.  Assign yourself permissions to the user's OneDrive for Business account. This can be done in the Office 365 admin center as described [here](https://support.office.com/article/get-access-to-and-back-up-a-former-user-s-data-a6f7f9ad-e3f5-43de-ade5-e5a0d7531604?ui=en-US&rs=en-US&ad=US).[](#onedrive-for-business)

2.  Run the **DeleteODBLists** PowerShell script (from Appendix B); for example:

> \$ODBSite = "https://contoso-my.sharepoint.com/personal/user1\_contoso\_com"
>
> DeleteODBLists -siteUrl \$ODBSite

The script will permanently delete the hidden lists containing these settings. Do not run this script on OneDrive for Business accounts for active users that are still in the organization.

### OneDrive for Business and SharePoint Online search queries

A user’s search queries created in the OneDrive for Business and SharePoint Online search experience are automatically deleted 30 days after the user creates the query.

<span id="_Toc510440232" class="anchor"><span id="_Toc510769855" class="anchor"><span id="_Toc511030376" class="anchor"><span id="_Toc511041412" class="anchor"><span id="_Toc511043157" class="anchor"><span id="_Toc511045069" class="anchor"><span id="_Toc511046221" class="anchor"><span id="_Toc511046444" class="anchor"><span id="_Toc511054146" class="anchor"><span id="_Toc511056366" class="anchor"><span id="_Toc511056430" class="anchor"><span id="_Toc511062008" class="anchor"><span id="_Toc511076785" class="anchor"><span id="_Toc511167738" class="anchor"><span id="_Toc511207931" class="anchor"><span id="_Toc511215470" class="anchor"><span id="_Toc511377219" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Deleting items in Exchange Online mailboxes
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

You may have to delete items in Exchange Online mailboxes to satisfy a DSR delete request. There are two ways that an IT admin can delete items in mailbox, depending on whether to soft-delete or hard-delete the target items. Like documents on SharePoint Online or OneDrive for Business sites, items in a mailbox that is on hold can’t be permanently deleted from Office 365. The hold must be removed before the item can be deleted. Again, you’ll have to determine whether the hold on the mailbox or the DSR delete request takes precedence.

### Soft-delete mailbox items

You can use the Content Search Action functionality to soft-delete items that are return by a Content Search. As previously explained, soft-deleted items is moved to the Recoverable Items folder in the mailbox.

Here’s a quick overview of this process:

1.  Create and run a Content Search to find the items that you want to delete from the user mailbox. You may have to re-run the search to narrow that search results so that only the items that you want to delete are returned in the search results.

2.  Use the **New-ComplianceSearchAction** **-Purge** command in Office 365 PowerShell to soft-delete the item that are returned by the Content Search that was created in the previous step.

For detailed instructions, see [Search for and delete email messages in your Office 365 organization](https://support.office.com/article/Search-for-and-delete-email-messages-in-your-Office-365-organization-Admin-Help-3526fd06-b45f-445b-aed4-5ebd37b3762a).

### Hard-delete mailbox items

If you have to hard-delete mailbox items in response to the DSR deletion request, you can use the **Search-Mailbox -DeleteContent** command in Exchange Online PowerShell. If you use this method, consider using Content Search to develop and refine a search query so that only the items that are to be deleted are returned in the search. Then you can use that query syntax when you run the **Search-Mialbox -DeleteContent** command.

For detailed instructions, see [Search for and delete messages](https://technet.microsoft.com/library/ff459253(v=exchg.150).aspx).

### Hard-delete items in a mailbox on hold

As previously explained, if you hard-delete items in a mailbox on hold, items are not removed from the mailbox. They are moved to a hidden folder in the Recoverable Items folder (the **Purges** folder) and will remain there until the hold duration for the item expires or until the hold is removed from the mailbox. If either of those things happen, the items will be purged from Office 365 the next time that the mailbox is processed.

Your organization might determine that items being permanently deleted when the hold duration expires meets the requirements for a DSR deletion request. However, if you determine that mailbox items must be immediately purged from Office 365, you would have to remove the hold from the mailbox and then hard-deleted the items from the mailbox. For detailed instructions, see [Delete items in the Recoverable Items folder of cloud-based mailboxes on hold](https://support.office.com/article/Delete-items-in-the-Recoverable-Items-folder-of-cloud-based-mailboxes-on-hold-Admin-Help-a85e1c87-a48e-4715-bfa9-d5275cde67b0).

**Note:** To hard-delete mailbox items to satisfy a DSR deletion request by following the procedure in the previous topic, you may have to soft-delete those items while the mailbox is still on hold so that they are moved to the Recoverable Items folder.

<span id="_Deleting_a_user" class="anchor"><span id="_Toc510769856" class="anchor"><span id="_Toc511030377" class="anchor"><span id="_Toc511041413" class="anchor"><span id="_Toc511043158" class="anchor"><span id="_Toc511045070" class="anchor"><span id="_Toc511046222" class="anchor"><span id="_Toc511046445" class="anchor"><span id="_Toc511054147" class="anchor"><span id="_Toc511056367" class="anchor"><span id="_Toc511056431" class="anchor"><span id="_Toc511062009" class="anchor"><span id="_Toc511076786" class="anchor"><span id="_Toc511167739" class="anchor"><span id="_Toc511207932" class="anchor"><span id="_Toc511215471" class="anchor"><span id="_Toc511377220" class="anchor"><span id="_Toc510440233" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Deleting a user
================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

In addition to deleting personal data in response to a DSR deletion request, a data subject's “right to be forgotten” may also be fulfilled by deleting their Office 365 user account. Here are some reasons that you might want to delete a user:

-   The data subject has left (or is in the process of leaving) your organization.

-   The data subject has requested that you delete system-generated logs that have been collected about them. Examples of data in system-generated logs include Office 365 app and service usage data, information about search requests performed by the data subject, and data generated by product and services as a product of system functionality and interaction by users or other systems. For more information, see [Part 3: Responding to DSRs for System-generated Logs](#_Part_3:_Responding) in this guide.[](#_Part_3:_Responding)

-   Permanently prevent the data subject from accessing or processing data in Office 365 (as opposed to temporarily restriction access by the methods described in the section [Responding to DSR restriction requests](#_Responding_to_DSR_1).[](#_Responding_to_DSR_1)

After you delete an Office 365 user account:

-   The user can no longer sign-in to Office 365 or access any of your organization's Office 365 resources, such as their OneDrive for Business account, SharePoint Online sites, or their Exchange Online mailbox.

-   Personal data, such as email address, alias, phone number, and mailing address, that's associated with the user account is deleted

-   Some Office 365 apps will remove information about the user. For example, in Microsoft Flow, the deleted user will be removed from the list of owners for a shared flow.

-   System-generated logs about the data subject will be deleted 30 days after the user account is deleted. For more information, see [Deleting system-generated logs](#_Deleting_system-generated_logs) in this guide.[](#_Deleting_Pseudonymized_Data)

**Important:** After you delete a user account, that person will lose the ability to sign in to Office 365 and the ability to sign in to any products or services for which he or she formerly relied upon for a work or school account. That person would also be unable to initiate any DSR requests through Microsoft directly in instances where Microsoft is the data controller. For more information, see the [Product and services authenticated with an Org ID for which Microsoft is a data controller](#_Product_and_services) section in Part 4 of this guide.

Like the soft-deletion and hard-deletion of data that was described in the previous section on deleting personal data, when you delete a user account, there is also a soft-deleted and hard-deleted state.

-   When you initially delete a user account (by deleting the user in the Office 365 admin center or in the Azure portal), the user account is soft-deleted, and moved the Recycle Bin in Azure for up to 30 days. At this point, the user account can be restored.

-   If you permanently deleted the user account, the user account is hard-deleted and removed from the Recycle Bin in Azure. At this point, the user account can't be restored, and any data associated with the user account will be permanently removed from the Microsoft cloud. System-generated logs about the data subject will be deleted after the user account is hard-deleted.

Here’s the high-level process for deleting a user from your Office 365 organization.

1.  Go to the Office 365 admin center or the Azure portal and locate the user.

2.  Delete the user. When you initially delete the user, the user’s account is sent to the Recycle Bin. At this point, the user is soft-deleted. The account is retained in the soft-deleted for 30 days, which allows you to restore the account. After 30 days, the account is automatically hard-deleted. For specific instructions, see [Delete users from Azure AD](https://docs.microsoft.com/azure/active-directory/add-users-azure-active-directory).

> You can also soft-delete a user account in the Office 365 admin center. See [Delete a user from your organization](https://support.office.com/article/Delete-a-user-from-your-organization-D5155593-3BAC-4D8D-9D8B-F4513A81479E).

1.  If you don't want to wait for 30-days for the user account to be hard-deleted, you can manually hard-delete it. To do this in the Azure portal, go to the Recently deleted users list and permanently delete the user. At this point the user is hard-deleted. For instructions, see [How to permanently delete a recently deleted user](https://docs.microsoft.com/azure/active-directory/active-directory-users-restore).

> Note that you can't hard-delete a user in the Office 365 admin portal.

<span id="_Removing_Exchange_Online" class="anchor"><span id="_Toc510769857" class="anchor"><span id="_Toc511030378" class="anchor"><span id="_Toc511041414" class="anchor"><span id="_Toc511043159" class="anchor"><span id="_Toc511045071" class="anchor"><span id="_Toc511046223" class="anchor"><span id="_Toc511046446" class="anchor"><span id="_Toc511054148" class="anchor"><span id="_Toc511056368" class="anchor"><span id="_Toc511056432" class="anchor"><span id="_Toc511062010" class="anchor"><span id="_Toc511076787" class="anchor"><span id="_Toc511167740" class="anchor"><span id="_Toc511207933" class="anchor"><span id="_Toc511215472" class="anchor"><span id="_Toc511377221" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Removing Exchange Online data
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

One thing to understand when deleting a user is what happens to the user's Exchange Online mailbox. After the user account is hard-deleted (in step 3 in the previously process) the deleted user's mailbox isn't automatically purged from Office 365. It will take up to 60 days after the user account is hard-deleted to permanently remove it from Office 365. Here's the mailbox lifecycle after the user account is deleted and a description of the state of the mailbox data during that time:

-   **Day 1 – Day 30**: The mailbox can be fully restored by restoring the soft-deleted user account.

-   **Day 31 – Day 60**: For 30 days after the user account is hard-deleted, an admin in your organization can recover the data in the mailbox and import it into a different mailbox. This provides Office 365 organizations the ability to recover the mailbox data if necessary.

-   **Day 61 – Day 90**: An admin can no longer recover the data in the mailbox. The mailbox data will be marked for permanent removal, and it will take up to 30 more days for the mailbox data to be purged from Office 365.

If you determine that this mailbox lifecycle doesn't meet your organization's requirements for responding to a DSR deletion request, you can [contact Microsoft Support](https://support.microsoft.com/) *after* you hard-delete the user account, and request Microsoft to manually initiate the process to permanently remove the mailbox data. Note that this process to permanently remove mailbox data starts automatically after day 61 in the lifecycle, so there would be no reason to contact Microsoft after this point in the lifecycle.

<span id="_Toc510769858" class="anchor"><span id="_Toc511030379" class="anchor"><span id="_Toc511041415" class="anchor"><span id="_Toc511043160" class="anchor"><span id="_Toc511045072" class="anchor"><span id="_Toc511046224" class="anchor"><span id="_Toc511046447" class="anchor"><span id="_Toc511054149" class="anchor"><span id="_Toc511056369" class="anchor"><span id="_Toc511056433" class="anchor"><span id="_Toc511062011" class="anchor"><span id="_Toc511076788" class="anchor"><span id="_Toc511167741" class="anchor"><span id="_Toc511207934" class="anchor"><span id="_Toc511215473" class="anchor"><span id="_Toc511377222" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Using In-App functionality to respond to DSRs
=============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

While most Customer Data is authored and produced using the applications described in the previous section, Office 365 also offers many other applications that customers can use to produce and store Customer Data. However, Content Search doesn’t currently have the ability to find data authored in these other Office 365 applications. To find data generated by these applications, you or the data owner must use in-product functionality or features to find data that may be relevant to a DSR. The following table lists these Office 365 applications. Click the application icon to go the section in this guide that describes how to respond to DSR requests for data authored in the application.

**Table 2: Applications where in-app functionality can be used to find Customer Data**

  -------------------------------------------------------------------------------------
  ![](media/O365-DSR-Doc-Final_image22.png)Business Apps for Office 365   ![](media/O365-DSR-Doc-Final_image23.png)
                                                       
                                                       PowerApps
  ---------------------------------------------------- --------------------------------
  ![](media/O365-DSR-Doc-Final_image24.png)Flow                           ![](media/O365-DSR-Doc-Final_image25.png)
                                                       
                                                       Project Online

  ![](media/O365-DSR-Doc-Final_image26.png)\                              ![](media/O365-DSR-Doc-Final_image27.png)StaffHub
   Forms                                               

  ![](media/O365-DSR-Doc-Final_image28.png)\                              ![](media/O365-DSR-Doc-Final_image29.png)Stream
  Kaizala                                              

  ![](media/O365-DSR-Doc-Final_image30.png)Planner                        ![](media/O365-DSR-Doc-Final_image31.png)Sway

  ![](media/O365-DSR-Doc-Final_image32.png)Power BI                       ![](media/O365-DSR-Doc-Final_image33.png)\
                                                       Yammer
  -------------------------------------------------------------------------------------

<span id="_Flow" class="anchor"><span id="_Toc511030380" class="anchor"><span id="_Toc511041416" class="anchor"><span id="_Toc511043161" class="anchor"><span id="_Toc511045073" class="anchor"><span id="_Toc511046225" class="anchor"><span id="_Toc511046448" class="anchor"><span id="_Toc511054150" class="anchor"><span id="_Toc511056370" class="anchor"><span id="_Toc511056434" class="anchor"><span id="_Toc511062012" class="anchor"><span id="_Toc511076789" class="anchor"><span id="_Toc511167742" class="anchor"><span id="_Toc511207935" class="anchor"><span id="_Toc511215474" class="anchor"><span id="_Toc511377223" class="anchor"><span id="_Toc510440234" class="anchor"><span id="_Toc510769859" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Business Apps for Office 365
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Details to follow.

<span id="_Toc511030381" class="anchor"><span id="_Toc511041417" class="anchor"><span id="_Toc511043162" class="anchor"><span id="_Toc511045074" class="anchor"><span id="_Toc511046226" class="anchor"><span id="_Toc511046449" class="anchor"><span id="_Toc511054151" class="anchor"><span id="_Toc511056371" class="anchor"><span id="_Toc511056435" class="anchor"><span id="_Toc511062013" class="anchor"><span id="_Toc511076790" class="anchor"><span id="_Toc510775121" class="anchor"><span id="_Toc511167743" class="anchor"><span id="_Toc511207936" class="anchor"><span id="_Toc511215475" class="anchor"><span id="_Toc511377224" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Flow
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The following sections explain how to use the in-app functionality in Microsoft Flow to find, access, export, and delete personal data.

### Discover

People can use Flow to perform data-related tasks such as synchronizing files between applications, copying files from one Office 365 service to another, and collecting data from one Office 365 app and storing it in another. For example, a user could set up a Flow to save Outlook email attachments to their OneDrive for Business account. In this example, you could use the Content Search tool to search the user’s mailbox for the email message that contained the attachment or search their OneDrive for Business account for the file. This is an example where data handled by Flow might be discoverable in the Office 365 services connected by a Flow workflow.

Additionally, people can use Flow to copy or upload files from Office 365 to an external service, such as Dropbox. In these cases, a DSR request concerning the data in an external service would have to be submitted to the external service, who is processing the data in this type of scenario.

If an admin receives a DSR request, they can add themselves as an owner of a user’s flows. This enables an admin to perform functions including exporting flow definitions, run histories and performing flow permission re-assignments. See [Manage Flows in the Admin Center](https://flow.microsoft.com/blog/managing-flow-resources-in-the-admin-center/).

An admin’s ability to add themselves as an owner of a Flow requires an account with the following permissions:

-   Flow/PowerApps Plan 2 license (paid or trial)

-   [Office 365 global administrator\
    ](https://support.office.com/article/assign-admin-roles-in-office-365-for-business-eac4d046-1afd-4f1a-85fc-8219c79e1504)or

-   [Azure Active Directory global administrator](https://docs.microsoft.com/azure/active-directory/active-directory-assign-admin-roles-azure-portal)

Having these privileges enables the admin to use the Flow admin center to access all Flows in the organization.

To add yourself as an owner of a flow.

1.  Go to <https://admin.flow.microsoft.com>

2.  Sign in with your Office 365 credentials.

3.  On the **Environments** page, click the environment for the flows that you want to access. Note that Office 365 organizations have a default environment.

4.  On the page for the environment that you selected, click **Resources**, and then click **Flows.**

> A list of all flows in the environment is displayed.

1.  Click **View details** for the flow that you want to add yourself as a member.

2.  Under **Owners**, click **Manage sharing**.

3.  On the **Share** flyout, add yourself as a member and then save the change.

After you make yourself an owner, go to **Flow** \> **My flows** \> **Team flows** to access the flow. From there you can download the run history or export the flow. See:

-   [Download flow run history](https://flow.microsoft.com/blog/download-history-recurrence/)

-   [Export and import your flows across environments with packaging](https://flow.microsoft.com/blog/import-export-bap-packages/)

### Access

A user can access the definitions and run histories of their flows.

-   **Flow definitions**—A user can export the definition of a flow (which is exported as a Flow package, formatted as JSON in a zipped file). See [Export and import your flows across environments with packaging](https://flow.microsoft.com/blog/import-export-bap-packages/).

-   **Flow run histories**— A user can download the run history of each of their flows. A flow run history is downloaded as a CSV file, which can be opened in Excel to filter or search. Users can also download the run history of multiple flows. See [Download flow run history](https://flow.microsoft.com/blog/download-history-recurrence/).

### Delete

An admin can add themselves as an owner of a user’s flows in the Flow admin center. <span id="_Hlk511117287" class="anchor"></span>If a user leaves your organization and their Office 365 account is deleted, the flows that they are the sole owner of will be retained. This is to help your organization transition the flows to new owners and avoid any disruption to your business for flows that may be used for shared business processes. An admin then needs to determine whether to delete the flows that were owned by the user or simply re-assign to new owners, and take that action.

For shared flows, when a user is deleted from your organization, their name is removed from the list of owners.

### Export

An admin can export the definition and run history of a user's flows. To do this, an admin must add themselves as an owner of the user's flow in the Flow admin center

-   **Flow definitions**—After an admin adds themselves as an owner of a flow, they can go to **Flow** \> **My Flows** \> **Teams flows** to export the flow definition (which is exported as a Flow package, formatted as JSON in a zipped file). See [Export and import your flows across environments with packaging](https://flow.microsoft.com/blog/import-export-bap-packages/).

-   **Flow run histories**— Similarly, an admin must add themselves as an owner of a Flow to export its flow run history. The Flow run history is downloaded as a CSV file, which means you can use Excel to filter or search. You can also download the run history of multiple Flows, as long as you have ownership. See [Download flow run history](https://flow.microsoft.com/blog/download-history-recurrence/).

### <span id="_Forms" class="anchor"><span id="_Toc510440235" class="anchor"><span id="_Toc510769860" class="anchor"><span id="_Toc511030382" class="anchor"><span id="_Toc511041418" class="anchor"><span id="_Toc511043163" class="anchor"><span id="_Toc511045075" class="anchor"><span id="_Toc511046227" class="anchor"><span id="_Toc511046450" class="anchor"><span id="_Toc511054152" class="anchor"><span id="_Toc511056372" class="anchor"><span id="_Toc511056436" class="anchor"><span id="_Toc511062014" class="anchor"><span id="_Toc511076791" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Connections and custom connectors in Flow

Connections require users to provide credentials to connect to APIs, SaaS applications and custom developed systems. These connections are owned by the user that established the connection and can be [managed](https://docs.microsoft.com/flow/add-manage-connections) in-product. After Flows have been re-assigned, an admin can use PowerShell cmdlets to list and delete these connections as part of deleting user data.

Custom connectors allow organizations to extend the capabilities of Flow by connecting to systems where an out-of-box connector is not available. A custom connector author can [share](https://docs.microsoft.com/flow/register-custom-api) their connector with others in an organization. After receiving a DSR deleting request, an admin should consider re-assigning ownership of these connectors to avoid business disruption. To expedite this process, an admin can use PowerShell cmdlets to list, re-assign or delete custom connectors.

<span id="_Toc511167744" class="anchor"><span id="_Toc511207937" class="anchor"><span id="_Toc511215476" class="anchor"><span id="_Toc511377225" class="anchor"></span></span></span></span>Forms
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The following sections explain how use the in-app functionality in Microsoft Forms to find, access, export, and delete personal data.

### Discover

Forms users can go to <https://forms.office.com> and select **My forms** to see the Forms they’ve created. They can also select **Shared with me** to view Forms others have shared via a link. If there are many Forms to sort through, users can use the in-product search bar to search for Forms by title or author. To determine whether Microsoft Forms is a place where personal data responsive to your DSR is likely to reside, you can ask the Data Subject to search his or her **Shared with me** list to determine which users (“Forms owners”) have sent Forms to the Data Subject. You can then ask the forms owners to select **Share** in the top navigation bar and send you a link to a specific form so you can view it and further determine whether it is material to your DSR.

### Access

After the relevant Forms are found, you can access the responses to the Form by clicking on the **Responses** tab. Learn more about how to [check your quiz results](https://support.office.com/article/c4a9b45c-d62f-4eb7-b5db-ad81892c7c07) or [form results](https://support.office.com/article/02859424-341d-406f-b32a-9a0fbaf357af). To review response results in Excel, select the **Responses** tab, and then click **Open in Excel**. If you would like to send the Data Subject a copy of the Form, you can either take screenshots of the relevant questions and answers that are in shown in the application in rich text format or send the Data Subject an Excel copy of the results. If you are using Excel and would like to share with the Data Subject only portions of the survey result, you can delete certain rows or columns or redact the remaining sections before sharing the results. Alternatively, you can go to **Share \> Get a link to duplicate** (under Share as a template) to provide the Data Subject with a replicate of the entire Form.

### Delete

Any survey, quiz, questionnaire, or poll can be permanently deleted by its owner. If you would like to honor a DSR “forget me” and delete a form in its entirety, find the Form in the list of forms, select the series of dots (ellipsis) in the upper right corner of the form preview window, and then click **Delete**. Once a Form is deleted, it can’t be retrieved. For information, see [Delete a Form](https://support.office.com/article/delete-a-form-2207e468-ce1b-4c4a-a256-caf631d87af0).

### Export

To export form questions and responses to an Excel file, open the form, select the **Responses** tab, and then select **Open in Excel**.

<span id="_Planner" class="anchor"><span id="_Toc510769861" class="anchor"><span id="_Toc511030383" class="anchor"><span id="_Toc511041419" class="anchor"><span id="_Toc511043164" class="anchor"><span id="_Toc511045076" class="anchor"><span id="_Toc511046228" class="anchor"><span id="_Toc511046451" class="anchor"><span id="_Toc511054153" class="anchor"><span id="_Toc511056373" class="anchor"><span id="_Toc511056437" class="anchor"><span id="_Toc511062015" class="anchor"><span id="_Toc511076792" class="anchor"><span id="_Toc511167745" class="anchor"><span id="_Toc511207938" class="anchor"><span id="_Toc511215477" class="anchor"><span id="_Toc511377226" class="anchor"><span id="_Toc510440236" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Kaizala
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Details to follow.

<span id="_Toc510769862" class="anchor"><span id="_Toc511030384" class="anchor"><span id="_Toc511041420" class="anchor"><span id="_Toc511043165" class="anchor"><span id="_Toc511045077" class="anchor"><span id="_Toc511046229" class="anchor"><span id="_Toc511046452" class="anchor"><span id="_Toc511054154" class="anchor"><span id="_Toc511056374" class="anchor"><span id="_Toc511056438" class="anchor"><span id="_Toc511062016" class="anchor"><span id="_Toc511076793" class="anchor"><span id="_Toc511167746" class="anchor"><span id="_Toc511207939" class="anchor"><span id="_Toc511215478" class="anchor"><span id="_Toc511377227" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Planner
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The following sections explain how use the in-app functionality in Microsoft Planner to find, access, export, and delete personal data.

### Discover

Planner plans are associated with an Office 365 Group, and the files for Office 365 Groups are stored in an associated SharePoint Online site for the group. That means that you can use Content Search to find Planner files by searching the site for the Office 365 Group. To do this, you’ll need to have the URL for the Office 365 Group. See [Searching Microsoft Teams and Office 365 Groups](https://support.office.com/article/Content-Search-in-Office-365-53390468-eec6-45cb-b6cd-7511f9c909e4?ui=en-US&rs=en-US&ad=US) in the “Content Search in Office 365” help topic for tips about getting information about Office 365 Groups to help you search for Planner files in the corresponding SharePoint Online site.

### Access

As previously explained, you can search the underling SharePoint Online site and mailbox that are associated with a plan. Then you can preview or download the related search results to access data.

### Delete

You can manually delete a user's personally information by either giving yourself permissions to access the plans the user is part of or signing in as the user to make the changes. See [Delete user data in Microsoft Planner](https://support.office.com/article/delete-user-data-in-microsoft-planner-4349ded2-1891-4896-8e27-05fd40f3929f).

### Export

You can use a PowerShell script to export a user's data from Planner. When you export the data, a separate JSON file is export for each plan that the user is a part of. See [Export user data from Microsoft Planner](https://support.office.com/article/export-user-data-from-microsoft-planner-91258c96-b353-4da1-b6d9-d78e4809cf08).

<span id="_Power_BI" class="anchor"><span id="_Toc510440237" class="anchor"><span id="_Toc510769863" class="anchor"><span id="_Toc511030385" class="anchor"><span id="_Toc511041421" class="anchor"><span id="_Toc511043166" class="anchor"><span id="_Toc511045078" class="anchor"><span id="_Toc511046230" class="anchor"><span id="_Toc511046453" class="anchor"><span id="_Toc511054155" class="anchor"><span id="_Toc511056375" class="anchor"><span id="_Toc511056439" class="anchor"><span id="_Toc511062017" class="anchor"><span id="_Toc511076794" class="anchor"><span id="_Toc511167747" class="anchor"><span id="_Toc511207940" class="anchor"><span id="_Toc511215479" class="anchor"><span id="_Toc511377228" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Power BI
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The following sections explain how use the in-app functionality in Microsoft Power BI to find, access, export, and delete personal data.

### Discover

### Access

You can print dashboards, reports, and visuals from reports in Power BI to produce a physical copy. Note that you can’t print entire reports; you can only print one page at a time. To do this, go to a report, use the search field to find specific data, and then print that page. See [Printing from Power BI service](https://docs.microsoft.com/power-bi/service-print).

### Delete

To delete dashboards, reports, and workbooks, see [Delete almost anything in Power BI service](https://docs.microsoft.com/power-bi/service-delete).

Deleting a dashboard, report, or workbook doesn’t delete the underlying dataset. Because Power BI relies on a live connection to the underlying source data to be complete and accurate, deleting personal data must be done there. (For example, if you created a Power BI report that is connected to Dynamics 365 for Sales as the live data source, you would have to make any corrections to the data in Dynamics 365 for Sales.)

After the data is deleted, you can use the [scheduled data refresh](https://docs.microsoft.com/power-bi/refresh-scheduled-refresh) capabilities in Power BI to update the dataset that is stored in Power BI, after which the deleted data will no longer be reflected in any Power BI reports or dashboards that leveraged that data. To help comply with GDPR requirements, you should have policies in place to ensure that you are refreshing your data at an appropriate cadence.

### Export

To facilitate a data portability request, you can export dashboards and reports in Power BI:

-   You can export the underlying data for dashboards and reports to a static Excel file. See the video in [Printing from Power BI service](https://docs.microsoft.com/power-bi/service-print). Using Excel, you can then edit the personal data to be included in the portability request, and save it in a commonly used, machine-readable format such as .csv or .xml.

-   You can export (download) a report from the Power BI service in Office 365 to a .pbix file if it was originally published using Power BI Desktop. You can then import this file to Power BI Desktop and publish (export) it to the Power BI service of another organization. See [Export a report from Power BI service to Desktop](https://docs.microsoft.com/power-bi/service-export-to-pbix).

<span id="_PowerApps" class="anchor"><span id="_Toc510440238" class="anchor"><span id="_Toc510769864" class="anchor"><span id="_Toc511030386" class="anchor"><span id="_Toc511041422" class="anchor"><span id="_Toc511043167" class="anchor"><span id="_Toc511045079" class="anchor"><span id="_Toc511046231" class="anchor"><span id="_Toc511046454" class="anchor"><span id="_Toc511054156" class="anchor"><span id="_Toc511056376" class="anchor"><span id="_Toc511056440" class="anchor"><span id="_Toc511062018" class="anchor"><span id="_Toc511076795" class="anchor"><span id="_Toc511167748" class="anchor"><span id="_Toc511207941" class="anchor"><span id="_Toc511215480" class="anchor"><span id="_Toc511377229" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>PowerApps
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The following sections explain how use the in-app functionality in Microsoft Power Apps to find, access, export, and delete personal data. These steps outline how an admin can transition apps and their dependent resources to new owners to limit business disruption.

### Discover

PowerApps is a service for building apps that can be shared and used within your organization. As a part of the process of building or running an app, a user will end up storing several types of resources and data in the PowerApps service, including apps, environments, connections, custom connectors, and permissions.

To help facilitate a DSR request related to PowerApps, you can leverage the administration operations exposed in the [PowerApps Admin Center](https://admin.powerapps.com/) and [PowerApps Admin PowerShell cmdlets](https://go.microsoft.com/fwlink/?linkid=871804). Access to these tools will require an account with the following permissions:

-   A paid PowerApps Plan 2 license or a PowerApps Plan 2 trial license. You can sign-up for a 30 day trial license [here](http://web.powerapps.com/trial).

-   [Office 365 global administrator\
    ](https://support.office.com/article/assign-admin-roles-in-office-365-for-business-eac4d046-1afd-4f1a-85fc-8219c79e1504)or

-   [Azure Active Directory global administrator](https://docs.microsoft.com/azure/active-directory/active-directory-assign-admin-roles-azure-portal).

For more information about finding personal data, see [Discover PowerApps personal data](https://go.microsoft.com/fwlink/?linkid=871880).

The PowerApps service also includes the Common Data Service For Apps, which enables users to store data in standard and custom entities within a Common Data Service database. You can view the data stored in these entities from the [PowerApps Maker portal](https://web.powerapps.com), and use the in-product search capabilities of [Advanced Find](https://docs.microsoft.com/dynamics365/customer-engagement/basics/save-advanced-find-search) to search for specific data in the entity. For more details around discovering personal data in the Common Data Service, see [Discover Common Data Service personal data](https://go.microsoft.com/fwlink/?linkid=871881).

### Access

Admins have the ability to assign themselves privileges to access and run the apps and associated resources (including flows, connections, and custom connectors) using the [PowerApps Admin Center](https://admin.powerapps.com/) or [PowerApps Admin PowerShell cmdlets](https://go.microsoft.com/fwlink/?linkid=871804).

After you have access to the user’s app, you can use a web browser to open the app. After you open an app, you can take a screenshot of the data. See [Use PowerApps in a web browser](https://docs.microsoft.com/powerapps/run-app-browser).

### Delete

Because PowerApps allows users to build line-of-business application that can be a critical part of your organization’s day-to-day operations, when a user leaves your organization and their Office 365 account is deleted, the admin will need to determine whether to delete the apps owned by the user or simply re-assign to new owners. This is to help your organization transition apps to new owners and avoid any disruption to your business for apps that may be used for shared business processes.

For shared data, like apps, admins must decide whether or not they want to permanently delete that user’s shared data or keep them by re-assigning the data to themselves or someone else within their organization. See [Delete PowerApps personal data](https://go.microsoft.com/fwlink/?linkid=871883).

Any data that was stored by a user in an entity in a Common Data Service For Apps database will also need to be reviewed and (if desired) deleted by an admin using the in-product capabilities. See [Delete Common Data Service user personal data](https://go.microsoft.com/fwlink/?linkid=871886).

### Export

Admins have the ability to export personal data stored for a user within the PowerApps service using the [PowerApps Admin Center](https://admin.powerapps.com/) and [PowerApps Admin PowerShell cmdlets](https://go.microsoft.com/fwlink/?linkid=871804). See [Export PowerApps personal data](https://go.microsoft.com/fwlink/?linkid=871883).

You can also use the in-product search capabilities of [Advanced Find](https://docs.microsoft.com/dynamics365/customer-engagement/basics/save-advanced-find-search) to search for a user’s personal data in any entity. For details about exporting personal data in the Common Data Service, see [Export Common Data Service personal data](https://go.microsoft.com/fwlink/?linkid=871889).

### Connections and custom connectors in PowerApps

Connections require users to provide credentials to connect to APIs, SaaS applications and custom developed systems. These connections are owned by the user that established the connection and can be [managed](https://docs.microsoft.com/powerapps/maker/canvas-apps/add-data-connection) in-product. After PowerApps have been re-assigned, an admin can use PowerShell cmdlets to list and delete these connections as part of deleting user data.

Custom connectors allow organizations to extend the capabilities of PowerApps by connecting to systems where an out-of-box connector is not available. A custom connector author can [share](https://docs.microsoft.com/connectors/custom-connectors/use-custom-connector-powerapps) their connector with others in an organization. After receiving a DSR deleting request, an admin should consider re-assigning ownership of these connectors to avoid business disruption. To expedite this process, an admin can use PowerShell cmdlets to list, re-assign or delete custom connectors.

<span id="_Project__" class="anchor"><span id="_Toc510440239" class="anchor"><span id="_Toc510769865" class="anchor"><span id="_Toc511030387" class="anchor"><span id="_Toc511041423" class="anchor"><span id="_Toc511043168" class="anchor"><span id="_Toc511045080" class="anchor"><span id="_Toc511046232" class="anchor"><span id="_Toc511046455" class="anchor"><span id="_Toc511054157" class="anchor"><span id="_Toc511056377" class="anchor"><span id="_Toc511056441" class="anchor"><span id="_Toc511062019" class="anchor"><span id="_Toc511076796" class="anchor"><span id="_Toc511167749" class="anchor"><span id="_Toc511207942" class="anchor"><span id="_Toc511215481" class="anchor"><span id="_Toc511377230" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Project Online
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The following sections explain how use the in-app functionality in Microsoft Project Online to find, access, export, and delete personal data.

### Discover and access

You can use Content Search to search the SharePoint Online site that’s associated with a Project (when a Project is first created, there’s an option to create an associated SharePoint Online site); Content Search doesn’t search the data in an actual project in Project Online, only the associated site. Though Content Search will search for metadata about projects such as people mentioned in the subject) However, this may help you find (and access) the Project that contains the data related to the DSR.

**Tip:** The URL for the site collection in your organization where sites associated with Projects is **https://\<your org\>.sharepoint.com/sites/pwa**; for example, **https://contoso.sharepoint.com/pwa**. You can use this specific site collection as the location of your content search and then the name of the Project in the search query. Additionally, an IT admin can use the Site Collections page in the SharePoint admin center to get a list of PWA site collections in the organization.

Note that the Project Online engineering team is developing scripts that will export data from Project Online.

**Delete**

You can delete information about a user from your Project Online environment. See [Delete user data from Project Online](https://support.office.com/article/delete-user-data-from-project-online-252fa593-9c25-47ed-b861-643fe8bf1cb7).

### Export

You can a specific user's content from your Project Online environment. This data is exported to multiple files in the JSON format. For step-by instructions see, [Export user data from Project Online](https://support.office.com/article/export-user-data-from-project-online-27f3838d-3dbe-4b98-80dc-df55f851154d). For detailed information about the files that are exported, see [Project Online export json object definitions](https://support.office.com/article/project-online-export-json-object-definitions-ce5faeae-9af4-4696-b847-a1f4f20327c7).

<span id="_Toc510440240" class="anchor"><span id="_Toc510769866" class="anchor"><span id="_Toc511030388" class="anchor"><span id="_Toc511041424" class="anchor"><span id="_Toc511043169" class="anchor"><span id="_Toc511045081" class="anchor"><span id="_Toc511046233" class="anchor"><span id="_Toc511046456" class="anchor"><span id="_Toc511054158" class="anchor"><span id="_Toc511056378" class="anchor"><span id="_Toc511056442" class="anchor"><span id="_Toc511062020" class="anchor"><span id="_Toc511076797" class="anchor"><span id="_Toc511167750" class="anchor"><span id="_Toc511207943" class="anchor"><span id="_Toc511215482" class="anchor"><span id="_Toc511377231" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>StaffHub
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The following sections explain how use the in-app functionality in Microsoft StaffHub to find, access, export, and delete personal data.

### Discover

Most data within StaffHub is available to all StaffHub team members and managers. To review data in StaffHub, have a manager or team member go to <https://staffhub.office.com> to look for data that is potentially relevant to the DSR request or have them add you as a member of their team so that you can directly review the StaffHub information for potentially responsive data.

### Access

After relevant StaffHub content is found, you can view and take screenshots of relevant data that you would like to provide to the data subject from within the application or download it.

-   **Scheduling information**: The **Schedule** tab in StaffHub offers both a **People View** and a **Shifts View** that allows you to view daily, weekly and monthly schedules by team members or by work shifts. These views can be printed or downloaded to Excel by selecting the three dots (ellipsis) in the top left corner of the StaffHub web app and clicking **Export Schedule**.

-   **Shared files**: All files in StaffHub are stored on SharePoint Online and can thus be discovered, accessed and exported by using Content Search as previously described above. They can also be viewed from within StaffHub under the tab **Files**.

-   **Messaging**: Currently, messages can be accessed by following the steps about accessing user-specific data in the next item. In the future, all messages in StaffHub will be stored in Microsoft Teams, which means you be able to use the Content Search tool to access them.

-   **User-specific data**: User-specific data consists of user settings, user activity feed and user shift request history, none of which can viewed by team members or admins. To access or export user-specific data, have the data subject sign in to their StaffHub account to obtain it. Alternatively, if the data subject has left your organization, you can obtain this data by having your admin reset the user password for the data subject to allow you or the admin to sign in to their account.

-   **Kronos**: StaffHub supports connections to [Kronos](http://www.kronos.com/), which is a third-party workforce management tool. StaffHub and Kronos are independent processors and process your organization's data under individual terms that you have signed with each party. If your DSR relates to data held by Kronos you will need to contact Kronos for DSR assistance and vice versa.

### Delete

-   Most in-app data content mastered in StaffHub can be deleted by a team manager from the app itself. As previously stated in the [Discover](#discover-5) section for StaffHub, you can add yourself to a team as a team manager and delete the data.[](#discover-5)

-   When a user account is deleted, StaffHub redacts the user's phone number, email address, and profile picture after within 7 days of the account being deleted. By default, the user's first and last name are retained for historical reporting purposes in some shared data views, such as schedules, time-clock, conversations, requests, and the activity feed (for other users).

### Export

See the [Access](#access-5) section for StaffHub.[](#access-5)

<span id="_Stream" class="anchor"><span id="_Toc510440241" class="anchor"><span id="_Toc511030389" class="anchor"><span id="_Toc511041425" class="anchor"><span id="_Toc511043170" class="anchor"><span id="_Toc511045082" class="anchor"><span id="_Toc511046234" class="anchor"><span id="_Toc511046457" class="anchor"><span id="_Toc511054159" class="anchor"><span id="_Toc511056379" class="anchor"><span id="_Toc511056443" class="anchor"><span id="_Toc511062021" class="anchor"><span id="_Toc511076798" class="anchor"><span id="_Toc511167751" class="anchor"><span id="_Toc511207944" class="anchor"><span id="_Toc511215483" class="anchor"><span id="_Toc511377232" class="anchor"><span id="_Toc510769867" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Stream
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Details to follow.

<span id="_Sway" class="anchor"><span id="_Toc510440242" class="anchor"><span id="_Toc510769868" class="anchor"><span id="_Toc511030390" class="anchor"><span id="_Toc511041426" class="anchor"><span id="_Toc511043171" class="anchor"><span id="_Toc511045083" class="anchor"><span id="_Toc511046235" class="anchor"><span id="_Toc511046458" class="anchor"><span id="_Toc511054160" class="anchor"><span id="_Toc511056380" class="anchor"><span id="_Toc511056444" class="anchor"><span id="_Toc511062022" class="anchor"><span id="_Toc511076799" class="anchor"><span id="_Toc511167752" class="anchor"><span id="_Toc511207945" class="anchor"><span id="_Toc511215484" class="anchor"><span id="_Toc511377233" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Sway
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The following sections explain how use the in-app functionality in Microsoft Sway to find, access, export, and delete personal data.

### Discover

Content created using Sway (found at [www.sway.com](http://www.sway.com)) can only be seen by the owner and those that the author has permissioned to view the Sway. See [Privacy Settings in Sway](https://support.office.com/article/privacy-settings-in-sway-394b551c-be6f-4bd7-a70a-f318d72bf217). To determine whether Sway is a place where personal data responsive to your DSR is likely to reside, you can ask the Data Subject and organizational users who are likely to have generated content about the Data Subject to search their Sways and share with you any Sways that are likely to contain personal data responsive to the Data Subject’s request. For information on how to share a Sway, see “Share a Sway from your Organizational Account” in this [Share your Sway](https://support.office.com/article/share-your-sway-1cf853b8-ef7e-46b0-b704-003e58d28998?ui=en-US&rs=en-US&ad=US) article.

### Access

If you have found personal data in a Sway that you would like to share with the Data Subject, you can provide the Data Subject with access to the data through one of several means. You can provide the Data Subject a copy of the online version of Sway (as described above); you can take screen shots of the relevant portion of the Sway that you would like to share; or you can print or download the Sway to Word or convert it to a PDF. How to download a Sway is further described in the “export” section below.

### Delete

To learn how to delete a Sway, go to the “How do I delete my Sway?” section in [Privacy settings in Sway](https://support.office.com/article/privacy-settings-in-sway-394b551c-be6f-4bd7-a70a-f318d72bf217).

### Export

To export a Sway, open the Sway that you would like to download, select the series of dots (ellipsis) in the upper right corner, select **Export,** and then choose either **Word** or **PDF**.

<span id="_Yammer_1" class="anchor"><span id="_Toc510440243" class="anchor"><span id="_Toc510769869" class="anchor"><span id="_Toc511030391" class="anchor"><span id="_Toc511041427" class="anchor"><span id="_Toc511043172" class="anchor"><span id="_Toc511045084" class="anchor"><span id="_Toc511046236" class="anchor"><span id="_Toc511046459" class="anchor"><span id="_Toc511054161" class="anchor"><span id="_Toc511056381" class="anchor"><span id="_Toc511056445" class="anchor"><span id="_Toc511062023" class="anchor"><span id="_Toc511076800" class="anchor"><span id="_Toc511167753" class="anchor"><span id="_Toc511207946" class="anchor"><span id="_Toc511215485" class="anchor"><span id="_Toc511377234" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Yammer
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The following sections explain how use the in-app functionality in Microsoft Yammer to find, access, export, and delete personal data.

### Discover

From the Yammer admin center, a Yammer verified admin (Office 365 global admin or verified admin set up in Yammer) can export data pertaining to a given user. The export includes the messages and files posted and modified by the user, as well as information about topics and groups created by the user. When a user-specific data export is run, the admin will also receive an inbox message with the user’s account activity data that they can provide to the user if they so choose. For detailed instructions, see [Yammer Enterprise: Privacy](https://support.office.com/article/enterprise-privacy-yammer-eae49f12-4661-4ba5-aa72-01248f0709bf).

User-specific exports are for a single network, so if the user is in an external Yammer network, the admin must export data for that external network, as well as for the home network.

To access data not included in data export, screen shots can be taken for the user’s profile, settings, group memberships, bookmarked messages, followed users, and followed topics. Users or admins can collect this information. For more information, see [Yammer Enterprise: Privacy](https://support.office.com/article/enterprise-privacy-yammer-eae49f12-4661-4ba5-aa72-01248f0709bf).

### Access

You can view data in the exported files, including the full text of messages and the contents of files. You can also click links in the exported files to go directly to the posted messages and files in Yammer, and to groups, and topics the user created, messages the user liked, messages where the user is @mentioned, polls the user has voted on, and links the user has added.

Per-user data export does not include:

-   The user’s profile:

<!-- -->

-   If the user has a Yammer identity, the user has full control of their profile. For information on how to view and modify the profile, see [Change my Yammer profile and settings](https://support.office.com/article/change-my-yammer-profile-and-settings-a3aeca0e-de34-4897-9b59-de6516542851).

-   If the user has an Office 365 identity, the Yammer user profile is pulled automatically from Office 365, which gets the profile information from Azure Active Directory (AAD). Yammer users can temporarily change their profiles in Yammer, but these changes are overwritten when there is a change in AAD, so you must view and change directory data in AAD. See [Manage Yammer users across their lifecycle from Office 365](https://support.office.com/article/Manage-Yammer-users-across-their-life-cycle-from-Office-365-6c4c8fff-6444-404a-bffc-f9da0bcc3039) and [Add or change profile information for a user in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-users-profile-azure-portal).

<!-- -->

-   The user’s settings:

<!-- -->

-   The user can view and change their own settings. For information on how to view and modify user settings, see [Change my Yammer profile and settings](https://support.office.com/article/change-my-yammer-profile-and-settings-a3aeca0e-de34-4897-9b59-de6516542851). An admin can view this information and take screenshots, but can’t change it. Go to Yammer settings \> **People**, and then click the name of the user.

<!-- -->

-   The user’s group membership, bookmarked messages, followed users, and followed topics:

<!-- -->

-   The user can view this information. For information on how, see [Tips for staying organized in Yammer](https://support.office.com/article/tips-for-staying-organized-in-yammer-40ae9666-75c0-4254-a84c-d87a9542f380). An admin can view this information and take screenshots, but can’t change it. Go to Yammer settings \> **People**, and then click the name of the user.

### Export

For instructions for how to export data, see [Enterprise Privacy: Yammer](https://support.office.com/article/enterprise-privacy-yammer-eae49f12-4661-4ba5-aa72-01248f0709bf). You must run a per-user export for each Yammer network the user is a member of.

Note that Yammer has data retention settings that either soft-delete or hard-delete data when a user deletes a message or file. If this is set to soft-delete, data a user has deleted will be included in the export. If the Yammer data retention setting is set to hard-delete, the deleted information is no longer stored in Yammer, so will not be included in the export.

### Delete

Yammer allows verified admins to execute a GDPR-compliant delete via the Yammer admin center if they receive a DSR. This option is called Erase User, and it suspends the user for 14 days and then removes all their personal data, excluding files and messages. If the user is a guest user, this must be done for each external network the guest user is a member of.

> If an admin wants to remove the files and messages of a user during the 14-day window, they will have to perform a user level export to identify the files and messages, and then decide which ones to delete either by in-product deletion or by using a PowerShell script. After the 14-day window, the admin can no longer associate the user with their files or messages.

When a user is deleted with the Erase User option, notification is sent to the Yammer Inbox of all network admins and verified admins.

For detailed steps to remove a user, see [Enterprise Privacy: Yammer](https://support.office.com/article/enterprise-privacy-yammer-eae49f12-4661-4ba5-aa72-01248f0709bf).

The Erase User option deletes the user’s Yammer profile, but does not delete their Office 365 or Azure Active Directory profile.

<span id="_Responding_to_DSR" class="anchor"><span id="_Toc508792516" class="anchor"><span id="_Toc510440244" class="anchor"><span id="_Toc510769870" class="anchor"><span id="_Toc511030392" class="anchor"><span id="_Toc511041428" class="anchor"><span id="_Toc511043173" class="anchor"><span id="_Toc511045085" class="anchor"><span id="_Toc511046237" class="anchor"><span id="_Toc511046460" class="anchor"><span id="_Toc511054162" class="anchor"><span id="_Toc511056382" class="anchor"><span id="_Toc511056446" class="anchor"><span id="_Toc511062024" class="anchor"><span id="_Toc511076801" class="anchor"><span id="_Toc511167754" class="anchor"><span id="_Toc511207947" class="anchor"><span id="_Toc511215486" class="anchor"><span id="_Toc511377235" class="anchor"><span id="_Hlk503968195" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Responding to DSR rectification requests
=========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

If a data subject has asked you to rectify the personal data that resides in your organization’s data stored in Office 365, you and your organization will have to determine whether it’s appropriate to honor the request. If you choose to honor the request, then rectifying the data may include taking actions such as editing, redacting, or removing personal data from a document or other type or item. The most expedient way to do this is to ask the data/document owner to use the appropriate Office 365 application to make the requested change. An alternative is to have an IT admin in your organization make the change. This will probably require the IT admin (or other people in your organization with the appropriate privileges, such as a SharePoint Online site collection administrator) to assign to themselves or someone else working on the DSR the necessary permissions to gain access to the document or the content location where the document is located to make the change directly to the document.

<span id="_Toc508792517" class="anchor"><span id="_Toc510440245" class="anchor"><span id="_Toc510769871" class="anchor"><span id="_Toc511030393" class="anchor"><span id="_Toc511041429" class="anchor"><span id="_Toc511043174" class="anchor"><span id="_Toc511045086" class="anchor"><span id="_Toc511046238" class="anchor"><span id="_Toc511046461" class="anchor"><span id="_Toc511054163" class="anchor"><span id="_Toc511056383" class="anchor"><span id="_Toc511056447" class="anchor"><span id="_Toc511062025" class="anchor"><span id="_Toc511076802" class="anchor"><span id="_Toc511167755" class="anchor"><span id="_Toc511207948" class="anchor"><span id="_Toc511215487" class="anchor"><span id="_Toc511377236" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Requesting that the data owner to make the approved change
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The most direct way to rectify personal data is to ask the data owner to make the change. After you locate the data that is the subject of the DSR, you can provide the following information so that they can make the change.

-   The location and file name (for documents and other files) of the item that needs to be changed; locating the data in question is part of the discovery process that’s explained in Step 1.[](#_Step_1:_Discover)

-   The approved change the data owner should make

You may want to consider implementing a confirmation process where you or another person involved in the DSR investigation verifies that the requested change has been made.

<span id="_Gain_access_to" class="anchor"><span id="_Toc508792518" class="anchor"><span id="_Toc510440246" class="anchor"><span id="_Toc510769872" class="anchor"><span id="_Toc511030394" class="anchor"><span id="_Toc511041430" class="anchor"><span id="_Toc511043175" class="anchor"><span id="_Toc511045087" class="anchor"><span id="_Toc511046239" class="anchor"><span id="_Toc511046462" class="anchor"><span id="_Toc511054164" class="anchor"><span id="_Toc511056384" class="anchor"><span id="_Toc511056448" class="anchor"><span id="_Toc511062026" class="anchor"><span id="_Toc511076803" class="anchor"><span id="_Toc511167756" class="anchor"><span id="_Toc511207949" class="anchor"><span id="_Toc511215488" class="anchor"><span id="_Toc511377237" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Gaining access to a SharePoint Online site or OneDrive for Business account to make changes
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

If it’s not feasible for the data owner to implement the data subject’s request for rectification, an IT admin or SharePoint admin in your organization can get access to the content location and make the required changes. Or, an admin can assign you or another data privacy officer the necessary permissions.

### SharePoint Online

To assign administrator or owner permissions to a SharePoint Online site so that you or someone else can access and edit that document, see

-   [Manage administrators for a site collection](https://support.office.com/article/Manage-administrators-for-a-site-collection-9A7E46F9-3FC4-4297-955A-82CB292A5BE0)

-   [Edit and manage permissions for a SharePoint list or library](https://support.office.com/article/Edit-and-manage-permissions-for-a-SharePoint-list-or-library-02d770f3-59eb-4910-a608-5f84cc297782)

### OneDrive for Business

An Office 365 global admin can access a user’s OneDrive for Business account by using the Office 365 admin center.

1.  Sign in to Office 365 with your global admin credentials.

2.  Go to the Office 365 admin center.

3.  Go to **Active users** and select the user.

4.  Expand **OneDrive for Business Settings** in the details pane, and then click **Access files**.

5.  Click the URL to go to the user’s OneDrive for Business account.

<span id="_Gaining_access_to" class="anchor"><span id="_Toc508792519" class="anchor"><span id="_Toc510440247" class="anchor"><span id="_Toc510769873" class="anchor"><span id="_Toc511030395" class="anchor"><span id="_Toc511041431" class="anchor"><span id="_Toc511043176" class="anchor"><span id="_Toc511045088" class="anchor"><span id="_Toc511046240" class="anchor"><span id="_Toc511046463" class="anchor"><span id="_Toc511054165" class="anchor"><span id="_Toc511056385" class="anchor"><span id="_Toc511056449" class="anchor"><span id="_Toc511062027" class="anchor"><span id="_Toc511076804" class="anchor"><span id="_Toc511167757" class="anchor"><span id="_Toc511207950" class="anchor"><span id="_Toc511215489" class="anchor"><span id="_Toc511377238" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Gaining access to an Exchange Online mailbox to make changes to data
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

An Office 365 global admin can assign themselves the permissions necessary to open and edit (or delete) items in another user’s mailbox, as if they were the mailbox owner. A global admin can also assign these permissions to another user. Specifically, the global admin needs to add the **Read and manage** permission, which is the Full Access permission in Exchange Online. For details, see:

-   [Give mailbox permissions to another user in Office 365](https://support.office.com/article/Give-mailbox-permissions-to-another-user-in-Office-365-Admin-Help-1DBCF12F-A9DE-4D1D-B0B3-A227F8A736D8)

-   [Access another person's mailbox](https://support.office.com/article/Access-another-person-s-mailbox-A909AD30-E413-40B5-A487-0EA70B763081)

<span id="_Flow_1" class="anchor"></span>Note that if the user mailbox is place on a legal hold or has been assigned to a retention policy, all versions of a mailbox are retained until the retention period expires or the hold is removed from the mailbox. That means if a mailbox item is changed in response to DSR rectification request, a copy of original item (before the change was made) is retained and stored in a hidden folder in the Recoverable Items folder in the user’s mailbox.

<span id="_Making_changes_to" class="anchor"><span id="_Toc508792520" class="anchor"><span id="_Toc510440248" class="anchor"><span id="_Toc510769874" class="anchor"><span id="_Toc511030396" class="anchor"><span id="_Toc511041432" class="anchor"><span id="_Toc511043177" class="anchor"><span id="_Toc511045089" class="anchor"><span id="_Toc511046241" class="anchor"><span id="_Toc511046464" class="anchor"><span id="_Toc511054166" class="anchor"><span id="_Toc511056386" class="anchor"><span id="_Toc511056450" class="anchor"><span id="_Toc511062028" class="anchor"><span id="_Toc511076805" class="anchor"><span id="_Toc511167758" class="anchor"><span id="_Toc511207951" class="anchor"><span id="_Toc511215490" class="anchor"><span id="_Toc511377239" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Making changes to content in OneDrive for Business and SharePoint Online
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

<span id="_Restrict" class="anchor"></span>IT admins or data owners can make changes to SharePoint Online documents, lists, and pages. Keep the following things in mind when making changes to SharePoint content:

-   Updating a document will save a new version of the document, which will contain the revision. Older versions of the document will not be updated. That means it’s possible that the data that’s the subject of a DSR rectification request may persist in older versions of the topic. Note that older versions of a topic can be deleted and then permanently removed from Office 365. See the [Deleting documents in SharePoint Online and OneDrive for Business](#_Deleting_documents_in_1) section in this guide.[](#_Deleting_documents_in_1)[](#_Deleting_documents_in)

-   To complete redact a SharePoint file in a way that removes all traces of a data subject from the file, including all versions of the file and all recorded activity performed by the data subject, you would have to perform the following steps:

1.  Download a copy of the file to your local computer.

2.  Permanently delete the file from SharePoint Online, by deleting the file, and then deleting if from the first-stage and second-stage Recycle Bin. See the [Deleting documents in SharePoint Online and OneDrive for Business](#_Deleting_documents_in_1) section in this guide.[](#_Deleting_documents_in)

3.  Make the revisions to the copy of the document on your local computer.

4.  Upload the revised file to the original SharePoint Online location.

-   Data in SharePoint lists can be edited. See [Add, edit, or delete list items](https://support.office.com/article/add-edit-or-delete-list-items-a4b31f53-f044-470e-9823-4526594bacde).

IT admins can also correct certain personal properties associated with a document:

User information from the SharePoint User Profile or Office 365 is often associated with OneDrive for Business and SharePoint Online documents to represent that person. For example, a user's name in a Created By or Modified By People column for a document or list item. This user information can be rectified in several ways, depending on the source:

-   Rectify user properties in their own on-premises Active Directory. For customers syncing user properties such as user Display Name, First Name, etc. from an on-premises AD, those properties should be rectified there. Appropriately mapped properties will flow into Office 365, and then OneDrive for Business and SharePoint Online.

-   Rectify user properties in the Office 365 Admin Center. Changes made to account information there will automatically be reflected in OneDrive for Business and SharePoint Online experiences. For info, see [Add or change profile information for a user in Azure Active Directory](https://go.microsoft.com/fwlink/?linkid=864809). Note that for properties sourced in Office 365, no changes can be made on the SharePoint side.

-   Rectify user properties in the SharePoint user profile experience of the SharePoint admin center. In the user profiles tab of the SharePoint admin center, admins can click **Manage user profiles**, and look up any user's properties. Then they can choose to Edit the user's properties.

-   Rectify user properties in a custom source. Custom SharePoint profile properties may be syncing from a custom source via Microsoft Identity Manager (MIM) or another method.

Note that this will not affect all experiences, which may retain the older information. For example, the user's name as text in the document.

<span id="_Toc511167759" class="anchor"><span id="_Toc511207952" class="anchor"><span id="_Toc511215491" class="anchor"><span id="_Toc511377240" class="anchor"><span id="_Toc510440249" class="anchor"><span id="_Toc510769875" class="anchor"><span id="_Toc511030397" class="anchor"><span id="_Toc511041433" class="anchor"><span id="_Toc511043178" class="anchor"><span id="_Toc511045090" class="anchor"><span id="_Toc511046242" class="anchor"><span id="_Toc511046465" class="anchor"><span id="_Toc511054167" class="anchor"><span id="_Toc511056387" class="anchor"><span id="_Toc511056451" class="anchor"><span id="_Toc511062029" class="anchor"><span id="_Toc511076806" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Making changes to content in Power BI
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Power BI relies on the underlying source data used in its dashboards and reports to be complete and accurate, so correcting inaccurate or incomplete source data must be done there. For example, if you created a Power BI report that is connected to Dynamics 365 for Sales as the live data source, you would have to make any corrections to the data in Dynamics 365 for Sales.

After those changes are made, you can take advantage of the [scheduled data refresh](https://docs.microsoft.com/power-bi/refresh-scheduled-refresh) capabilities to update the dataset that is stored in Power BI so that the revised data is reflected in the dependent Power BI assets. To help comply with GDPR requirements, you should have policies in place to ensure that you are refreshing your data at an appropriate cadence.

<span id="_Toc511167760" class="anchor"><span id="_Toc511207953" class="anchor"><span id="_Toc511215492" class="anchor"><span id="_Toc511377241" class="anchor"></span></span></span></span>Making changes to content in Yammer
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

For messages, a user can edit a given message to rectify any inaccuracies. They can request a list of all their messages from a Yammer verified admin, and then click a link in the file to review each message.

For files, a user can edit a given file to rectify any inaccuracies. They can request a list of all the files they posted from a Yammer verified admin, and then access the files in Yammer. Files that are exported into the Files folder can be viewed by searching for the file by number. For example, for a file named 12345678.ppx in the export, use the Search box in Yammer to search for 1235678.ppx. Or, go to **https://www.yammer.com/\<network\_name\>/\#/files/\<file\_number\>**; for example, **https://www.yammer.com/contosomkt.onmicrosoft.com/\#/files/12345678**.

For data that the user can access through their profile and settings, the user can make any needed changes.

-   The user’s profile:

<!-- -->

-   If the user has a Yammer identity, the user has full control of their profile. For information on how to view and modify the profile, see [Change my Yammer profile and settings](https://support.office.com/article/change-my-yammer-profile-and-settings-a3aeca0e-de34-4897-9b59-de6516542851).

-   If the user has an Office 365 identity, the Yammer user profile is pulled automatically from Office 365, which gets the profile information from Azure Active Directory (AAD). Yammer users can temporarily change their profiles in Yammer, but these changes are overwritten when there is a change in AAD, so the best place to view and change directory data is AAD. The user will need to request that AAD be updated. See [Manage Yammer users across their lifecycle from Office 365](https://support.office.com/article/Manage-Yammer-users-across-their-life-cycle-from-Office-365-6c4c8fff-6444-404a-bffc-f9da0bcc3039) and [Add or change profile information for a user in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-users-profile-azure-portal).

<!-- -->

-   The user’s settings:

<!-- -->

-   The user can change their own settings. For information on how to view and modify user settings, see [Change my Yammer profile and settings](https://support.office.com/article/change-my-yammer-profile-and-settings-a3aeca0e-de34-4897-9b59-de6516542851).

-   The user’s group membership, bookmarked messages, followed users, and followed topics. The user can change this information; see [Tips for staying organized in Yammer](https://support.office.com/article/tips-for-staying-organized-in-yammer-40ae9666-75c0-4254-a84c-d87a9542f380).

<span id="_Responding_to_DSR_1" class="anchor"><span id="_Toc508792521" class="anchor"><span id="_Toc510440250" class="anchor"><span id="_Toc510769876" class="anchor"><span id="_Toc511030398" class="anchor"><span id="_Toc511041434" class="anchor"><span id="_Toc511043179" class="anchor"><span id="_Toc511045091" class="anchor"><span id="_Toc511046243" class="anchor"><span id="_Toc511046466" class="anchor"><span id="_Toc511054168" class="anchor"><span id="_Toc511056388" class="anchor"><span id="_Toc511056452" class="anchor"><span id="_Toc511062030" class="anchor"><span id="_Toc511076807" class="anchor"><span id="_Toc511167761" class="anchor"><span id="_Toc511207954" class="anchor"><span id="_Toc511215493" class="anchor"><span id="_Toc511377242" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Responding to DSR restriction requests
==========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

<span id="_Delete" class="anchor"></span>Here are the ways to restrict the processing of data in Office 365:

-   Remove an Office 365 application license to prevent users from accessing data via an application

-   Prevent users from accessing their OneDrive for Business account

-   Turn off an Office 365 service from processing the data

-   Temporarily remove the data from SharePoint Online and OneDrive for Business and retain it on-premises

-   Temporarily restrict all access to a SharePoint Online site

-   Prevent a user from signing in to Office 365

If your organization determines later that a restriction no longer applies, you can end the restriction by reversing the steps you took to restrict it; such as re-assigning licenses, turning a service back on, or allowing a user to sign in to Office 365.

<span id="_Toc508792522" class="anchor"><span id="_Toc510440251" class="anchor"><span id="_Toc510769877" class="anchor"><span id="_Toc511030399" class="anchor"><span id="_Toc511041435" class="anchor"><span id="_Toc511043180" class="anchor"><span id="_Toc511045092" class="anchor"><span id="_Toc511046244" class="anchor"><span id="_Toc511046467" class="anchor"><span id="_Toc511054169" class="anchor"><span id="_Toc511056389" class="anchor"><span id="_Toc511056453" class="anchor"><span id="_Toc511062031" class="anchor"><span id="_Toc511076808" class="anchor"><span id="_Toc511167762" class="anchor"><span id="_Toc511207955" class="anchor"><span id="_Toc511215494" class="anchor"><span id="_Toc511377243" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Removing the license for an Office 365 application
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

As previously explained, licenses for all Office 365 applications that are included in your organization’s Office 365 subscription are assigned to all users by default. If necessary to restrict access to data that’s subject to a DSR, an IT admin can use the Office 365 admin portal temporarily turn off a user’s license for an application. If a user then tries to use that application, they’ll receive an unlicensed product notification or a message saying they no longer have access. For details, see [Remove licenses from users in Office 365 for business](https://support.office.com/article/Remove-licenses-from-users-in-Office-365-for-business-9B497C85-D0A4-4735-80FA-D3565BC05BD1).

**Notes:**

-   To restrict a user from accessing Yammer, you must first [enforce Office 365 identify for a Yammer user](https://support.office.com/article/Enforce-office-365-identity-for-Yammer-users-008f940b-6bec-47fc-bcc6-9c6133467562) and then remove the user's Yammer license.

-   For scenarios that take advantage of Power BI Embedded, you can restrict access to the independent software vendor (ISV) application that the content is embedded in.

<span id="_Toc508792523" class="anchor"><span id="_Toc510769878" class="anchor"><span id="_Toc511030400" class="anchor"><span id="_Toc511041436" class="anchor"><span id="_Toc511043181" class="anchor"><span id="_Toc511045093" class="anchor"><span id="_Toc511046245" class="anchor"><span id="_Toc511046468" class="anchor"><span id="_Toc511054170" class="anchor"><span id="_Toc511056390" class="anchor"><span id="_Toc511056454" class="anchor"><span id="_Toc511062032" class="anchor"><span id="_Toc511076809" class="anchor"><span id="_Toc511167763" class="anchor"><span id="_Toc511207956" class="anchor"><span id="_Toc511215495" class="anchor"><span id="_Toc511377244" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Preventing users from accessing their OneDrive for Business account
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Removing a user’s SharePoint Online license won’t prevent them from accessing their OneDrive for Business account if it already exists. You have to remove the user’s permissions to their OneDrive for Business account to. You can do this by removing the user as a site collection owner of their OneDrive for Business account. Specifically, you have to remove the user from the Primary Site Collection Administrator and Site Collection Administrators groups in their user profile. See the “Add and remove admins on a OneDrive for Business account” section in [Manage user profiles in the SharePoint admin center](https://support.office.com/article/Manage-user-profiles-in-the-SharePoint-admin-center-494bec9c-6654-41f0-920f-f7f937ea9723).

<span id="_Toc508792524" class="anchor"><span id="_Toc510769879" class="anchor"><span id="_Toc511030401" class="anchor"><span id="_Toc511041437" class="anchor"><span id="_Toc511043182" class="anchor"><span id="_Toc511045094" class="anchor"><span id="_Toc511046246" class="anchor"><span id="_Toc511046469" class="anchor"><span id="_Toc511054171" class="anchor"><span id="_Toc511056391" class="anchor"><span id="_Toc511056455" class="anchor"><span id="_Toc511062033" class="anchor"><span id="_Toc511076810" class="anchor"><span id="_Toc511167764" class="anchor"><span id="_Toc511207957" class="anchor"><span id="_Toc511215496" class="anchor"><span id="_Toc511377245" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Turning off an Office 365 Service
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Another way to address a DSR request to restrict the processing of data is to turn off an Office 365 service. Of course, this will impact all users in your entire organization and prevent everyone from using the service or accessing data in the service.

The most expedient way to turn off a service is to use Office 365 PowerShell and remove the corresponding user license from all users in the organization. This will in effect restrict anyone from access data in that service. For detailed instructions, see [Disable access to services with Office 365 PowerShell](https://docs.microsoft.com/office365/enterprise/powershell/disable-access-to-services-with-office-365-powershell) and follow the procedures to disable Office 365 services for users from a single licensing plan.

**Note:** For Yammer, in additional to removing the Yammer license from user accounts, you also must disable users’ ability to sign in to Yammer with Yammer credentials (by enforcing the use of their Office 365 credentials when signing in). For detailed instructions, see [Turn off Yammer access for Office 365 users](https://support.office.com/article/Turn-off-Yammer-access-for-Office-365-users-1f79bfad-f713-4143-aa5d-5584985ce53a).

<span id="_Toc510769880" class="anchor"><span id="_Toc511030402" class="anchor"><span id="_Toc511041438" class="anchor"><span id="_Toc511043183" class="anchor"><span id="_Toc511045095" class="anchor"><span id="_Toc511046247" class="anchor"><span id="_Toc511046470" class="anchor"><span id="_Toc511054172" class="anchor"><span id="_Toc511056392" class="anchor"><span id="_Toc511056456" class="anchor"><span id="_Toc511062034" class="anchor"><span id="_Toc511076811" class="anchor"><span id="_Toc511167765" class="anchor"><span id="_Toc511207958" class="anchor"><span id="_Toc511215497" class="anchor"><span id="_Toc511377246" class="anchor"><span id="_Toc508792525" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Temporarily removing data from SharePoint Online or OneDrive for Business sites
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Another way to restrict the processing of personal data is to temporarily remove it from Office 365 in response to a DSR. When your organization determines that the restriction no longer applies, you can import the data back into Office 365.

Because most Office documents are located on a SharePoint Online or OneDrive for Business site, here’s a high-level process for removing documents from sites and then re-importing them.

1.  Get a copy of the document that is the subject of the restriction request. You may have to request either access to the site or ask an Office 365 global admin or a site collection administrator to provide you with a copy of the document.

2.  Store the document in an on-premises location (such as a file server or a file share) or another location other than your Office 365 tenant in the Microsoft cloud.

3.  Permanently delete (purge) the original document from Office 365. This is a 3-step process:

    a.  Delete the original copy of the document. When you delete a document from a site, it’s sent to the site Recycle Bin (also called the *first-stage Recycle Bin*).

    b.  Go to the site Recycle Bin and delete that copy of the document. When you delete a document from the site Recycle Bin, it’s sent to the site collection Recycle Bin (also called the *second-stage Recycle Bin*). See [Delete a file, folder, or link from a SharePoint document library](https://support.office.com/article/Delete-a-file-folder-or-link-from-a-SharePoint-document-library-71f3c90a-0d24-4d80-8b66-f88234b79a52).

    c.  Go to the site collection Recycle Bin and delete that copy of the document, which permanently removes it from Office 365. See [Delete items from the site collection recycle bin](https://support.office.com/article/Delete-items-from-the-site-collection-Recycle-Bin-dd5c00c2-aef6-4458-9d04-80b185077653).

4.  When the restriction no longer applies, the copy of the document that was stored on-premises can be re-uploaded to the site in Office 365.

**Important:** The preceding procedure won’t work if the document is located on a site that is on hold (with one of the retention or legal hold features in Office 365). In the case where a restriction request for a DSR takes precedence over a legal hold, the hold would have to be removed from the site before a document could be permanently deleted. Additionally, the document history for deleted documents is permanently removed.

<span id="_Toc508792526" class="anchor"><span id="_Toc510769881" class="anchor"><span id="_Toc511030403" class="anchor"><span id="_Toc511041439" class="anchor"><span id="_Toc511043184" class="anchor"><span id="_Toc511045096" class="anchor"><span id="_Toc511046248" class="anchor"><span id="_Toc511046471" class="anchor"><span id="_Toc511054173" class="anchor"><span id="_Toc511056393" class="anchor"><span id="_Toc511056457" class="anchor"><span id="_Toc511062035" class="anchor"><span id="_Toc511076812" class="anchor"><span id="_Toc511167766" class="anchor"><span id="_Toc511207959" class="anchor"><span id="_Toc511215498" class="anchor"><span id="_Toc511377247" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Temporarily restricting access to SharePoint Online sites
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

A SharePoint Online administrator can temporarily prevent all users from accessing a SharePoint Online site collection by locking the site collection (by using the **Set-SPOSite -LockState** command in SharePoint Online PowerShell). This will prevent users for accessing the site collection and any content or data that’s located in the site. If you then determine that users should be able to access the site, the administrator can unlock the site. See [Set-SPOSite](https://docs.microsoft.com/powershell/module/sharepoint-online/set-sposite) for information about running this PowerShell cmdlet.

<span id="_Toc508792527" class="anchor"><span id="_Toc510769882" class="anchor"><span id="_Toc511030404" class="anchor"><span id="_Toc511041440" class="anchor"><span id="_Toc511043185" class="anchor"><span id="_Toc511045097" class="anchor"><span id="_Toc511046249" class="anchor"><span id="_Toc511046472" class="anchor"><span id="_Toc511054174" class="anchor"><span id="_Toc511056394" class="anchor"><span id="_Toc511056458" class="anchor"><span id="_Toc511062036" class="anchor"><span id="_Toc511076813" class="anchor"><span id="_Toc511167767" class="anchor"><span id="_Toc511207960" class="anchor"><span id="_Toc511215499" class="anchor"><span id="_Toc511377248" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Preventing a user from signing in to Office 365
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

An IT admin can also prevent a user from signing into Office 365, which would prevent the user from accessing any Office 365 online service or processing any data stored in Office 365. See [Block a former employee's access to Office 365 data](https://support.office.com/article/Remove-a-former-employee-from-Office-365-44d96212-4d90-4027-9aa9-a95eddb367d1).

<span id="_Deleting_documents_in" class="anchor"><span id="_Deleting_items_in" class="anchor"><span id="_Flow_2" class="anchor"><span id="_Toc510769883" class="anchor"><span id="_Toc511030405" class="anchor"><span id="_Toc511041441" class="anchor"><span id="_Toc511043186" class="anchor"><span id="_Toc511045098" class="anchor"><span id="_Toc511046250" class="anchor"><span id="_Toc511046473" class="anchor"><span id="_Toc511054175" class="anchor"><span id="_Toc511056395" class="anchor"><span id="_Toc511056459" class="anchor"><span id="_Toc511062037" class="anchor"><span id="_Toc511076814" class="anchor"><span id="_Toc511167768" class="anchor"><span id="_Toc511207961" class="anchor"><span id="_Toc511215500" class="anchor"><span id="_Toc511377249" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Part 2:<span id="_Sway_2" class="anchor"><span id="_Yammer_3" class="anchor"><span id="_Export" class="anchor"><span id="_Step_6:_Export" class="anchor"><span id="_Export_and_download" class="anchor"><span id="_Toc508792538" class="anchor"><span id="_Hlk509849117" class="anchor"></span></span></span></span></span></span></span> Responding to DSRs with respect to insights generated by Office 365
==================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

Microsoft’s suite of Office 365 services includes online services that provide insights to users and organizations that have opted to use them.

-   Delve and MyAnalytics provide insights to individual users

-   Workplace Analytics provides insights to organizations.

These services are described in the following sections.

<span id="_Toc510769884" class="anchor"><span id="_Toc511030406" class="anchor"><span id="_Toc511041442" class="anchor"><span id="_Toc511043187" class="anchor"><span id="_Toc511045099" class="anchor"><span id="_Toc511046251" class="anchor"><span id="_Toc511046474" class="anchor"><span id="_Toc511054176" class="anchor"><span id="_Toc511056396" class="anchor"><span id="_Toc511056460" class="anchor"><span id="_Toc511062038" class="anchor"><span id="_Toc511076815" class="anchor"><span id="_Toc511167769" class="anchor"><span id="_Toc511207962" class="anchor"><span id="_Toc511215501" class="anchor"><span id="_Toc511377250" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Delve
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

In Delve, users can manage their Office 365 profile and discover people and documents that may be relevant to them. Users can only see documents they have access to. For a series of helpful articles about Delve, see [Office Delve](https://support.office.com/article/What-is-Office-Delve-1315665a-c6af-4409-a28d-49f8916878ca).

### Access and export

Admins can’t access or export a users’ Delve data. This means that users have to access and export Delve data themselves. Most of the data types can be accessed and exported directly from Delve, but some data types are only available through other services.

#### Data available in the Delve user interface

-   **Profile data**. This is the profile information from your organization’s Global Address List in Azure Active Directory, as well as optional information that users have chosen to add about themselves. To access or export profile data in Delve, a user can click **Me** \> **Update profile**. They can either copy the content directly from the page or take a screenshot.

-   **Blog data**. This is blog posts published by a user. To access or export blog data, a user can click **Me** \> **All posts**. They can either copy the content directly from the page or take a screenshot.

-   **Recent people data**. These are the people in the organization that Delve has inferred are most relevant to the user at a given time. When a user clicks **Me** \> **See all** in the “Click a person to see what they’re working on” pane, Delve shows the most relevant people for a user at a given time.

#### Data available through an export link in Delve

-   **People list data**. These are the people the user has viewed in Delve. The **People** list is shown in the left pane on the home page. Users can export a full list of people they have viewed in Delve.

-   **Favorites data**. These are boards and documents that the user has marked as their favorite. The **Favorites** page shows boards and documents that the user has added to their favorites. Users can export a list of their current favorite boards and documents.

-   **Feature settings data**. These are Delve configurations or actions that result from a user’s use of Delve. Users can export a full list of these settings. To access or export these data, the user can click the gear icon in the upper-right corner in Delve, and then click **Feature settings** \> **Export data**. Information is exported in JSON format.

#### Data that’s available through other services

-   **Popular documents data**. These are documents and email attachments that may be relevant to the user. Delve dynamically organizes these documents and email messages based on the user’s activities and people they work with in Office 365. When a user opens Delve or clicks **Home**, Delve shows the most relevant documents or attachments for the user at a given time. To access or export the actual documents and attachments, the user can go to the Office 365 service through which the document or attachment was made available (such as Office.com, SharePoint Online, OneDrive for Business, or Exchange Online).

-   **Recent documents and email attachments data**. These are the most recent documents and email attachments that the user has modified. When a user clicks **Me** \> **See all** in the “Get back to your recent documents and email attachments” pane, Delve shows the latest documents and email attachments the user has modified at a given time. To access or export the actual documents and attachments, the user can go to the Office 365 service through which the document or attachment was made available; for example, Office.com, SharePoint Online, OneDrive for Business, or Exchange Online.

-   **Documents from people around you data**. These are the documents that Delve has inferred are most relevant to the user at a given time. When a user clicks **Me** \> **See all** in the “Discover documents from people around you” pane, Delve shows the most relevant documents for a user at a given time. To access or export the actual documents, the user can go to the Office 365 service through which the document or attachment was made available (e.g., Office.com, SharePoint Online, OneDrive for Business, or Exchange Online).

### Rectify

Users can modify the following information in Delve:

-   **Profile information**. A user can click **Me** \> **Update profile** to update their information. Depending on your organization’s settings in the Global Address List, users may not be able to modify all their profile information, such as their name or job title.

-   **Feature settings**. A user can click the gear icon in the upper-right corner in Delve, and then click **Feature settings** \> to change the desired settings.

### Restrict

To restrict processing in Delve for your organization, you can turn off the Office Graph. Learn more [here](https://support.office.com/article/office-delve-for-office-365-admins-54f87a42-15a4-44b4-9df0-d36287d9531b#bkmk_delveonoff).

### Delete

Users can delete the following information in Delve:

-   **Profile information**. To delete profile information, a user can click **Me** \> **Update profile** and either delete free-form text. Depending on your organization’s settings in the Global Address List, users may not be able to delete all their profile information, such as their name or job title.

-   **Documents and email attachments**. To delete a document or attachment, users must go to the service where the document or attachment is stored (such as SharePoint Online, OneDrive for Business, or Exchange Online) and delete the document there.

<span id="_Toc508799450" class="anchor"><span id="_Toc510769885" class="anchor"><span id="_Toc511030407" class="anchor"><span id="_Toc511041443" class="anchor"><span id="_Toc511043188" class="anchor"><span id="_Toc511045100" class="anchor"><span id="_Toc511046252" class="anchor"><span id="_Toc511046475" class="anchor"><span id="_Toc511054177" class="anchor"><span id="_Toc511056397" class="anchor"><span id="_Toc511056461" class="anchor"><span id="_Toc511062039" class="anchor"><span id="_Toc511076816" class="anchor"><span id="_Toc511167770" class="anchor"><span id="_Toc511207963" class="anchor"><span id="_Toc511215502" class="anchor"><span id="_Toc511377251" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>MyAnalytics
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

MyAnalytics provides statistics to users to help them understand how they spend their time at work. To help your users better understand the data that is presented to them in their personal dashboard and how that data is calculated, direct your users to the [MyAnalytics personal dashboard](https://docs.microsoft.com/workplace-analytics/myanalytics/use/dashboard) help topic.

### Access and export

All MyAnalytics insights are derived from email and meeting headers in the user’s mailbox. Microsoft provides you the ability to get all the data that MyAnalytics uses to generate these insights via the Security & Compliance Center, under the MyAnalytics section. Users with a MyAnalytics license can go to [MyAnalytics dashboard](https://delve.office.com/?v=analytics) while logged into their Office 365 account to view the insights that are generated about how they spend their time at work. In addition to the machine-readable data provided through the Security and Compliance portal, if they would like to have permanent copies of their information, they can further take screenshots of what they see.

**Important:** If only some users in your organization have a MyAnalytics license but not all, Microsoft still generates insights about the unlicensed users to provide meaningful results to your licensed users. If an unlicensed user within your organization would like to see this data, you can access it through the same process as that which is described above (via the Security & Compliance Center) for your licensed users.

### Rectify

All insights generated by MyAnalytics are derived from the user’s mail and calendar items. Therefore, there is nothing to rectify other than the source email or calendar items.

### Restrict

To restrict processing for a specific user, you can opt them out of MyAnalytics. To see how, see [Configure MyAnalytics user settings](https://docs.microsoft.com/workplace-analytics/myanalytics/setup/configure-mya-user-settings).

### Delete

All mailbox content, including MyAnalytics data, is purged when a user account is “hard-deleted” from Active Directory. For information on how to delete a user account, see the delete section in Part 3 of this guide for System-generated logs.

<span id="_Toc508799452" class="anchor"><span id="_Toc510769886" class="anchor"><span id="_Toc511030408" class="anchor"><span id="_Toc511041444" class="anchor"><span id="_Toc511043189" class="anchor"><span id="_Toc511045101" class="anchor"><span id="_Toc511046253" class="anchor"><span id="_Toc511046476" class="anchor"><span id="_Toc511054178" class="anchor"><span id="_Toc511056398" class="anchor"><span id="_Toc511056462" class="anchor"><span id="_Toc511062040" class="anchor"><span id="_Toc511076817" class="anchor"><span id="_Toc511167771" class="anchor"><span id="_Toc511207964" class="anchor"><span id="_Toc511215503" class="anchor"><span id="_Toc511377252" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Workplace Analytics
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Workplace Analytics allows organizations to augment Office 365 data with their own business data to gain insights about organizational productivity, collaboration patterns, and employee engagement. [This article](https://docs.microsoft.com/workplace-analytics/overview/privacy-and-data-access) explains the control that your organization has over the data that Workplace Analytics processes and who has access to that data.

*To assist you with DSRs in Workplace Analytics*:

First determine whether your organization is using Workplace Analytics. For more information on how to do this, see [Assign licenses to users in Office 365 for business](https://support.office.com/article/Assign-licenses-to-users-in-Office-365-for-business-997596B5-4173-4627-B915-36ABAC6786DC). If your organization is using Workplace Analytics, then see who in your organization has been assigned to the role of Workplace Analytics administrator. You should also determine if the data subject’s mailbox is licensed for Workplace Analytics.

If necessary, have your Workplace Analytics Administrator contact Microsoft Support in handling the following DSRs.

### Access and export

If you have uploaded to Workplace Analytics any organizational data containing personal information, you can determine whether you would like to make this data available to the data subject.

Insights in Workplace Analytics reports may or may not contain personal data of users that your organization licensed for Workplace Analytics, depending on the information that your organization used to supplement the Office 365 data. Your Workplace Analytics administrator will need to review those reports to determine if they contain a user’s personal data. If a report does contain a user’s personal data, then you will need to decide if you want to provide a copy of that report to the user. Workplace Analytics allows you to export the report.

### Rectify

As explained above, Workplace Analytics uses Office 365 data in combination with the organizational data that you provide to generate reports of interest to you. The Office 365 data cannot be rectified – it is based on a user’s email and calendar activities. However, the organizational data that you have uploaded into Workplace Analytics to generate the report can be rectified. To do this, you will need to correct the source data, upload it and rerun the report to generate a new Workplace Analytics report.

### Delete

All data about the user is removed when a user account is “hard-deleted” from Active Directory. For information on how to delete a user account, see the delete section in Part 3 of this guide for system-generated logs. If a data subject would like to be removed from a Workplace Analytics report or set of reports, you can delete the report.

<span id="_Toc510769887" class="anchor"><span id="_Toc511030409" class="anchor"><span id="_Toc511041445" class="anchor"><span id="_Toc511043190" class="anchor"><span id="_Toc511045102" class="anchor"><span id="_Toc511046254" class="anchor"><span id="_Toc511046477" class="anchor"><span id="_Toc511054179" class="anchor"><span id="_Toc511056399" class="anchor"><span id="_Toc511056463" class="anchor"><span id="_Toc511062041" class="anchor"><span id="_Toc511076818" class="anchor"><span id="_Toc511207965" class="anchor"><span id="_Toc511215504" class="anchor"><span id="_Toc511377253" class="anchor"><span id="_Toc511167772" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Part 3: Responding to DSRs for System-generated Logs
====================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

Microsoft also provides you with the ability to access, export, and delete system-generated logs that may be deemed personal under the GDPR’s broad definition of "personal data." Examples of system-generated logs that may be deemed personal under GDPR include:

-   Product and service usage data such as user activity logs

-   User search requests and query data

-   Data generated by product and services as a product of system functionality and interaction by users or other systems

<span id="_Toc509825617" class="anchor"><span id="_Toc510769888" class="anchor"><span id="_Toc511030410" class="anchor"><span id="_Toc511041446" class="anchor"><span id="_Toc511043191" class="anchor"><span id="_Toc511045103" class="anchor"></span></span></span></span></span></span>Note that the ability to restrict or rectify data in system-generated logs is not supported. Data in system-generated logs constitutes factual actions conducted within the Microsoft cloud and diagnostic data, and modifications to such data would compromise the historical record of actions and increase fraud and security risks.

<span id="_Toc511046255" class="anchor"><span id="_Toc511046478" class="anchor"><span id="_Toc511054180" class="anchor"><span id="_Toc511056400" class="anchor"><span id="_Toc511056464" class="anchor"><span id="_Toc511062042" class="anchor"><span id="_Toc511076819" class="anchor"><span id="_Toc511167773" class="anchor"><span id="_Toc511207966" class="anchor"><span id="_Toc511215505" class="anchor"><span id="_Toc511377254" class="anchor"></span></span></span></span></span></span></span></span></span></span></span>Accessing and exporting system-generated logs
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Admins can access system-generated logs associated with a particular user’s use of Office 365 services and applications. To access and export system-generated logs:

1.  Go to the [Microsoft Service Trust Portal](https://servicetrust.microsoft.com/) and sign in using the credentials of an Office 365 global administrator.

2.  In the **Privacy** drop-down list at the top of the page, click **Data Subject Request**.

3.  On the **Data Subject Request** page, under **System Generated Logs**, click **Data Log Export**.

> The **Data Log Export** is displayed. Note that a list of export data requests submitted by your organization is displayed.

1.  To create a new request for a user, click **Create Export Data Request**.

After you create a new request, it will be listed on the **Data Log Export** page where you can track its status. After a request is complete, you can click a link to access the system-generated logs, which will be exported to your organization’s Azure storage location within 30 days of creating the request. The data will be saved in common, machine-readable file formats such as JSON or XML. If you don't have an Azure account and Azure storage location, you'll need to create an Azure account and/or Azure storage location for your organization so that the Data Log Export tool can export the system-generated logs. For more information, see [Introduction to Azure Storage](https://docs.microsoft.com/azure/storage/common/storage-introduction).

The following table summarizes accessing and exporting system-generated logs:

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **How long does the Microsoft Data Log Export tool take to complete a request?**                  This can depend on several factors. In most cases it should complete in one or two days, but it can take up to 30 days.
  ------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **What format will the output be in?**                                                            The output will be structured machine-readable files such as XML, CSV, or JSON.

  **Who has access to Data Log Export tool to submit access requests for system-generated logs?**   Office 365 global administrators will have access to the GDPR Log Manager utility.

  **What data does the Data Log Export tool return?**                                               The Data Log Export tool returns system generated logs that Microsoft stores. Exported data will span across various Microsoft services including Office 365, Azure and Dynamics.

  **How is data returned to the user?**                                                             Data will be exported to your organization's Azure storage location; it will be up to admins in your organization to determine how they will show/return this data to users.

  **What will data in system-generated logs look like?**                                            Example of a system-generated log record in JSON format:
                                                                                                    
                                                                                                    [{
                                                                                                    
                                                                                                    "DateTime": "2017-04-28T12:09:29-07:00",
                                                                                                    
                                                                                                    "AppName": "SharePoint",
                                                                                                    
                                                                                                    "Action": "OpenFile",
                                                                                                    
                                                                                                    "IP": "154.192.13.131",
                                                                                                    
                                                                                                    "DevicePlatform": "Windows 1.0.1607"
                                                                                                    
                                                                                                    }]
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Note:** Some features will not allow for the export or deletion of system-generated logs with personal information to maintain the integrity of such information for security and audit reasons.

Product and service usage data for some of Microsoft’s most often-used services, such as Exchange Online, SharePoint Online, Skype for Business, Yammer and Office 365 Groups can also be retrieved by searching the Office 365 audit log in the Security & Compliance Center. For more information, see [Use the Office 365 audit log search tool in DSR investigations](#use-the-office-365-audit-log-search-tool-in-dsr-investigations) in Appendix A. Using the audit log may be of interest to you because it's possible to assign permissions to other people in your organization (such as your compliance officer) to search the audit log to access this data.

<span id="_Deleting_Pseudonymized_Data" class="anchor"><span id="_Toc510769889" class="anchor"><span id="_Toc511030411" class="anchor"><span id="_Toc511041447" class="anchor"><span id="_Toc511043192" class="anchor"><span id="_Toc511045104" class="anchor"><span id="_Toc511046256" class="anchor"><span id="_Toc511046479" class="anchor"><span id="_Toc511054181" class="anchor"><span id="_Toc511056401" class="anchor"><span id="_Toc511056465" class="anchor"><span id="_Toc511062043" class="anchor"><span id="_Toc511076820" class="anchor"><span id="_Toc511167774" class="anchor"><span id="_Toc511207967" class="anchor"><span id="_Toc511215506" class="anchor"><span id="_Toc511377255" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Deleting system-generated logs
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

To delete system-generated logs retrieved through an access request, you must remove the user from the service and permanently delete their Azure Active Directory account. For instructions about permanently delete a user, see the [Deleting a user](#_Deleting_a_user) section in this guide. It's important to note that permanently deleting a user account is irreversible once initiated.

Permanently deleting a user account with remove the user’s data from system-generated logs for nearly all Office 365 services within 30 days. One exception to this when the permanent deletion of the user account takes longer than 30 days is Exchange Online. Given the critical nature of Exchange Online content and prevent accidental data loss, this system has been engineered to intentionally place data in a holding state for up to 60 days after a user account has been permanently deleted. To permanently delete a user’s Exchange Online data in a 30-day timeframe, permanently delete the user account in Azure Active Directory and then [contact support](https://support.microsoft.com/) and request that the user's Exchange Online data be manually removed outside the scheduled delete process. For more information, see [Removing Exchange Online data](#_Removing_Exchange_Online), which was previously explained in this guide.

<span id="_Toc510769890" class="anchor"><span id="_Toc511030412" class="anchor"><span id="_Toc511041448" class="anchor"><span id="_Toc511043193" class="anchor"><span id="_Toc511045105" class="anchor"><span id="_Toc511046257" class="anchor"><span id="_Toc511046480" class="anchor"><span id="_Toc511054182" class="anchor"><span id="_Toc511056402" class="anchor"><span id="_Toc511056466" class="anchor"><span id="_Toc511062044" class="anchor"><span id="_Toc511076821" class="anchor"><span id="_Toc511167775" class="anchor"><span id="_Toc511207968" class="anchor"><span id="_Toc511215507" class="anchor"><span id="_Toc511377256" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Part 4: Additional resources to assist you with DSRs
====================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

<span id="_Toc510769891" class="anchor"><span id="_Toc511030413" class="anchor"><span id="_Toc511041449" class="anchor"><span id="_Toc511043194" class="anchor"><span id="_Toc511045106" class="anchor"><span id="_Toc511046258" class="anchor"><span id="_Toc511046481" class="anchor"><span id="_Toc511054183" class="anchor"><span id="_Toc511056403" class="anchor"><span id="_Toc511056467" class="anchor"><span id="_Toc511062045" class="anchor"><span id="_Toc511076822" class="anchor"><span id="_Toc511167776" class="anchor"><span id="_Toc511207969" class="anchor"><span id="_Toc511215508" class="anchor"><span id="_Toc511377257" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>DSR guides for other Microsoft enterprise services
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

This guide is dedicated to the topic of how to find and act on personal data to respond to DSRs when using Office 365 products, services and administrative tools. Go to the [Microsoft Service Trust Portal](https://servicetrust.microsoft.com/) to access similar guides for other Microsoft enterprise services.

<span id="_Toc511030414" class="anchor"><span id="_Toc511041450" class="anchor"><span id="_Toc511043195" class="anchor"><span id="_Toc511045107" class="anchor"><span id="_Toc511046259" class="anchor"><span id="_Toc511046482" class="anchor"><span id="_Toc511054184" class="anchor"><span id="_Toc511056404" class="anchor"><span id="_Toc511056468" class="anchor"><span id="_Toc511062046" class="anchor"><span id="_Toc511076823" class="anchor"><span id="_Toc511167777" class="anchor"><span id="_Toc511207970" class="anchor"><span id="_Toc511215509" class="anchor"><span id="_Toc511377258" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Microsoft support
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

“Support Data” is the data you and your users provide to Microsoft if your organization or your users engage with Microsoft to receive product support related to Office 365 or other Microsoft products and services (e.g., to troubleshoot unexpected product behavior). Some of this data may contain personal data. For more information, see the DSR guide for Microsoft Support and Professional Services on the [Microsoft Service Trust Portal](https://servicetrust.microsoft.com/).

<span id="_Product_and_services" class="anchor"><span id="_Toc510769892" class="anchor"><span id="_Toc511030415" class="anchor"><span id="_Toc511041451" class="anchor"><span id="_Toc511043196" class="anchor"><span id="_Toc511045108" class="anchor"><span id="_Toc511046260" class="anchor"><span id="_Toc511046483" class="anchor"><span id="_Toc511054185" class="anchor"><span id="_Toc511056405" class="anchor"><span id="_Toc511056469" class="anchor"><span id="_Toc511062047" class="anchor"><span id="_Toc511076824" class="anchor"><span id="_Toc511167778" class="anchor"><span id="_Toc511207971" class="anchor"><span id="_Toc511215510" class="anchor"><span id="_Toc511377259" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Product and services authenticated with an Org ID for which Microsoft is a data controller
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Parts 1-3 of this guide cover products and services for which Microsoft is a data processor to your organization, and thus DSR capability is made available to your tenant administrator. There are a variety of circumstances where your organization’s users may use their work or school account (also referred to as “Azure Active Directory ID” or “AAD”) to sign in to Microsoft products and services for which Microsoft is a data controller. For all such products and services, your users will need to initiate their own data subject requests directly to Microsoft and Microsoft will fulfill the requests directly to the user. Note that, by design, products and services involving storage of user-authored content enable users to access, export, rectify, and delete their user-authored content as part of the inherent functionality of the products. Scenarios where this may apply include the following:

-   Optional connected online services – Office ProPlus makes certain optional connected online services available to the user. They are listed [here](https://go.microsoft.com/fwlink/?linkid=872010). To the extent that these optional services process personal data, Microsoft is a data controller for these services.

-   User Feedback – if your users elect to provide feedback on Microsoft products and services, Microsoft is a data controller for such feedback to the extent it contains personal data. Microsoft will fulfill any data subject requests for feedback collected by Microsoft (including feedback managed by Microsoft subprocessors) except in cases where Microsoft has instructed users to not include personal data during the feedback collection process.\
    Exceptions: If Microsoft has instructed users to not include personal data during the feedback collection process, Microsoft will rely on that instruction and will assume that no personal data has been provided. Users who have created a separate account with third-party feedback service providers will need to fulfill their DSR directly with those providers.

-   Windows authenticated via work or school account - If your organization has purchased Windows licenses, and your users authenticate to organization-provided Windows with their work or school account, Microsoft acts as a data controller. For more information, see the DSR guide for Windows on the [Microsoft Service Trust Portal](https://servicetrust.microsoft.com/).

-   User-Acquired Products or Services - If you allow your users, acting in their individual capacity, to acquire Microsoft products or services that use AAD for authentication, e.g., Office Add-Ons or applications available in a Microsoft Store, Microsoft may be a data controller. For any such Microsoft products or services, users will need to contact Microsoft directly to initiate a DSR.

    **Important:** If you delete a user as enabled via Azure Active Directory, your (former) user will lose the ability to sign in to any products or services for which he or she formerly relied upon for a work or school account. Additionally, Microsoft would no longer be able to authenticate the user in connection with a DSR request for products or services for which Microsoft is a data controller. If you wish to enable a user to initiate DSRs against such services, it is important you instruct your user to do so before you delete the user’s AAD account.

Personal accounts\
If your users have used Microsoft accounts (i.e. personal accounts) to acquire products and services from Microsoft for their own use and for which Microsoft is a data controller, they may initiate DSR requests via Microsoft’s [web-based privacy dashboard](https://account.microsoft.com/account/privacy?refd=news.microsoft.com&ru=https%3A%2F%2Faccount.microsoft.com%2Fprivacy%3Frefd%3Dnews.microsoft.com&destrt=privacy-dashboard).<span id="_Toc510769893" class="anchor"></span>

<span id="_Toc510769894" class="anchor"><span id="_Toc511030416" class="anchor"><span id="_Toc511041452" class="anchor"><span id="_Toc511043197" class="anchor"><span id="_Toc511045109" class="anchor"><span id="_Toc511046261" class="anchor"><span id="_Toc511046484" class="anchor"><span id="_Toc511054186" class="anchor"><span id="_Toc511056406" class="anchor"><span id="_Toc511056470" class="anchor"><span id="_Toc511062048" class="anchor"><span id="_Toc511076825" class="anchor"><span id="_Toc511167779" class="anchor"><span id="_Toc511207972" class="anchor"><span id="_Toc511215511" class="anchor"><span id="_Toc511377260" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Third party products
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

If your organization, or your users acting in their individual capacity, have acquired products or services from third parties and use their Microsoft work or school account for authentication, any data subject requests should be directed to the applicable third party.

<span id="_Toc510769895" class="anchor"><span id="_Toc511030417" class="anchor"><span id="_Toc511041453" class="anchor"><span id="_Toc511043198" class="anchor"><span id="_Toc511045110" class="anchor"><span id="_Toc511046262" class="anchor"><span id="_Toc511046485" class="anchor"><span id="_Toc511054187" class="anchor"><span id="_Toc511056407" class="anchor"><span id="_Toc511056471" class="anchor"><span id="_Toc511062049" class="anchor"><span id="_Toc511076826" class="anchor"><span id="_Toc511167780" class="anchor"><span id="_Toc511207973" class="anchor"><span id="_Toc511215512" class="anchor"><span id="_Toc511377261" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Appendix A: Preparing for DSR investigations
============================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

To help prepare your organization to undertake DSR investigations using Office 365 services, consider the following recommendations:

-   Use the DSR eDiscovery case tool in the Office 365 Security & Compliance Center to manage DSR investigations

-   Set up Compliance Boundaries to limit the scope of Content Searches

-   Use the Office 365 audit log search tool in DSR investigations

### Use the DSR case tool to manage DSR investigations

We recommend that you use the DSR case tool in Security & Compliance Center to manage DSR investigations. By using the DSR case tool, you can:

-   Create a separate case for each DSR investigation.

-   Use the default search query to search for all content related to a specific data subject. When you create a new case and start the search, these content locations are searched:

    -   The data subject's mailbox (including Skype for Business conversations and one-to-one team chats)

    -   All SharePoint Online sites and OneDrive for Business accounts in your organization

    -   All Microsoft Teams sites and Office 365 group sites in your organization

    -   All public folders in Exchange Online

-   Revise the default search query and re-run the search to narrow the search results.

-   Control who has access to the case by adding people as members of the case; only members can access the case and they’ll be able only see their cases in the list of cases on the DSR cases page in the Security & Compliance Center. Additionally, you can assign different permissions to different members of the same case. For example, you could allow some members to only view the case and the results of a Content Search and allow other members to create searches and export search results.

-   Create export jobs to export the search results in response to a DSR export request. You can export all content returned by the Content Search. Additionally, other Office 365 data related to a data subject will also be exported.

-   Delete cases when the DSR investigation process is complete. This will remove all the content searches and export jobs associated with the case.

To get started with using DSR cases, see [Manage DSR cases in the Office 365 Security & Compliance Center](https://support.office.com/article/manage-dsr-cases-in-the-office-365-security-compliance-center-ce9eb942-3589-42cb-88fd-1576ecb09c5c).

**Important:** An eDiscovery Administrator can view and manage all DSR cases in your organization. For more information about the different roles related to eDiscovery, see [Assign eDiscovery permissions to potential case members](https://support.office.com/article/Manage-eDiscovery-cases-in-the-Office-365-Security-Compliance-Center-9a00b9ea-33fd-4772-8ea6-9d3c65e829e6).

### Set up Compliance Boundaries to limit the scope of Content Searches

Compliance Boundaries are implemented by using the search permissions filtering functionality in the Security & Compliance Center. Compliance Boundaries create logical search boundaries within an organization that control/limit which content locations (for example Exchange Online mailboxes and SharePoint Online sites) that an IT admin or compliance officer can search. Compliance Boundaries are useful for multi-national organizations that need to respect geographical boundaries, governmental organizations that need to separate different agencies, and business organizations that segregated into business unit or department. For all these scenarios, Compliance Boundaries can be used in DSR investigations to limit which mailboxes and sites can be searched by people involved in the investigation.

You can use Compliance Boundaries together with eDiscovery cases to limit the content locations that can be searched in an investigation to those locations only within the agency or business unit.

Here’s a high-level overview of how to implement Compliance Boundaries (together with eDiscovery cases) for DSR investigations.

1.  Determine the agencies in your organization that will be designated as a compliance boundary.

2.  Determine which user object attribute in Azure Active Directory will be used to define the compliance boundary. For example, you might choose the Country, CountryCode, or Department attribute, so that members of the admin role group that you create in the next step can only search the content locations of the users that have a specific value for that attribute. This is how you limit who can search for content in a specific agency.

> **Note:** Currently, you must perform an additional step for OneDrive for Business and file a Microsoft Support request to have the attribute synchronized to OneDrive for Business accounts.

1.  Create an admin role group in the Office 365 Security & Compliance Center for each compliance boundary. We recommend that you create these role groups by copying the built-in eDiscovery Manager role group and then removing any roles as necessary.

2.  Add members to each of the specific role groups as eDiscovery Mangers. Members will the people responsible for investigating and responding to DSRs, and will typically consist of IT admins, data privacy officers, compliance managers, and human resource representatives.

3.  Create a search permissions filter for each compliance boundary so that the members of the corresponding admin role group can only search mailboxes and sites for users within that agency/compliance boundary. The search permissions filter will allow members of the corresponding role group to search only the content locations with user object attribute value that corresponds to the agency/compliance boundary.

For step-by-step instructions, see [Set up compliance boundaries for eDiscovery investigations in Office 365](https://support.office.com/article/1b45c82f-26c8-44fb-9f3b-b45436fe2271).

### Use the Office 365 audit log search tool in DSR investigations

IT admins can use the audit log search tool in the Security & Compliance Center to identity documents, files, and other Office 365 resources that users have created, accessed, changed, or deleted. Searching for this kind activity can be useful in DSR investigations. For example, in SharePoint Online and OneDrive for Business, auditing events are logged when users perform these activities:

-   Accessed a file

-   Modified a file

-   Moved a file

-   Uploaded or downloaded a file

You can search the audit log for specific activities, types of activities, activities performed by a specific user, and other search criteria. In addition to SharePoint Online and OneDrive for Business activities, you can also search for activities in Flow, Power BI, and Microsoft Teams. Note that auditing records are retained for 90 days. Therefore, you won’t be able to search for user activities that occurred more than 90 days ago. For a complete list of audited activities and how to search the audit log, see [Search the audit log in the Office 365 Security & Compliance Center](https://support.office.com/article/Search-the-audit-log-in-the-Office-365-Security-Compliance-Center-0d4d0f35-390b-4518-800e-0c7ec95e946c).

**Tip:** To work around the 90-day limitation discussed above and maintain a running history of your organization’s auditing records, you could export all activities on a recurring schedule (for example, every 30 days) to have a continuous record of your organization’s auditing records.

<span id="_Toc511030418" class="anchor"><span id="_Toc511045111" class="anchor"><span id="_Toc511046263" class="anchor"><span id="_Toc511046486" class="anchor"><span id="_Toc511054188" class="anchor"><span id="_Toc511056408" class="anchor"><span id="_Toc511056472" class="anchor"><span id="_Toc511062050" class="anchor"><span id="_Toc511076827" class="anchor"><span id="_Toc511167781" class="anchor"><span id="_Toc511207974" class="anchor"><span id="_Toc511215513" class="anchor"><span id="_Toc511377262" class="anchor"><span id="_Toc510769896" class="anchor"><span id="_Toc511041454" class="anchor"><span id="_Toc511043199" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>Appendix B: Scripts to delete or export OneDrive for Business and SharePoint Online Experience Settings 
========================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================

The following are scripts provided as examples to export and delete certain OneDrive for Business and SharePoint Online settings.

-   **ExportODBLists.ps1 --** See [this section](#_Downloading_documents_and) in the guide for information about running this script.[](#onedrive-for-business-experience-settings)

-   **DeleteODBLists.ps1 --** See [this section](#deleting-user-information-lists-on-sharepoint-online-sites) in the guide for information about running this script.[](#deleting-onedrive-for-business-experience-settings)

To use these scripts, we recommended that you install the following:

-   [SharePoint Online Management Shell](https://www.microsoft.com/en-us/download/details.aspx?id=35588), which contain the core SharePoint Online management commands.

-   [PnP PowerShell](http://aka.ms/officedevpnppowershell) commands, which are useful to manage SharePoint lists in conjunction with SharePoint Online PowerShell. This is part of the community driven [SharePoint / Office Dev Patterns and Practices](http://aka.ms/OfficeDevPnP).

-   [SharePoint Online components SDK](https://www.microsoft.com/download/details.aspx?id=42038), needed to make client-side object model commands (CSOM).

<span id="_Toc510769897" class="anchor"><span id="_Toc511030419" class="anchor"><span id="_Toc511041455" class="anchor"><span id="_Toc511043200" class="anchor"><span id="_Toc511045112" class="anchor"><span id="_Toc511046264" class="anchor"><span id="_Toc511046487" class="anchor"><span id="_Toc511054189" class="anchor"><span id="_Toc511056409" class="anchor"><span id="_Toc511056473" class="anchor"><span id="_Toc511062051" class="anchor"><span id="_Toc511076828" class="anchor"><span id="_Toc511167782" class="anchor"><span id="_Toc511207975" class="anchor"><span id="_Toc511215514" class="anchor"><span id="_Toc511377263" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>**ExportODBLists script**
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Copy the contents below and paste them into a text file. Save the file as **ExportODBLists.ps1**. The script can export all fields from the target lists using the **exportAllFields** parameter. The script can be modified to export all lists and to handle other sites as well.

\#ExportODBLists

\#Exports ODB experience settings, stored in several SharePoint Lists

param([string]\$siteUrl, [bool]\$exportAllFields=\$false, [bool]\$useStoredCreds=\$true, [string]\$exportFolder)

Add-Type -Path "C:\\Program Files\\Common Files\\Microsoft Shared\\Web Server Extensions\\16\\ISAPI\\Microsoft.SharePoint.Client.dll"

Add-Type -Path "C:\\Program Files\\Common Files\\Microsoft Shared\\Web Server Extensions\\16\\ISAPI\\Microsoft.SharePoint.Client.Runtime.dll"

if (!\$siteUrl)

{

Write-Host "Please specify a OneDrive site using -siteUrl."

return

}

if (\$useStoredCreds)

{

Write-Host "Retrieving stored Windows credentials for \$siteUrl."

\$cred = Get-StoredCredential -Target \$siteUrl

if (!\$cred)

{

Write-Host "Didn't find stored credential for \$siteUrl. Please provide credentials to connect."

\$cred = Get-Credential

}

}

else

{

\$cred = Get-Credential

}

\$credentials = New-Object Microsoft.SharePoint.Client.SharePointOnlineCredentials(\$cred.UserName,\$cred.Password)

\$webURL = \$siteUrl

\$ctx = New-Object Microsoft.SharePoint.Client.ClientContext(\$webURL)

\$ctx.Credentials = \$credentials

\#root folders of lists to export

\$SWMRoot = "Reference " \#starts with this string

\$notificationsRoot = "notificationSubscriptionHiddenList6D1E55DA25644A22"

\$activityFeedRoot = "userActivityFeedHiddenListF4387007BE61432F8BDB85E6"

\$accessRequestsRoot = "Access Requests"

\$microfeedRoot = "PublishedFeed"

\$SPHomeCacheRoot = "SharePointHomeCacheList"

\$sharingLinksRoot = "Sharing Links"

\$socialRoot = "Social"

\#list fields to eexport

\$SWMFields = @("ID","Created","Modified","Title","RemoteItemPath","OwnerDisplayName","OwnerSipAddress","RemoteItemFileSystemObjectType",

"RemoteItemCreatorDisplayName","RemoteItemCreatorSipAddress","RemoteItemCreatedDateTime",

"RemoteItemModifierDisplayName","RemoteItemModifierSipAddress","RemoteItemModifiedDateTime",

"SWMSharedByDisplayName","SWMSharedBySipAddress","SWMSharedByDateTime",

"RemoteItemLastAccessedDateTime","RemoteItemServerRedirectedUrl","RemoteItemServerRedirectedEmbedUrl")

\$accessRequestsFields = @("ID","Created","Modified","Title","RequestId","RequestedObjectTitle","RequestedObjectUrl","PermissionType","PermissionLevelRequested","RequestDate",

"RequestedByDisplayName","RequestedBy","ReqByUser",

"RequestedForDisplayName","RequestedFor","ReqForUser",

"ApprovedBy","AcceptedBy","Status","Expires","WelcomeEmailSubject","WelcomeEmailBody","ExtendedWelcomeEmailBody","Conversation")

\$microfeedFields = @("ID","Created","Modified","Title","MicroBlogType","PostAuthor","RootPostOwnerID","RootPostUniqueID","ReplyCoungett","Order","ContentData")

\$notificationsFields = @("ID","Created","Modified","Title","SubscriptionId","PoolName","SecondaryPoolName","AppType","NotificationHandle",

"SecondsToExpiry","DestinationType","SubmissionDateTime","ExpirationDateTime","Locale","DeviceId","HostName","NotificationCounter",

"SingleSignOutKey","NotificationScenarios","ComplianceAssetId","AppAuthor","AppEditor")

\$SPHomeCacheFields = @("ID","Created","Modified","Author","Editor","Title","Value")

\$sharingLinksFields = @("ID","Created","Modified","Title","SharingDocId","ComplianceAssetId","CurrentLink","AvailableLinks")

\$socialFields = @("ID","Created","Modified","Author","Editor","Title","Url","Hidden","HasFeed","SocialProperties")

\$activityFeedFields = @("ID","Created","Modified","Title","ActivityId","ItemId","PushNotificationsSent","EmailNotificationSent","IsActorActivity","IsRead","Order",

"ItemChildCount","FolderChildCount","ActivityEventType","ActivityEvent")

\#get lists in the web

try{

\$lists = \$ctx.web.Lists

\$ctx.load(\$lists)

\$ctx.executeQuery()

}

catch{

write-host "\$(\$\_.Exception.Message)" -foregroundcolor red

}

\#identify the lists to export

\$listsToExport = @()

foreach(\$list in \$lists)

{

\$ctx.load(\$list)

\$ctx.load(\$list.RootFolder)

\$ctx.executeQuery()

\$listTitle = [string]\$list.Title

\$listRoot = \$list.RootFolder.Name

Write-host ("Processing List: " + \$list.Title + " with " + \$list.ItemCount + " items").ToUpper() -ForegroundColor Yellow

Write-host ("\>\> List Root Folder: " + \$listRoot) -ForegroundColor Yellow

if (\$listRoot.StartsWith(\$SWMRoot,"CurrentCultureIgnoreCase") -and \$list.ItemCount -ge 1)

{

Write-Host "\>\> Found: Shared With Me List" -ForegroundColor Green

\$listDetails = @{listType = "Shared With Me List"; listTitle = \$listTitle; listRoot = \$listRoot; listFields = \$SWMFields}

\$listsToExport += \$listDetails

}

elseif (\$listRoot -eq \$notificationsRoot)

{

Write-Host "\>\> Found: Notifications List" -ForegroundColor Green

\$listDetails = @{listType = "Notifications List"; listTitle = \$listTitle; listRoot = \$listRoot; listFields = \$notificationsFields}

\$listsToExport += \$listDetails

}

elseif (\$listRoot -eq \$activityFeedRoot)

{

Write-Host "\>\> Found: User Activity Feed List" -ForegroundColor Green

\$listDetails = @{listType = "User Activity Feed List"; listTitle = \$listTitle; listRoot = \$listRoot; listFields = \$activityFeedFields}

\$listsToExport += \$listDetails

}

elseif (\$listRoot -eq \$accessRequestsRoot)

{

Write-Host "\>\> Found: Access Requests List" -ForegroundColor Green

\$listDetails = @{listType = "Access Requests List"; listTitle = \$listTitle; listRoot = \$listRoot; listFields = \$accessRequestsFields}

\$listsToExport += \$listDetails

}

elseif (\$listRoot -eq \$microfeedRoot)

{

Write-Host "\>\> Found: MicroFeed List" -ForegroundColor Green

\$listDetails = @{listType = "Microfeed List"; listTitle = \$listTitle; listRoot = \$listRoot; listFields = \$microfeedFields}

\$listsToExport += \$listDetails

}

elseif (\$listRoot -eq \$SPHomeCacheRoot)

{

Write-Host "\>\> Found: SharePoint Home Cache List" -ForegroundColor Green

\$listDetails = @{listType = "SharePoint Home Cache List"; listTitle = \$listTitle; listRoot = \$listRoot; listFields = \$SPHomeCacheFields}

\$listsToExport += \$listDetails

}

elseif (\$listRoot -eq \$sharingLinksRoot)

{

Write-Host "\>\> Found: Sharing Links List" -ForegroundColor Green

\$listDetails = @{listType = "Sharing Links List"; listTitle = \$listTitle; listRoot = \$listRoot; listFields = \$sharingLinksFields}

\$listsToExport += \$listDetails

}

elseif (\$listRoot -eq \$socialRoot)

{

Write-Host "\>\> Found: Social List" -ForegroundColor Green

\$listDetails = @{listType = "Social List"; listTitle = \$listTitle; listRoot = \$listRoot; listFields = \$socialFields}

\$listsToExport += \$listDetails

}

}

\#export list function

function exportList

{

Param ([string] \$listTitle, [string[]]\$listFields, [string]\$exportFile)

Write-Host ("Exporting List: " + \$listTitle).ToUpper() -ForegroundColor Green

Write-Host ("\>\> File location: \$exportFile") -ForegroundColor Green

\#Get the list items

\$list = \$lists.GetByTitle(\$listTitle)

\$listItems = \$list.GetItems([Microsoft.SharePoint.Client.CamlQuery]::CreateAllItemsQuery())

\$fieldColl = \$list.Fields

\$ctx.load(\$listItems)

\$ctx.load(\$fieldColl)

\$ctx.executeQuery()

if (\$listFields) \#if you're passing a specific set of fields, in a specific order, process those

{

\#Array to Hold List Items

\$listItemCollection = @()

\#Fetch each list item value to export to excel

foreach(\$item in \$listItems)

{

\$exportItem = New-Object PSObject

Foreach (\$field in \$listFields)

{

if(\$NULL -ne \$item[\$field])

{

\#Expand the value of Person or Lookup fields

\$fieldType = \$item[\$field].GetType().name

if ((\$fieldType -eq "FieldLookupValue") -or (\$fieldType -eq "FieldUserValue"))

{

\$fieldValue = \$item[\$field].LookupValue

}

elseif (\$fieldType -eq "FieldUrlValue")

{

\$fieldValue = \$item[\$field].Url

}

else

{

\$fieldValue = \$item[\$field]

}

}

\$exportItem | Add-Member -MemberType NoteProperty -name \$field -value \$fieldValue

}

\#Add the object with above properties to the Array

\$listItemCollection += \$exportItem

}

\#Export the result Array to CSV file

\$listItemCollection | Export-CSV \$exportFile -NoTypeInformation

}

else \#export all fields for the list

{

\#Array to Hold List Items

\$listItemCollection = @()

\#Fetch each list item value to export to excel

foreach(\$item in \$listItems)

{

\$exportItem = New-Object PSObject

Foreach(\$field in \$fieldColl)

{

if(\$NULL -ne \$item[\$field.InternalName])

{

\#Expand the value of Person or Lookup fields

\$fieldType = \$item[\$field.InternalName].GetType().name

if ((\$fieldType -eq "FieldLookupValue") -or (\$fieldType -eq "FieldUserValue"))

{

\$fieldValue = \$item[\$field.InternalName].LookupValue

}

elseif (\$fieldType -eq "FieldUrlValue")

{

\$fieldValue = \$item[\$field].Url

}

else

{

\$fieldValue = \$item[\$field.InternalName]

}

}

\$exportItem | Add-Member -MemberType NoteProperty -name \$field.InternalName -value \$fieldValue

}

\#Add the object with above properties to the Array

\$listItemCollection += \$exportItem

}

\#Export the result Array to CSV file

\$listItemCollection | Export-CSV \$exportFile -NoTypeInformation

}

}

\#export the lists

foreach (\$list in \$listsToExport)

{

\#if we have a valid folder for export, use it, otherwise export to the current directory

if (\$exportFolder -and (Test-Path \$exportFolder -PathType Container))

{

\$filepath = Join-Path -Path \$exportFolder -ChildPath (\$list["listTitle"] + ".csv")

}

else

{

\$filepath = (\$list["listTitle"] + ".csv")

}

\#export the lists

if (\$exportAllFields)

{

exportList -listTitle \$list["listTitle"] -exportFile \$filepath

}

else

{

exportList -listTitle \$list["listTitle"] -listFields \$list["listFields"] -exportFile \$filepath

}

}

<span id="_Toc510769898" class="anchor"><span id="_Toc511030420" class="anchor"><span id="_Toc511041456" class="anchor"><span id="_Toc511043201" class="anchor"><span id="_Toc511045113" class="anchor"><span id="_Toc511046265" class="anchor"><span id="_Toc511046488" class="anchor"><span id="_Toc511054190" class="anchor"><span id="_Toc511056410" class="anchor"><span id="_Toc511056474" class="anchor"><span id="_Toc511062052" class="anchor"><span id="_Toc511076829" class="anchor"><span id="_Toc511167783" class="anchor"><span id="_Toc511207976" class="anchor"><span id="_Toc511215515" class="anchor"><span id="_Toc511377264" class="anchor"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>DeleteODBLists script
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Copy the contents below and paste them into a text file. Save the file as **DeleteODBLists.ps1**.

\#DeleteODBLists

\#Deletes ODB experience settings, stored in several SharePoint Lists

param([string]\$siteUrl, [bool]\$useStoredCreds=\$true)

Add-Type -Path "C:\\Program Files\\Common Files\\Microsoft Shared\\Web Server Extensions\\16\\ISAPI\\Microsoft.SharePoint.Client.dll"

Add-Type -Path "C:\\Program Files\\Common Files\\Microsoft Shared\\Web Server Extensions\\16\\ISAPI\\Microsoft.SharePoint.Client.Runtime.dll"

if (!\$siteUrl)

{

Write-Host "Please specify a OneDrive site using -siteUrl."

return

}

if (\$useStoredCreds)

{

Write-Host "Retrieving stored Windows credentials for \$siteUrl."

\$cred = Get-StoredCredential -Target \$siteUrl

if (!\$cred)

{

Write-Host "Didn't find stored credential for \$siteUrl. Please provide credentials to connect."

\$cred = Get-Credential

}

}

else

{

\$cred = Get-Credential

}

\$credentials = New-Object Microsoft.SharePoint.Client.SharePointOnlineCredentials(\$cred.UserName,\$cred.Password)

\$webURL = \$siteUrl

\$ctx = New-Object Microsoft.SharePoint.Client.ClientContext(\$webURL)

\$ctx.Credentials = \$credentials

\#Root folders of lists to export

\$SWMRoot = "Reference " \#starts with this string

\$notificationsRoot = "notificationSubscriptionHiddenList6D1E55DA25644A22"

\$activityFeedRoot = "userActivityFeedHiddenListF4387007BE61432F8BDB85E6"

\$accessRequestsRoot = "Access Requests"

\$microfeedRoot = "PublishedFeed"

\$SPHomeCacheRoot = "SharePointHomeCacheList"

\$sharingLinksRoot = "Sharing Links"

\$socialRoot = "Social"

\#Get all lists in the web

try{

\$lists = \$ctx.web.Lists

\$ctx.load(\$lists)

\$ctx.executeQuery()

}

catch{

write-host "\$(\$\_.Exception.Message)" -foregroundcolor red

}

\#Process all lists and identify the settings lists to be deleted

\$listsToDelete = @()

foreach(\$list in \$lists)

{

\$ctx.load(\$list)

\$ctx.load(\$list.RootFolder)

\$ctx.executeQuery()

\$listTitle = [string]\$list.Title

\$listRoot = \$list.RootFolder.Name

\$listTemplateId = \$list.TemplateFeatureId

Write-host ("Processing List: " + \$list.Title + " with " + \$list.ItemCount + " items").ToUpper() -ForegroundColor Yellow

Write-host ("\>\> List Root Folder: " + \$listRoot) -ForegroundColor Yellow

if (\$listRoot.StartsWith(\$SWMRoot,"CurrentCultureIgnoreCase") -and \$list.ItemCount -ge 1)

{

Write-Host "\>\> Found: Shared With Me List" -ForegroundColor Green

\$listDetails = @{listType = "Shared With Me List"; listTitle = \$listTitle; listRoot = \$listRoot; listTemplateId = \$listTemplateId}

\$listsToDelete += \$listDetails

}

elseif (\$listRoot -eq \$notificationsRoot)

{

Write-Host "\>\> Found: Notifications List" -ForegroundColor Green

\$listDetails = @{listType = "Notifications List"; listTitle = \$listTitle; listRoot = \$listRoot; listTemplateId = \$listTemplateId}

\$listsToDelete += \$listDetails

}

elseif (\$listRoot -eq \$activityFeedRoot)

{

Write-Host "\>\> Found: User Activity Feed List" -ForegroundColor Green

\$listDetails = @{listType = "User Activity Feed List"; listTitle = \$listTitle; listRoot = \$listRoot; listTemplateId = \$listTemplateId}

\$listsToDelete += \$listDetails

}

elseif (\$listRoot -eq \$accessRequestsRoot)

{

Write-Host "\>\> Found: Access Requests List" -ForegroundColor Green

\$listDetails = @{listType = "Access Requests List"; listTitle = \$listTitle; listRoot = \$listRoot; listTemplateId = \$listTemplateId}

\$listsToDelete += \$listDetails

}

elseif (\$listRoot -eq \$microfeedRoot)

{

Write-Host "\>\> Found: MicroFeed List" -ForegroundColor Green

\$listDetails = @{listType = "Microfeed List"; listTitle = \$listTitle; listRoot = \$listRoot; listTemplateId = \$listTemplateId}

\$listsToDelete += \$listDetails

}

elseif (\$listRoot -eq \$SPHomeCacheRoot)

{

Write-Host "\>\> Found: SharePoint Home Cache List" -ForegroundColor Green

\$listDetails = @{listType = "SharePoint Home Cache List"; listTitle = \$listTitle; listRoot = \$listRoot; listTemplateId = \$listTemplateId}

\$listsToDelete += \$listDetails

}

elseif (\$listRoot -eq \$sharingLinksRoot)

{

Write-Host "\>\> Found: Sharing Links List" -ForegroundColor Green

\$listDetails = @{listType = "Sharing Links List"; listTitle = \$listTitle; listRoot = \$listRoot; listTemplateId = \$listTemplateId}

\$listsToDelete += \$listDetails

}

elseif (\$listRoot -eq \$socialRoot)

{

Write-Host "\>\> Found: Social List" -ForegroundColor Green

\$listDetails = @{listType = "Social List"; listTitle = \$listTitle; listRoot = \$listRoot; listTemplateId = \$listTemplateId}

\$listsToDelete += \$listDetails

}

}

\#Retrieve web features

\$webFeatures = \$ctx.Web.Features

\$ctx.Load(\$webFeatures)

\$ctx.ExecuteQuery()

\#Export list function

function deleteList

{

Param ([string] \$listTitle, [string] \$listTemplateId)

Write-Host ("Deleting List: " + \$listTitle).ToUpper() -ForegroundColor Red

\#Remove features the list may depend on

\$webfeatures.Remove(\$listTemplateId, \$true)

\$ctx.executeQuery()

\#Set the list to allow deletion

\$list = \$lists.GetByTitle(\$listTitle)

\$list.AllowDeletion = \$true

\$list.Update()

\$ctx.executeQuery()

\#Delete the list

\$list.DeleteObject()

\$ctx.executeQuery()

}

\#Delete all target lists

foreach (\$list in \$listsToDelete)

{

deleteList -listTitle \$list["listTitle"] -listTemplateId \$list["listTemplateId"]

}

[^1]: “Customer Data” as used in this document has the same meaning as that defined in the Microsoft agreement governing Office 365 and other Online Services, known as the “Online Services Terms.”
