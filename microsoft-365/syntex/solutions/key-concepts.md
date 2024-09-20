---
title: Key concepts
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: rammenon
ms.date: 09/20/2024
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
description: Learn how to get started with the SharePoint Agreements AI solution.
---

# SharePoint Agreements AI - Key concepts

SharePoint Agreements AI is an end-to-end solution that gives you the flexibility to easily manage agreements across your organization. Workspaces, Categories, Templates and Sections are four essential concepts that can help you organize and manage your agreements.

**Workspaces** allow you to organize and manage agreements across your organization. When you create a workspace, a SharePoint site is created and is assigned to the workspace. You can create a workspaces for business processes or departments in your organization that manages agreements. For example, you can have one workspace for your procurement team, and another one for your human resources team. Agreements, templates and other files exist within the workspace and are stored in the corresponding SharePoint site. Roles are assigned to users at a workspace level, and permissions can be managed at a workspace level. 

**Categories** are used to group agreements with similar intent within a workspace. For instance, a procurement department workspace might have categories such as purchase agreements and sales agreements, while a human resources workspace might have categories for full-time employment agreements, part-time employment agreements, etc. Categories help organize agreements efficiently, ensuring that related agreements are easily accessible and manageable within the appropriate context of a workspace.

**Templates** serve as a predefined structure that standardizes the creation of documents and agreements. It ensures consistency and uniformity across various documents within the workspace, streamlining the creation process and reducing the likelihood of errors. Templates can include specific sections, formatting, and content guidelines that align with the organization's requirements and branding.

**Sections** are reusable blocks of content that ensure the use of consistent language across your agreements. You can define a section and use it across multiple templates. For example, you may have a section for privacy clause or payment terms for your purchase agreements, while you can have a section for relocation package for your full-time employee templates. 

For example, if you have a standard privacy clause to be included in all statement of work agreements, then you can create a section and insert it into all templates under the category of Statement of Work.

## Roles

Roles are assigned at a workspace level. Currently, SharePoint Agreements AI supports the following roles  :
1.	**Workspace owner** – these users own the workspace. They are responsible for managing categories, templates and roles, and have access to all agreements created within their workspace. 
2.	**Workspace member** – these users are part of the workspace. They can manage sections and templates and have access to all agreements within their workspace. They cannot manage categories nor roles.
3.	**Template manager** – these users can manage templates but will not have access to all agreements within the workspace. They can read and use sections in their templates and will only have access to those agreements they create or are explicitly shared with them.

### Managing roles:
Workspace owners can manage the above roles in their workspace through the Agreements app in Teams. Go to the Setup & access tab in the agreements app, and then navigate to the Roles page. Here, you can see and manage the list of users assigned to the above roles
![A screenshot of Agreements app showing the role management page.](../../media/content-understanding/agreements-roles.png)

> [!NOTE]
> To give other users access to generate agreements from published templates, share the template with at least read only privileges with the users. They can create agreements from published templates shared with them and will only have access to agreements in the workspace that they create or are shared with them. 

