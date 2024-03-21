---
title: Use Microsoft OneDrive LTI with Blackboard
author: MicrosoftHeidi
ms.author: heidip
manager: jacktremper
ms.reviewer: amitman 
ms.date: 03/02/2022
audience: admin
ms.topic: article
ms.service: microsoft-365-business
ms.collection: 
- m365initiative-edu
- tier2
ms.localizationpriority: medium
description: Create and grade assignments, build and curate course content, and collaborate on files in real time with the new Microsoft OneDrive Learning Tools Interoperability for Blackboard.
---

# Use Microsoft OneDrive LTI with Blackboard

Integrating Microsoft OneDrive LTI with Blackboard is a two-step process. The first step makes the Microsoft OneDrive LTI available within Blackboard courses, and the second step turns on Microsoft OneDrive for Blackboard.

> [!IMPORTANT]
> The person who performs this integration should be an administrator of Blackboard and an administrator of the Microsoft 365 tenant.

## Recommended browser settings

- Cookies should be allowed for Microsoft OneDrive.
- Popups shouldn't be blocked for Microsoft OneDrive.

> [!NOTE]
>
> - Cookies aren't allowed by default in the Chrome browser incognito mode and will need to be allowed.
> - Microsoft OneDrive LTI works in the private mode in Microsoft Edge browser. Ensure that you haven't blocked cookies (which are allowed by default).

## Register the OneDrive LTI 1.3 tool in Blackboard

1. From Blackboard's Administrator Panel, select **LTI Tool Providers**.
2. Select **Register LTI 1.3 Tool**.
3. In the Client ID field, type or copy and paste this ID: ``78cd1b1c-ccbd-4318-9f90-22241f63b1f5``

   > [!NOTE]
   > Adding this client ID will configure two different placements in Blackboard: one that allows access to the tool from the Content Market, Books and Tools, and the Rich text editor, and another which allows access to the tool from the Add Content menu in the course online for Ultra courses.

4. Select **Submit**.
5. Review all pre-populated settings in the **Tool Status** view, and make sure the **Tool Status** round button selected is **Approved**.
6. In **Institution Policies**, select the **Role in course** and the **Name** checkboxes in the user fields to send. All other user fields are optional, but it's recommended to leave them on to future proof your OneDrive installation.
7. **Allow grade service access** and **Allow membership service access** are also optional at this time but might be required for future updates to the LTI tool.
8. Copy the **Deployment ID**. You will need it to configure the Microsoft LTI Tool.
9. Select the **Submit** button to finish.

## Configure the Microsoft LTI Tool to work with Blackboard

1. Sign into the [Microsoft OneDrive LTI Registration Portal](https://onedrivelti.microsoft.com/admin).
2. Select the **Admin Consent** button and accept the permissions.

    > [!CAUTION]
    > If this step isn't performed, the following step will give you an error, and you won't be able to take this step for an hour once you've gotten the error.

3. Select the **Create new LTI Tenant** button.
4. On the LTI Registration page, choose **Blackboard** from the LTI Consumer Platform dropdown, and then select the **Next** button.
5. Paste the **Deployment Id** that you copied while registering the tool in Blackboard and select **Next**.
6. Review and save your changes. A message will be displayed upon successful registration.
7. Your registration details can also be reviewed by selecting the **View LTI Tenants** button on the home page.

After you complete these steps, your instructors will be able to open documents from OneDrive when they use the ‘plus' menu in the Course Content page.

## Recommended content

[Microsoft Integrations for Blackboard](https://help.blackboard.com/Learn/Administrator/SaaS/Integrations/Microsoft)

[Microsoft Teams Classes integration](https://help.blackboard.com/Learn/Administrator/SaaS/Integrations/Microsoft_Classes)
