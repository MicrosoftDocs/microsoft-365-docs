--- 
title: 'Using Projects with Microsoft Defender Threat Intelligence (MDTI)'
description: 'Learn how to manage projects using Microsoft Defender Threat Intelligence (MDTI).'
author: alexroland24
ms.author: aroland
manager: dolmont
ms.service: threat-intelligence 
ms.topic: how-to 
ms.date: 08/02/2022
ms.custom: template-how-to 
---

# Using projects

The Microsoft Defender Threat Intelligence (Defender TI) platform allows users to develop private personal or team project types for organizing indicators of interest and indicators of compromise from an investigation. Projects contain a listing of all associated artifacts and a detailed history that retains the names, descriptions, collaborators, and monitoring profiles.

When a user searches an IP address, domain, or host in Defender TI, if that indicator is listed within a project the user has access to, the user can select the Projects blade within the Intelligence section and navigate to the details of the project for more context about the indicator before reviewing the other data sets for more information. Alternatively, users can view their private team projects by selecting the Projects icon on the left-hand menu pane.

Visiting a project's details shows a listing of all associated artifacts and a detailed history that retains all the context described above. Users within the same organization no longer need to spend time communicating back and forth. Threat actor profiles can be built within Defender TI and serve as a "living" set of indicators. As new information is discovered or found, it can be added to that project.

The Defender TI platform allows users to develop multiple project types for organizing indicators of interest and indicators of compromise from an investigation.

The owner of a project can add collaborators (users listed in their Azure tenant with a Defender TI Premium license). This grants the collaborator(s)’ permissions to make any changes to the project as if they were the owner of the project. The exception being that collaborators cannot delete projects. Collaborators will view projects that have been shared with them in the Shared Projects section of the Projects Home Page.

Users can also download artifacts within a project by selecting the download icon. This is a great way for threat hunting teams to use their findings from an investigation to block indicators of compromise or build additional detection rules within their SIEM.

**Questions Projects May Help Answer:**

- Has one of my fellow team members created a Team project that includes this indicator?

   - If so, what other related indicators of compromise has this team member captured and what description as well as tags did they include to describe the type of investigation?

- When did this team member last edit the project?

    ![Projects Detailed Project Chrome Screenshot](media/projectsDetailedProjectChromeScreenshot.png)

## Prerequisites

- An Azure Active Directory or personal Microsoft account. [Login or create an account](https://signup.microsoft.com/)
- A Microsoft Defender Threat Intelligence (Defender TI) Premium license.
    > [!NOTE]
    > Users without a Defender TI Premium license will still be able to log into the Defender Threat Intelligence Portal and access our free Defender TI offering.

## Open Defender TI’s Threat Intelligence Home Page

1. Access the [Defender Threat Intelligence Portal](https://ti.defender.microsoft.com/).
2. Complete Microsoft authentication to access portal.

## Creating a Project

Users can create a project in two different ways, through the Projects Home Page or while investigating results.

When logging into the Defender TI Projects Home Page, users are presented with a dashboard showing projects they own or that have been shared with other Defender TI users in their tenant. Directly from this view, users can decide to create a new project, simply by selecting the "+" icon or visit the project page using the left-hand drawer menu.

1. To create a project from the Project Home Page, navigate to the ‘Projects’ icon and select the ‘Add New Project’ icon within the Projects Home Page.

    ![Add to Project](media/projectsAddProject.png)

    When conducting searches within Defender TI, users can select ‘Add to Project’ to add the artifact (indicator of compromise) to an existing project or create a new project to add the artifact to.

2. To create a project through an investigation, perform an indicator search from the Threat Intelligence search bar and click on the ‘Add to Project’ icon.

3. If creating a new project, select the ‘Add New Project’ link, fill in the required fields and ‘Save’ your new project. If you already have an existing project you would like to add the artifact to, please select or scroll down and select the project you want.

    ![Add New Project](media/projectsAddNewProjectDetails.png)

## Managing Projects

Once a user has created projects, they can manage them inside of the Projects portion of the platform. The initial Project Home page highlights all the projects the user can see and provides filtering methods based on project properties. The Project Home page defaults to the Team projects associated with Defender TI users in their tenant. They have the option to select any personal projects they have created as well as projects that have been shared with them to contribute to.

![Managing Projects](media/projectsHomePage.png)

1. Users can view the details of a project simply by clicking on the project name.
2. Depending on the level of access, users can then make changes to the project directly by clicking the edit button in the top right corner.
3. Users may also delete a project if they are the owner of the project. They can also choose to manually add artifacts using the "Add Artifacts" button in the top right corner.

## Best Practices

When it comes to using Defender TI to investigate potential threats, we recommend executing the following workflows as these steps will enable you to gather strategic and operational intelligence before diving into tactical intelligence.

Users can perform various types of searches within Defender TI. As such, it’s important to approach your intelligence gathering method in a way that presents you with broad results before diving into investigating specific indicators. For example, if you search an IP address against the Defender TI Home Page, what articles have an association with that IP address? What information do these articles present about the IP address that you wouldn’t otherwise find navigating directly to the IP address’ Data tab for dataset enrichment. For example, has this IP address been identified as a possible C2, who is the threat actor, what other related indicators of compromise is listed in the article, what TTPs is the threat actor using and who are they targeting?

In addition to performing various types of searches with Defender TI, users can collaborate on investigations together. That said, users are encouraged to create projects, add indicators related to an investigation to a project and add collaborators to a project if more than one person is working on the same investigation. This helps reduce time spent analyzing the same IOCs and should result in a quicker workflow observed.