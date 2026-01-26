---
title: Import or export People Skills
description: You can import skills for a user from third-party platforms and export a user's confirmed skills using the Microsoft Graph API.
author: kwekuako
ms.author: kwekua
ms.collection: operations-pod
manager: scotv
ms.service: microsoft-365-copilot
ms.topic: concept-article
ms.date: 05/29/2025
---

# Import or export People Skills

You can import skills for a user from third-party platforms and export a user's confirmed skills using the Microsoft Graph API. Also, you can export a user's confirmed skills.

## Import user skills

You can import user skills from third party systems. The imported skills display on that user's skills profile as *Imported by your organization* and can be confirmed by a user. Once confirmed, imported skills behave the same as all confirmed skills.

User skills from external systems can be imported as an attribute while uploading organizational data into Microsoft 365.



Review the below guideline on how you can use the tool to import user skills:

1. Open the [Organization data ingestion tool](/viva/import-orgdata) in the admin center and download the .csv template. In the admin center, click **Setup** > **Migration and imports**.

2. In the organization data ingestion tool template, list all the users for whom you need skills to be imported, and list each user's skills under the attribute **Microsoft_UserSkillNames**. For more information, see [organization data field in the template](/viva/orgdata-attributes).

    > [!NOTE]
    > The skill names in attribute **Microsoft_UserSkillNames**, need to exactly match the English translation of the skill names that exist in your skills library. Your skills library consists of the out-of-the-box library and the optional custom skills library.

3. Make a copy of all the user skills and add them to People Skills library as custom skills. For more information, see [how to add custom skills](people-skills-manage-custom-skill.md).

4. Import the user skills data into Microsoft 365 using the .csv upload.

## Export user skills

Admins can export a user's confirmed skills by using the Profile endpoint in the Microsoft Graph API. For more information, see [List skills](/graph/api/profile-list-skills?view=graph-rest-beta&tabs=http&preserve-view=true) about the skills endpoint and specific GET requests to access this data from the Microsoft Graph API.

> [!NOTE]
> Only a user's confirmed skills can be exported. AI-generated skills can't be exported.

## Export **Custom** or **Default** Skills Library

1. Go to the Microsoft Admin Center > [Manage Skills](https://admin.cloud.microsoft/?#/viva/manage-skills).
2. Select **Export library**
3. Select to either export a Custom, Default or both libraries

Exporting libraries can be useful if you would like to source control your library in an external tool.

> [!NOTE]
> Only **People Skills - Advanced** Service Plan customers will be able export the **Default** Skills library.
>
> You must have already imported a **Custom** Skills library to be able to export it.

## Import **Custom** Skills Library
See the [step by step guide.](./people-skills-manage-custom-skill.md)
