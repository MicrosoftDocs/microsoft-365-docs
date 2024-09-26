---
title: "Get help and support for Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: crimora
ms.date: 12/13/2023
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-get-started
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to get help and support."
---

# Get help and support for Microsoft 365 Lighthouse 

Several options are available if you need help. First, check to see if there are any known issues:

- Review the current health of customer tenant services:

    1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Service health**. 
    2. View detailed information about current and past issues.

- Review the current health of the Lighthouse tenant services:

    1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.
    2. In the left navigation pane, select **Health** > **Service health**.
    3. In the list of services, find **Microsoft 365 suite**, and then expand it to show all the services in the suite.
    4. Find **Microsoft 365 Lighthouse** and check the health.

- See if the issue is listed in [Known issues with Microsoft 365 Lighthouse](/microsoft-365/lighthouse/m365-lighthouse-known-issues).

If you're experiencing an issue that isn't listed in any of these resources, then follow the instructions in this article to view self-help options or to create a service request.

## Before you begin

- To create and manage service requests, you must have at least one Microsoft Entra role assigned to you with the following property set: **microsoft.office365.supportTickets/allEntities/allTasks**. For a list of Microsoft Entra roles, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference). For information on how to assign roles, see [Assign Microsoft Entra roles to users](/azure/active-directory/roles/manage-roles-portal).

- If you need to create a service request, gather as many details as possible about your issue, such as diagnostic logs, tenant ID, and user IDs (if specific users are affected).

## Access help and support

1. In Lighthouse, select the **?** icon at the top of the portal or the **Help & support** widget in the lower-right corner of the portal to open the **Help** pane, and then do one of the following:
  
   - If you're on the page of the portal where the issue occurred, select **Show diagnostics**.

        This will create a JSON file with information to help Support agents troubleshoot your issue. Save the file so you can attach it to your service request.

        > [!NOTE]
        > The JSON file will contain personally identifiable information.

   - If your issue isn't isolated to the current page of the portal, go to the next step.

2. In the **Help** pane, select the **Help + support** button. This opens the **How can we help?** pane.

    > [!NOTE]
    > If the **How can we help?** pane doesn't open, you'll need to reach out to an admin in your partner tenant and ask them to help.

3. In the **How can we help?** pane, enter a description of your issue, and then press **Enter**. We recommend including the full product name *Microsoft 365 Lighthouse* in your description to ensure the search results include relevant help articles.

4. Check out the list of recommended articles to see if any of them help resolve your issue.

    If you enter a description of your issue and it doesn't return a list of help articles, rephrase your description and try another search.

5. If the recommended articles don't help, select **Contact Support**.

6. Fill out the information in the form, attach any screenshots and the JSON file that you saved in step&nbsp;1 if applicable, and then select **Contact me**. The expected wait time is indicated in the pane.

## Related content

[View tenant service health](m365-lighthouse-view-service-health.md)
[Known issues with Microsoft 365 Lighthouse](m365-lighthouse-known-issues.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[Troubleshoot and resolve problems and error messages in Microsoft 365 Lighthouse](m365-lighthouse-troubleshoot.md) (article)
