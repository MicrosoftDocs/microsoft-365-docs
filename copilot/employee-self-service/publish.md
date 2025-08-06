---
title: Publish the Employee Self-Service agent to your organization
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 7/3/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
robots: NOINDEX, NOFOLLOW
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn about the last step in the deployment process for the Employee Self-Service agent.
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Publish the Employee Self-Service agent to your organization

>[!NOTE]
>The Employee Self-Service agent is currently in limited public preview. Deployment processes are subject to change before this product becomes generally available.

Publishing the Employee Self-Service (ESS) agent makes it available to your users. Currently, the ESS agent supports publishing to Copilot Business Chat.

|Role |Activities to perform |Configuration area |
|-----|----------------------|-------------------|
|Environment Maker/ Owner of the ESS agent |- Deploy customization solution to target environment</br> - Set up authentication</br> - Publish ESS agent |Microsoft Copilot Studio |
|Administrator |- Approve the ESS publish request</br> - Deploy it to selected users |Microsoft admin center |
|Business stakeholders/ champions |Identify test users |N/A |

## Deploy customization solution to TEST / UAT / PROD as Managed Solution

Terms to know:

**UAT** - User acceptance testing
**PROD** - Production

1. Go to the **Solutions** page in Copilot Studio.
1. Select the ellipsis (**...**) and choose **Export Solution** for the preferred solution that you set when preparing environments.
1. Before you export the solution, it needs to be published or deployed using the Azure DevOps CI/CD pipelines. This article covers the manual publishing option. See [the Power Platform documentation](/power-platform/alm/pipelines) to understand the Azure DevOps CI/CD pipeline deployment.
1. Select **Publish** to publish all customizations.
1. Select **Next** to export the solution.
1. Specify the version number. We recommend you export as **Managed** if the solution deploys to another nondev environment.
1. You can see the export status on the **Solutions** page. The status banner updates when the export completes.
1. Select **Download** to download the exported solution and save it in a preferred folder.

>[!IMPORTANT]
>[No edits are allowed in the downloaded package, as they cause the upload to fail.]

9. Choose the desired Power Platform environment to deploy and test this exported solution.
10. Ensure all the dependencies required for customization are already available in the target environment. If the dependencies aren't available, imports fail. The following dependencies need to be installed in the desired environment:
    1. ESS agent
    1. Any third-party ISV packages used in customization
11. Select **Solutions** options from the left navigation pane within the Power Platform environment you selected.
12. Select the **Import Solution** option to import the file you downloaded in step 9.
13. Select the downloaded file using the **Browse** button in the right pane.

## Set up authentication

The ESS agent is designed to run on Teams channels and Microsoft 365 Copilot channels.

>[!IMPORTANT]
>Microsoft 365 Copilot channel isn't available for the ESS agent while using options other than **Authenticate with Microsoft**.

By default, the ESS agent uses Microsoft Entra authentication. Therefore, the default option is **Authenticate with Microsoft**.

If your organization needs to use a different identity provider than Microsoft Entra, then you need to choose the **Authenticate manually** option and provide the following information:

- Service provider
- Client ID
- Client secret
- Token exchange URL (required for single sign-on)
- Tenant ID

## Publish the ESS agent

>[!NOTE]
>If your organization's Teams app deployment has its own application lifecycle management/ DevOps process in place for deploying and testing new apps, you can side-load apps into the Teams app store using the **Download.zip** option. Consult your organization's Teams app deployment policies and work with your Teams administrators.

1. Open the **Employee Self-Service** agent in Copilot Studio.
1. Verify the customizations from the imported solution are in place.
1. Select **Channels** in the top navigation bar.
1. Choose **Microsoft Teams**.
1. Select **Edit details** in the details pane for Microsoft Teams. Then check **Make agent available in Microsoft 365 Copilot.**
1. Select the **Availability options** button. Then choose whether to share the agent to everyone in your organization or only to a specific set of users. We recommend you start with a small group of pilot users who can test and provide feedback on the configurations.
1. Choose whether to send email invitations to selected users. You can also choose to show users that this agent is built within Power Platform.
1. Select **Submit for admin approval** to send the ESS Agent Teams app to your administrator.
1. Confirm your submission.

## Approve the ESS agent in Integrated apps as an admin

Approval is the final step to deploy the ESS agent to your users through Integrated apps.

1. Sign in to the Microsoft admin center as an administrator with access to Integrated apps.
1. Select **Integrated apps** under **Settings**. You see a notification to approve the published agent.
1. Select **Review request**.
1. Select the appropriate actions to publish the ESS agent.
1. Confirm publish or update for the app.
1. Select the **Employee Self-Service agent** from the list of Integrated apps.
1. Select **Deploy app**. Then choose the set of users you want to deploy the app to.

## Workaround if publishing takes more than 48 hours

1. Follow the steps until #6 in the [Publish the ESS agent](#publish-the-ess-agent) section.
1. Use the **Download.zip** option to download the agent manifest.
1. Follow the steps until #2 in the [Approve the ESS agent in Integrated apps section](#approve-the-ess-agent-in-integrated-apps-as-an-admin).
1. Upload the download manifest file from the previous step and follow the rest of the process in the Approve the ESS agent in Integrated apps as an admin section.

## Publishing checklist

|Role              |Verification steps |Result |
|------------------|-------------------|-------|
|Environment Maker |1. Use the **Copy link** option to get the link to the ESS agent. </br>2. Paste the link into a browser. </br>3. This link redirects to the Teams interface for the ESS agent, which provides a link for Microsoft 365 Copilot Chat. </br>This action is an option to mitigate any publishing lags. |Pass/Fail |

You need to follow the publishing steps again if any of these steps fail.

## Uninstall the ESS agent

Follow these steps if you need to delete the ESS agent:

1. Sign in to Copilot Studio.
1. Select the environment where ESS is installed and needs to be uninstalled.
1. Select **Agents** from the left navigation.
1. Select **Employee Self Service (Preview)**.
1. In the ESS agent page, select the ellipsis (**...**) in the upper right pane next to **Test**.
1. Select the **Delete** option from the dropdown.
1. A popup window appears directing you to Power Apps Solutions.
1. Select **Go to Power Apps Solutions**.
1. Identify the **Preferred solution** that you set up during the [installation](install.md) stage for saving customizations in the agent.
1. In the solutions page, select the vertical ellipsis in the context menu and choose **Delete**.
1. Choose **Delete** in the confirmation dialog.
