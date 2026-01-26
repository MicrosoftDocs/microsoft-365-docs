---
title: Manage AI-restricted skills
description: Learn about the type of skills that admins can note as AI-restricted.
author: kwekuako
ms.author: kwekua
ms.collection: operations-pod
manager: scotv
ms.service: microsoft-365-copilot
ms.topic: how-to
ms.date: 05/29/2025
---

# Manage AI-restricted skills

Admins can mark certain skills as AI-restricted, such as the skills that might be considered as confidential or sensitive in nature. These skills can be related to specific projects, proprietary technologies, or other areas that an organization might want to exclude from being used in AI based skill inferencing.

AI restricted skills won't be suggested to users in your tenant. Our inference engine ensures that any AI restricted skills identified by the admin will be updated and removed from user profiles within 24 hours. However, a user is able to manually add any skill from taxonomy to their profile, including AI restricted skills.

To mark skills in the default library as AI-restricted, follow these steps:

1. Select **Skills** and select **People Skills Library**.

2.  Select one or more skills that need to be tagged as AI-restricted using the check box.

3. On the window pop-up, select **Add AI restricted tag**.

    :::image type="content" source="media/people-skills-inferencing/ai-restricted-tag-selection.png" alt-text="Screenshot of the People Skills library displaying the selection of AI restricted tag." lightbox="media/people-skills-inferencing/ai-restricted-tag-selection.png":::

    - To view all skills tagged as AI restricted in your skills library, you can use the **AI restricted** filter.
     :::image type="content" source="media/people-skills-inferencing/all-ai-restricted-skills.png" alt-text="Screenshot displaying all AI restricted tags and filter options." lightbox="media/people-skills-inferencing/all-ai-restricted-skills.png":::
    - To remove a skill as AI-restricted, select the skill and select the **Remove AI-restricted tag**.
     :::image type="content" source="media/people-skills-inferencing/remove-ai-restricted-skills.png" alt-text="Screenshot displaying how to remove AI restricted tag from the pane." lightbox="media/people-skills-inferencing/remove-ai-restricted-skills.png":::