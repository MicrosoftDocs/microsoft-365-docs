---
title: Overview of Microsoft Viva Learning
ms.author: daisyfeller
author: daisyfell
manager: pamgreen
ms.reviewer: chrisarnoldmsft
ms.date: 
audience: admin
ms.topic: article
ms.service: 
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-viva-learning
ms.localizationpriority: medium
description: Learn about Microsoft Viva Learning in your Microsoft 365 environment.
---

# Overview of Microsoft Viva Learning

Viva Learning is a centralized learning hub in Microsoft Teams that lets you seamlessly integrate learning and building skills into your day. In Viva Learning, your team can discover, share, recommend, and learn from content libraries provided by both your organization and partners. They can do all of this without leaving Microsoft Teams.

   <!--![Screenshot of the Viva Learning homepage in Teams.](../media/learning/learning-home-teams.png)-->

Viva Learning makes it easy to create learning and growing opportunities for your organization without the need to step away from the communication tools you already use.

## Learn while working

### Everyone

Viva Learning makes it easy to incorporate learning into your day. When you open Viva Learning in Microsoft Teams, you’ll see a personalized view of learning content from both your organization and partners such as LinkedIn Learning. As you continue to search for and complete more training, your recommended content will update to reflect your interests.

- Easily find learning opportunities provided by your organization.
- Browse courses from Microsoft and third-party content providers.
- Search for specific learning content that appeals to you or supports your career goals.
- Share relevant, interesting, and important learning content with your team members or groups in a Microsoft Teams chat or channel.
- Organize your custom selections of learning content in Microsoft Teams channels and tabs.
- Bookmark courses you’re interested in.
- Play LinkedIn Learning courses in the embedded player without leaving Microsoft Teams.

### Managers

Keep your team engaged and up to date with necessary skills without the need to coordinate learning across platforms. You can recommend learning content to individuals, share content with your team, and track the reported completion status of learning you’ve recommended.

## Admin roles

Viva Learning is by default available in Teams with default seeded content. To set up learning content sources in Viva Leaning and manage individual licensing, you'll need these permissions:

- Microsoft Teams admin
- Microsoft 365 global administrator or SharePoint administrator
- Knowledge admin

### Knowledge admin

The knowledge admin is a new Azure Active Directory (Azure AD) role in the Microsoft 365 admin center that can be assigned to anyone in the organization. This role manages the organization’s learning content sources through the Microsoft 365 admin center. For more information, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference#knowledge-administrator).

The knowledge admin should be moderately technical and have existing SharePoint administrator credentials. The knowledge admin should be well versed in the education, learning, training, or employee experience part of the organization.

#### Learning content sources

Content from Microsoft Learn and Microsoft 365 Training is automatically available in Viva Learning. You'll also have free access to the 125 free courses from LinkedIn Learning. In addition, Viva Learning can integrate with select third-party content providers. Refer to “Manage Learning Content sources” for more details on setup. 

## Get started

When you’re ready to set up and configure Viva Learning in your Microsoft 365 environment:

- Use the Microsoft Teams admin center to [manage Viva Learning across your organization](set-up-viva-learning.md).
- Use the Microsoft 365 admin center to [configure learning sources available to specific groups](content-sources-365-admin-center.md).
- Use the SharePoint admin center to [manage and store your own learning content](configure-sharepoint-content-source.md).

## Supported languages

Viva Learning does not currently support right-to-left languages.

## Data and Privacy

Viva Learning data residency is tenant specific and follows the standard Microsoft 365 data storage guidelines by available geography. For more information, see [Where is my Microsoft 365 customer data stored](/microsoft-365/enterprise/o365-data-locations).

Integration with SharePoint is currently only supported for sites hosted from the home geography of the tenant. For example, a French tenant can only link SharePoint sites hosted in France to Viva Learning.

Data stored from Viva Learning includes:

- Learning object content metadata such as title, description, author, and language
- User data (bookmarks, recently viewed, recommended courses, assigned courses, completion records)
- Required service data (error logs)
- Diagnostic data usage

>[!NOTE]
>Admins can turn storage of diagnostic data on or off.
