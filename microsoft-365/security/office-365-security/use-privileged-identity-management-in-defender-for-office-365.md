---
title: Use Privileged Identity Management (PIM) in Defender for Office 365.
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 08/09/2021
audience: ITPro
ms.topic: article

localization_priority: Priority
search.appverid:
  - MET150
ms.assetid: 56fee1c7-dc37-470e-9b09-33fff6d94617
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom:
  - seo-marvel-apr2020
description: Learn to integrate PIM in order to grant just-in-time, time limited access to users to do elevated privilege tasks in Microsoft Defender for Office 365, lowering risk to your data.
ms.technology: mdo
ms.prod: m365-security
---

# Privileged Identity Management (PIM) and why to use it in Microsoft Defender for Office 365

Privileged Identity Management (PIM) is an Azure feature that, once set up, gives users access to data for a limited period of time (sometimes called time-boxed period of time) so that a specific task can be done. This access is given 'just-in-time' to do the action that's required, and then revoked. PIM limits the access and time that user has to sensitive data, reducing exposure risk when compared to privileged administration accounts that have long-term access to data and other settings. So how do we use this feature (PIM) in Defender for Office 365?

> [!TIP]
> PIM access is scoped to the Role and identity level and allows completion of multiple tasks. It's not to be confused with Privileged Access Management (PAM) which is scoped at a Task level.

## Steps to use PIM to grant just-in-time access to Defender for Office 365 data

In this case the user had no long-standing, preexisting access to configuration data. By setting up PIM to work with Defender for Office 365, admins create a process for a user to request access to take the actions they need. The user must *justify* the need for the elevation of their privileges. This user will be a compliance team member who, at the end of an eDiscovery investigation, needs to export data from a tenant.

> [!NOTE]
> For a quick review of Customer Lockbox and Privileged Identity Management see [this video](https://www.youtube.com/watch?v=30_igb5r1eE).

***Step 1***. In the Azure PIM console for your subscription, add the user to the Azure Security Reader role and make sure it uses multifactor authentication.

1. Browse to https://azure.portal.com and under **Manage** > **Roles**.
2. Select **Security Reader** in the list of roles and then **Settings** > **Edit** > and **Azure MFA** under 'On activation require'.
3. Uncheck **Require justification on activation**' > **Update**.
4. Select **Add Assignments** > **No member selected** > select or type the name to search for the correct member.
5. Click the **Select** button to choose the member you need to add for PIM privileges > click **Next** > make no changes on the Add Assignment page (both assignment type *Eligible* and duration *Permenantly Eligible* will be defaults ) and **Assign**.

The name of your user (here 'Alex') will appear under Eligible assignments on the next page, once the role is assigned to the user. Also note that the Security Reader settings are specific about the length of the activation duration here.

:::image type="content" source="../../media/pim-mdo-role-setting-details-for-security-reader-show-8-hour-max-activation.PNG" alt-text="Be sure you scan the settings for the Security Reader role in Privileged Access Management. Here you'll see the PIM activation's max duration is 8 hours.":::

***Step 2***. In Azure *All services* for your subscription, activate the PIM security reader role and validate the activation. 

1. You'll find the location by going to Activate on the quicklaunch > Azure AD roles > and then Eligible assignments (you may have to refresh).
2. Click **Activate** for the Security Reader role you added Alex to in Step 1.

:::image type="content" source="../../media/pim-mdo-azure-ad-roles-activate-security-reader-and-validate-activation.PNG" alt-text="In the Azure 'All services', PIM service view for your subscription, under Activate, click Azure AD roles. Click the link to activate the Security Reader role you made and added Alex to in Step 1.":::

Now, because the user (Alex) signed in using multifactor authentication, MFA isn't required during PIM activation. The user can be up and running in seconds, hunting for threats through an 8 hour window.

## How to add the Search and Purge role assignment in PIM

Security reader can find email threats, but can't take action on them without having a Role called **Search and Purge**. Admins may have had reports of this message before:

:::image type="content" source="../../media/pim-mdo-add-the-search-and-purge-role-assignment-to-this-pim-role.PNG" alt-text="If the user we added (Alex) through the Security Reader PIM role tries to delete a suspicious email he'll get a message saying 'You need the Search and Purge role to take action on this email. Contact your administrator to get the role assignment or add the email to an incident.":::

Permanent assignment of the Search and Purge Role doesn't hold with the Zero Trust security initiative, but PIM can be used to grant just-in-time access here too.