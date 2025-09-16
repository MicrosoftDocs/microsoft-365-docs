---
title: Manage custom skills
description: Learn how to modify and import or export custom skills.
author: kwekuako
ms.author: kwekua
ms.collection: operations-pod
manager: dansimp
ms.service: microsoft-365-copilot
ms.topic: article
ms.date: 05/29/2025
---

# Manage custom skills

If you didn't import custom skills as a part of your initial setup, you can add it later by following the steps mentioned in this article. You can also delete or export custom skills.

## View your custom skills 

If custom skills were imported during initial setup, follow these steps to view them:

1. Under **Skills,** select **People Skills Library,** and then select **Custom skills**. You can filter by role and search by skill name.

2. Select **View details** to see an overview of your imported files, who completed the import, and the import date.

## Import custom skills library

Follow these steps to either import your custom skills library for the first time or to reimport with changes to your initial custom import:

1. Under **Skills,** select the **Import custom skills** tab.

2. Select **Download library template** and **Download mapping template.**

3. Open the template files you downloaded. Follow the steps mentioned in [Custom skills files](/viva/skills/skills-get-started) to create your skills library and for mapping files.

4. Paste the file paths for both files into the **Skills library file path** and **Skill mapping file path** fields.

5. Select **Next** to begin file validation. If there's a problem with the file, you'll see an error message at this step.

6. Review your custom skills data.

   - The number of skills from the out-of-the-box library.
   - The number of skills and number of roles/job titles from your custom import.
   - The number of duplicate skills identified in your selection. If you have duplicates, your organization's custom data is prioritized over data from the out-of-the-box library.

7. Acknowledge that importing custom skills will immediately impact your users' experience if skills is turned on.

8. Select **Confirm** to import.

## Export your skills library

You can export the custom skills that you've set up in your skills library.

1. Under **Skills,** select **Export library**.

2. Select **Export custom skills** to export your custom skills imported files.

## Delete custom skills

Deleting custom skills immediately removes all of these skills from user experiences and deletes all data associated with those skills.

1. Under **Skills,** select **People Skills Library**, and then select **Custom skills**.

2. Select **Delete custom skills**.

3. Select **Delete** to confirm that you want to delete your custom skills.
