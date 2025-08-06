---
title:  Overview of People Skills
description: People Skills is an AI-powered service that creates personalized skill profiles for users, integrating with Microsoft 365 tools to enhance skills-based experiences.
author:  anibajaj 
ms.author:  anirudhbajaj
manager: dansimp
ms.service:  microsoft-365-copilot
ms.topic:  overview
ms.date:  07/18/2025
---

# Overview of People Skills

People Skills is an AI-driven service that uses state-of-the-art AI to generate personalized skill profiles for your users mapped to a customizable, built-in taxonomy. This service provides a data layer that fuels the Skills agent, and enhances Microsoft 365 Copilot, Microsoft 365, and Viva services with contextualized data and skills-driven experiences. 

People Skills:

- Equips leaders with critical workforce skill insights to prepare and accelerate their AI transformation.
- Empowers employees with personalized skill profiles and experiences to help them connect with others and discover opportunities.

For more information, see [how skills AI inferencing works](people-skills-ai-inferencing.md).

## Licensing

People Skills comes with your Microsoft 365 Copilot or Viva licenses and doesn't need a separate license. People Skills AI inferencing and experiences are based on a user's Microsoft 365 Copilot, Microsoft 365, Office 365, and Viva plans.

- **People Skills - Foundation service plan**: Customers with the "People Skills – Foundation" service plan (Microsoft 365 commercial customers without a Microsoft 365 Copilot license, excluding education and government) can access the People Skills service excluding AI inferencing and Microsoft 365 Copilot capabilities. Users with this service plan can search to add skills from your taxonomy or imported skills to create a skills profile using the Microsoft 365 profile editor.

- **People Skills - Advanced service plan**: Customers with the "People Skills – Advanced" service plan (including Microsoft Viva Suite, Viva Insights, Workplace Analytics and Feedback customers, and Viva Learning customers) can access the People Skills service with AI inferencing, excluding Microsoft 365 Copilot capabilities.

- **Microsoft 365 Copilot in Productivity Apps service plan**: Customers with the "Microsoft 365 Copilot in Productivity Apps service plan" can use People Skills, including AI-inferencing and related Copilot experiences, excluding education and government licenses.

## People Skills functionality access by license

For a detailed list of People Skills experiences and their corresponding license requirements, see the following table.

If you have questions about licensing or access, contact your Microsoft representative.

| Release | Functionality | Base SKU (ME3/ME5)* | M365 Copilot | Viva Suite | Viva Insights | Viva Learning |
| :---: | :--- | :---: | :---: | :---: | :---: | :---: |
| GA | Skills on M365 profile card | ✓ | ✓ | ✓ | ✓ | ✓ |
| GA | Skills editor in M365 profile editor | ✓ | ✓ | ✓ | ✓ | ✓ |
| GA | Skills in Traditional People Search (SharePoint people search) | ✓ | ✓ | ✓ | ✓ | ✓ | 
| GA | Skills in Org Explorer | ✓ | ✓ | ✓ | ✓ | ✓ |
| GA | Skills in People Companion | ✓ | ✓ | ✓ | ✓ | ✓ |
| GA | Ingress and egress of confirmed user skills | ✓ | ✓ | ✓ | ✓ | ✓ |
| GA | Taxonomy ingress | ✓ | ✓ | ✓ | ✓ | ✓ |
| GA | People Skills taxonomy (powered by LinkedIn) | ✓ | ✓ | ✓ | ✓ | ✓ |
| GA | Skills inferencing | ✕ | ✓ | ✓ | ✓ | ✓ |
| GA | Taxonomy egress | ✕ | ✓ | ✓ | ✓ | ✓ |
| GA | Editing out of the box taxonomy | ✕ | ✓ | ✓ | ✓ | ✓ |
| GA | Skills in M365 Copilot | ✕ | ✓ | ✕ | ✕ | ✕ |
| GA | Viva Learning - Skills based learning experience  | ✕ | ✓ | ✓ | ✕ | ✓ |
| Post GA | Skills agent | ✕ | ✓ | ✕ | ✕ | ✕ |
| Post GA | Copilot Analytics - Skill landscape report in Analyst Workbench | ✕ | ✓ | ✓ | ✓ | ✕ |
| Post GA | Copilot Analytics - Leader scenarios in M365 Copilot + agent | ✕ | ✓ | ✕ | ✕ | ✕ |


*People skills are available in the Microsoft 365 commercial public cloud, excluding EDU

## Where does People Skills data appear?

People Skills data appears in Microsoft 365 for employees, leaders, and organizations:  

- [Skills in the Microsoft 365 profile card](https://support.microsoft.com/office/explore-what-you-can-do-with-your-skills-0e8dd61c-89b9-42de-8e4d-7c606806cf40): Users can view and manage their skills with others directly from the profile card in Microsoft 365 to share their skills and learn more about others. People Skills is available today on the profile card in the new Outlook desktop for Windows, Outlook Web App, Microsoft 365 Copilot, Office.com, SharePoint, and People Companion, and will expand to other applications where you see the profile card in future releases.
- [Skills in Microsoft 365 Copilot](https://support.microsoft.com/office/overview-of-people-skills-988029ce-f749-4f99-a6f3-f2e4cef450ae): If you use Microsoft 365 Copilot, shared skills surface in people related queries in Copilot to help form connections and find people with the skills you need.
- **Skills in Org Explorer and People Companion**:  Tools like [Org Explorer](https://support.microsoft.com/topic/org-explorer-40c65909-b12d-4ab9-8d6c-a1592789dc8e) and [People Companion](/microsoft-365-apps/companions/people) help users quickly find the right person based on their shared skills data.
- [Skills in Viva Learning: ](https://aka.ms/Admindocupdate)Users can now manage skills they want to develop within Viva Learning, and receive personalized course recommendations based on those skills.
- [Skills in Copilot Analytics (Viva Insights)](/viva/insights/advanced/analyst/templates/skills-landscape): The Skills landscape report allows organizational analysts to discover top skills in their workforce, assess their distribution across groups, identify potential gaps, and explore related skill insights.
- **Skills for Leaders in Microsoft 365 Copilot** (coming soon): Copilot enables leaders to ask targeted or broad questions about their team’s skills and receive instant, data-driven answers.  
- **Skills Agent** (coming soon): The Skills agent helps employees and leaders explore, manage, and use organizational skills for personal growth and strategic planning. 

People Skills AI inferencing and experiences are based on a user's Microsoft 365 Copilot, Microsoft 365, Office 365, and Viva plan. Read more about [licensing in People Skills](#licensing).

## Sharing and management of skills data

Users can now manage and share their skills directly from the profile card in Microsoft 365. [Learn more about People Skills capabilities for users](https://support.microsoft.com/office/overview-of-people-skills-988029ce-f749-4f99-a6f3-f2e4cef450ae)

For more information on how to set up People Skills, and control how People Skills data is shared and managed, see [Set up skills](people-skills-setup.md) and [Manage your skills library](people-skills-manage-skills-library.md).

## User Profile Application (UPA) Skills

If your organization depends on skills data that appears in About Me on the Microsoft 365 profile card and editor (formerly in Delve), or on the skills field in the UPA API or Graph API, those skills are hidden from the Microsoft 365 profile card and editor when you deploy People Skills, and replaced with this new experience. 

People Skills migrates shared UPA user skills data to this new experience at a future date. 

When you deploy People Skills, skills from these other sources continue to be accessible to your users to edit. They can edit using the SharePoint user profile editor and surface in some experiences, such as Microsoft 365 Copilot chat and people search. 

We'll update this article with more information on handing your requirements for existing dependencies.

If you have an existing dependency on UPA skills or other solutions for ingesting skills into Microsoft 365 experiences, [let us know using this form](https://go.microsoft.com/fwlink/?linkid=2320998). We'll follow up with you to understand your requirements and discuss options.

