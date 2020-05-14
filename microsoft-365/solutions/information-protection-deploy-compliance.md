---
title: "Use Compliance Score and Compliance Manager to manage improvement actions"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 05/01/2020
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- M365solutions
ms.custom: 
description: add.
---

# Use Compliance Score and Compliance Manager to manage improvement actions

Microsoft Compliance Score and Compliance Manager can be used together to manage improvement actions related to data privacy regulations such as the European Union [General Data Protection Regulation (GDPR)](https://docs.microsoft.com/en-us/microsoft-365/compliance/gdpr?view=o365-worldwide), [California Consumer Protection Act CCPA)](https://docs.microsoft.com/en-us/microsoft-365/compliance/ccpa-faq?view=o365-worldwide), HIPAA-HITECH (US health care privacy act), and the Brazil Data Protection Act (LGPD). 

This article provides guidance on the use of these tools for data privacy purposes.

>[!Note]
>The customer actions provided in Compliance Manager are recommendations> It is up to your organization to evaluate the effectiveness of these recommendations in their respective regulatory environment prior to implementation. Recommendations found in Compliance Manager should not be interpreted as a guarantee of compliance.
>

## Planned updates for Compliance Score and Compliance Manager

Compliance Score (Preview) currently requires adding your target "Assessments" specific to the regulation in question (e.g. GDPR) from the Compliance Manager. In a future release, much of the functionality in Compliance Manager will be adapted into a unified Compliance Score experience, reducing the need for multiple tools.

Compliance Score and Compliance Manager references:

- [Microsoft Compliance Score](https://docs.microsoft.com/en-us/microsoft-365/compliance/compliance-score?view=o365-worldwide)
- [Microsoft Compliance Manager](https://docs.microsoft.com/en-us/microsoft-365/compliance/compliance-manager-overview?view=o365-worldwide) 	

Access to the tools with a sign-in to your subscription:

- [Compliance Score in the Microsoft Compliance admin center](https://compliance.microsoft.com/compliancescore?viewid=overview)
- [Compliance Manager in the Microsoft Services Trust Portal](https://servicetrust.microsoft.com/ComplianceManager/V3)

## Getting started with Compliance Manager 

[Microsoft Compliance Manager](https://docs.microsoft.com/en-us/microsoft-365/compliance/working-with-compliance-manager?view=o365-worldwide) (currently in preview) is a free workflow-based risk assessment tool in the Microsoft Service Trust Portal for managing regulatory compliance activities related to Microsoft cloud services. Part of your Microsoft 365, Office 365, or Azure Active Directory subscription, Compliance Manager helps you manage regulatory compliance within the shared responsibility model for Microsoft cloud services.

While you can view your overall compliance score and perform a number of other functions in the Microsoft Compliance admin center's **Compliance Score** page, you need to use Compliance Manager through the Services Trust Portal to first configure assessments specific to one or more data privacy regulations . Data from these assessments will then show up in Compliance Score for further viewing and filtering. 

Using the Compliance Manager interface, you can select one or more data privacy-related regulation templates, group them and assess and track required improvement actions across the set, as well as view information about the controls each regulation calls for specific to the target service, separated by Microsoft vs. customer-managed controls.

Assessments and improvement status selected here also appear in Compliance Score in the Microsoft Compliance Center, emphasizing the importance of the initial setup in Compliance Manager. This relationship is shown in the diagram below.
 
![Relationships of the Compliance Score in the Microsoft Compliance Center](../media/information-protection-deploy-compliance/information-protection-deploy-compliance-ui.png)

Here are the key steps to help you get started.

### 1. Assessment templates

From the Compliance Manager, the first step is to add "Assessments" specific to the data privacy regulations of interest and include in a defined "Data Privacy Regulations" group:

- [Groups](https://docs.microsoft.com/en-us/microsoft-365/compliance/working-with-compliance-manager?view=o365-worldwide#groups) are containers that allow you to organize Assessments and share common information and workflow tasks between Assessments that have the same or related customer-managed controls. When two different Assessments in the same group share customer-managed control, the completion of implementation details, testing, and status for the control automatically synchronize to the same control in any other Assessment in the Group. This unifies the assigned Action Items for each control across the group and reduces duplicating work. You can also choose to use groups to organize. Assessments by year, area, compliance standard, or other groupings to help organize your compliance work.
- Example setup for data privacy assessments. Here's an example set of five privacy-related regulatory assessment templates added to a group called "Data Privacy Regulations".

<!--
****
Include screenshots?
--> 
 
Notice the default dashboard view for each assessment template in the group, with varying scores for each, including "Customer Managed Actions" and "Microsoft Managed Actions".

### 2. Action items

Once the assessments have been added, you can view "Action Items" specific to each group (or individual regulation):

- **Improvement action list.** Navigate to the Action Items list and view the improvement actions associated across the regulations included in the group (many actions span regulations so a single list item may represent multiple). 
 
- **Improvement action filtering.** For many regulations and groups of regulations (such as those related to Data Privacy), the list of improvement actions can be quite large, so consider filtering the list using the filter drop down. For example, if you select "technical controls", the list will be reduced to just those which have a technical implementation in the organization, as many of the actions are related to administrative operations in various aspects of the business which are also documented in Compliance Manager. In this guide, we will focus on technical controls, so this filtering approach is recommended.
 
- **Additional information and review.** Next, for each action, you can click on the link to "Read More", which tells you more about the recommended activity (outside the context of the regulation) or "Review", which opens a form allowing you to do the following:
   - Assign the action to a someone in your organization (or yourself) to manage
   - Manage documents related to addressing the action
   - Specify status for the item
   - Specify implementation and test dates
   - Record additional information, implementation notes, and test plan notes for the subject action.
  
- **Marking non-applicable items as out-of-scope.** Note that some improvement actions included in the "Action Items" listing may not apply to your planned implementation, and you can specify that they are "out of scope" in Compliance Manager, thus removing the action and its evidence (or lack of evidence) from the calculation if they are not applicable. 

For example, if your organization has elected to use "Microsoft Managed Keys", then accordingly, a recommendation to "Use Customer Key" is not applicable to your implementation. In this scenario, your organization would mark it as "Not in scope" in the "Control Actions" for the applicable regulatory template.
 
### 3. Controls info

Reference: [Controls](https://docs.microsoft.com/en-us/microsoft-365/compliance/compliance-manager-overview?view=o365-worldwide#controls)

**Assessment-specific view.** View "Controls Info" for each assessment (regulation-specific) group - this provides an assessment (regulatory)-specific view (vs. the "Action Items" list, which provides a technical control specific view).
 
![Relationships ](../media/information-protection-deploy-compliance/information-protection-deploy-compliance-control.png)

Navigate to the **Controls Info** list and view the list of in-scope services for the regulation in question. 
 
**Regulation-specific control groupings.** For each service area, the list of actions are provided by control area. For each set of actions, the Compliance Manager provides more information on the action and may suggest or provide review options to assist the organization in choosing a control approach.
 
Note that this interface provides the capability to view details specific to the technical action, together with the status of actions related to the control, and supplemental context about the regulations to which the action is related.

### 4. Template download

For those more familiar with spreadsheet-based regulatory analysis, another approach is to download the template for each respective assessment using the "Templates" listing, as shown in the screenshot below. The downloaded templates list both the regulatory as well as technical control information for each template and may be easier for certain roles to navigate/filter and to generate business-specific views.
 
You can also add a new template customized for your organization based on an existing template, using the "+ Add Template" interface below. This requires that you download a template of choice (e.g. HIPAA/HITECH)), then modify it for your purposes and upload back into the Compliance Manager tool, where it will now drive assessments and scoring similar to other templates/assessments as part of the Compliance Manager/Compliance Score toolset.
 
>[!Tip]
>if dealing with a large number of regulations and/or overlapping improvement actions, consider downloading each respective template and combining the data sets, removing improvement actions or control types that do not apply to your organization, and re-uploading. This may be easier than navigating every Control info section and marking each as out of scope.
>

## Compliance Score

Once the assessments and review specifications are performed in Compliance Manager, you can now go to the Compliance Score tool and review the score and slice and dice the data further, including by control area.

### Getting started with Compliance Score

Reference: [Working with Compliance Score](https://docs.microsoft.com/en-us/microsoft-365/compliance/working-with-compliance-score?view=o365-worldwide)

The Microsoft Compliance Score tool in the Microsoft 365 Compliance admin center provides several approaches to review and filter compliance data that is fed from Compliance Manager and various Microsoft 365 services. This tool is automatically updated when various configuration settings are implemented. This shares "signals" with the Microsoft Secure Score, so many improvement actions will show up in both scores. 
 
The Compliance Score provides:

- A collected score, broken down by Microsoft vs. Customer-managed controls
- A rollup of improvement actions and completion status
- A listing of Microsoft 365 solutions impacting your score

From each of these, you can drill down into more detailed views, and you can select the "Improvement Actions", "Solutions" and "Assessments" views from the top navigation ("Improvement Actions" are explored further below).

### Compliance score by category and assessment

In addition, the bottom of the page provides a breakdown of your compliance score by compliance category and assessments, specifically (these just apply a filtered view of improvement actions).
 
### Improvement actions for data privacy

First, notice that many improvement actions are listed if all the regulations we selected in Compliance Manager (for data privacy) are included in the view. This large list can be filtered down, as we'll discuss further in a moment.
Second, notice that you can sort the list by category so that (for example) all the actions in the "Control Access" category are grouped together, etc.
 
Finally, you can filter the list down to a select view using the "Filters" feature in the Improvement actions navigation bar, which allows you to select options for each of the following: Regulations, Solutions, Groups, Test status, and Categories. 




### Filtering - Regulations

Continuing our example of an organization subject to California’s CCPA, The EU GDPR, United States HIPAA/HITECH and the LGPD from Brazil, since we specified these data privacy-related regulations in the Compliance Manager, you'll see those four listed in the filter pane shown below. If you only want to see improvement actions for a select few, select those in the filter.
 
### Filtering – Solutions

Multiple solutions may be involved in addressing data privacy regulations, so we'll leave all unselected for now.
 
### Filtering – Groups

In Compliance Manager, we created a group called "Data Privacy Regulations", so select that one in the admin UI to focus the view on data privacy regulations (only).
 
### Filtering - Test status

If using Compliance Manager to track compliance actions, you can specify test filter criteria using the check boxes provided.

### Filtering – Categories
Categories provide groupings of related controls (from a functional standpoint), and we will revisit certain ones in later articles in this series (namely, Control Access, Manage Devices, Protect Against Threats, Protect Information, Govern Information and Discover and Respond).
 
Note also that Compliance Score assigns a score (current status out of a potential 27, 9, 3 or 1 point(s)) to each improvement action, which get rolled up into an aggregate score. 

>[!Note]
>Many of the actions included in the "Improvement Actions" listing are of the non-technical (e.g. operational or documentation-oriented) Action Type, and a filter is not provided to view by action type in this listing (only in the "Solutions" listing or by viewing the downloaded template for an assessment from Compliance Manager).
>

### How the compliance score gets calculated

In short, the score is calculated based on a combination of Microsoft and customer-managed control implementations, as explained in more detail in the [Microsoft Compliance Score calculation article](https://docs.microsoft.com/en-us/microsoft-365/compliance/compliance-score-methodology?view=o365-worldwide).

Controls are assigned a score value based on whether they're mandatory or discretionary, and whether they're preventative, detective, or corrective. These collectively (as applied to a single control) represent the risk of not implementing it relative to other controls.
As presented in the above-referenced article, "preventative" controls get a higher score than "detective" and "corrective ones", and "mandatory" controls get a higher score than "discretionary" ones, as follows.
 
Note that the Compliance Score admin UI does not list these parameters, nor does it provide the ability to filter by them. However, if you download the associated template from the Compliance Manager tool, the resulting data set does list these parameters (for most regulations).

For technical controls, Compliance Score will automatically update the improvement action score once the related feature is activated (e.g. 27 points for MFA configuration). Other, non-technical control actions (i.e., those that are operational or related to documentation) need to be recorded manually in the Compliance Manager tool on the Services Trust Portal. 

You many also be implementing certain improvement actions for other purposes - e.g. using retention labels for reasons other than data privacy regulation compliance - so you would get credit for using such a feature even if for other purposes (i.e., not part of a deliberate compliance action).

Thus, your "Compliance Score" should be considered a relative measure to track improvement on a broad scale, and the goal of a "perfect score" should not necessarily be pursued. 

### Additional guidance

A few important tips are provided below re: the use of Compliance Score and Compliance Manager as part of your journey to achieve data privacy regulation compliance:

- Technical controls focus. Each data privacy regulation has a combination of technical controls, documentation specifications, and operational/process/reporting requirements, which all show up in the improvement actions. 

- This article focuses on a subset of the technical controls specified for data privacy in Compliance Manager/Score. Refer to the Compliance Manager tool and documentation for more information on related, non-technical administrative controls.

- To focus the view of improvement actions to your area of interest, you can filter by action type in the "Solutions" tab in the Compliance Score admin UI.

- The role of improvement actions as part of a broader compliance strategy. The relative importance and priority of improvement actions identified in Compliance Score should be considered as part of a broader risk review along with the data privacy risk you've determined your organization needs to manage. 

- Single improvement action across multiple, applicable regulations. If you are a global organization and you add multiple data privacy regulation templates into Compliance Manager (e.g. GDPR, CCPA, HIPAA-HITECH and/or LGPD) as "Assessments", Compliance Score will combine each applicable one in a field listing for each improvement action.
 
- Using filters for identified focus areas. Even with improvement action aggregation (across multiple regulatory requirements), if the regulation assessment templates for GDPR, LGPD, CCPA, and HIPAA-HITECH are selected, for example, almost 400 improvement actions will be listed in Compliance Score, which is a large number to tackle. To better rationalize this long list, use the improvement action filter to reduce the result set to a more manageable list.

- Use the Categories filter to group by technical area. The "Categories" filter provides a means to filter improvement actions by logical grouping, which articles 4-7 in this series generally align to. For example, the categories "Protect Information" and "Govern Information" are represented as separate articles in this series. 

- Direct vs. indirect. Finally, some of the controls listed in the improvement actions may be considered more directly tied to a specific regulatory article (e.g. ones that call specifically for encryption), while other controls may be more indirectly associated with the spirit of a regulation and are many times just things you should consider doing anyway (e.g. many of the identity and threat protection controls).


