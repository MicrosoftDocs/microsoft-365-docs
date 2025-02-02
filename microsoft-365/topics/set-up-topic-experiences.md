---
ms.date: 09/03/2024
title: Set up and manage Topics
ms.author: daisyfeller
author: daisyfell
manager: elizapo
ms.reviewer: daisyfeller
audience: admin
ms.topic: install-set-up-deploy
ms.collection:
  - m365initiative-viva-topics
  - highpri
  - Tier1
  - essentials-get-started
ms.service: viva-topics 
search.appverid:
- MET150  
ms.localizationpriority:  medium
description: Learn how to set up Topics and manage your settings.
---

# Set up and manage Topics

> [!NOTE]
> Topics will be retired on February 22, 2025. [Learn more about the changes coming to Topics.](changes-coming-to-topics.md)

You can use the Microsoft 365 admin center to set up and configure [Topics](topic-experiences-overview.md).

It's important to plan the best way to set up and configure topics in your environment. Be sure to read [Plan for Topics](plan-topic-experiences.md) before you begin the procedures in this article.

You must be [subscribed to a license that includes Topics](https://www.microsoft.com/microsoft-viva/topics) and be both SharePoint administrator and groups administrator to access the Microsoft 365 admin center and set up Topics.

> [!IMPORTANT]
> If you have configured SharePoint to [require managed devices](/sharepoint/control-access-from-unmanaged-devices), you must set up Topics from a managed device.

## Assign licenses

You must assign licenses for the users who will be using Topics. Only users with a license can see information on topics including highlights, topic cards, topic pages and the topic center.

To assign licenses:

1. In the Microsoft 365 admin center, search for **Users**, and select **Active users**.

2. Select the users that you want to license, and select **Manage product licenses**.

3. Under **Licenses**, select **Viva Topics**.

4. Under **Apps**, make sure **Graph Connectors Search with Index (Viva Topics)** and **Viva Topics** are both selected.

   > [!div class="mx-imgBorder"]
   > ![Microsoft Viva Topics licenses in the Microsoft 365 admin center.](../media/topics/topic-experiences-licenses.png)

5. Select **Save changes**.

It may take up to an hour for users to get access to Topics after the licenses are assigned.

Note that users must also have an Exchange Online license to use Topics.

## Set up Topics

> [!NOTE]
> The first time topic discovery is enabled, it may take up to two weeks for all suggested topics to appear in the Manage Topics view. Topic discovery continues as new content or updates to content are made. It is normal to have fluctuations in the number of suggested topics in your organization as Viva Topics evaluates new information.

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Setup**.

2. Under **Files and content**, select **Connect people to knowledge with Viva Topics**.

3. This will take you to the Viva Topics admin page. Choose **Deploy Topics in 2 steps** to enable Topics for your organization. This will bring up the setup pane.

    ![Screenshot of the Setup page.](../media/knowledge-management/mac-setup-2.png)

>[!NOTE]
>When you set up Topics, some settings will be chosen by default. You can [change these settings after you complete your setup.](#manage-topics). [Learn more about why some settings are recommended by default](plan-topic-experiences.md).

### Choose SharePoint sites

![Screenshot of the SharePoint setup page.](../media/knowledge-management/set-up-sharepoint.png)

1. Choose which SharePoint sites Topics can source information from.
    - **All sites**: All SharePoint sites in your organization. This includes current and future sites.
    - **All, except selected sites**: Type the names of the sites you want to exclude.  You can also upload a list of sites that you want to opt out from discovery. Sites created in future will be included as sources for topic discovery.
    - **Only selected sites**: Type the names of the sites you want to include. You can also upload a list of sites. Sites created in the future won't be included as sources for topic discovery.
    - **No sites**: Do not include any SharePoint sites.

2. Then choose **Next**.

### Create your topic center

![Screenshot of the topic center setup page.](../media/knowledge-management/set-up-topic-center.png)

On the **Topic center** page, you can create your topic center site where users can view topic pages and manage topics.

1. Under **Site name**, enter a name for your topic center.

2. Enter a description for your topic center.

3. Choose your preferred language for the topic center. It's recommended to use the same language as your organization's default language.

    >[!IMPORTANT]
    >You can't change your topic center language once you've saved these settings.

4. Choose **Next**.

### Review and finish

Review the settings you've chosen. Once everything is correct, choose **Finish**. You can manage your settings later by going back to your Topics setup page and choosing **Manage Topics**.

Note that topics won't show up for your users immediately. You can monitor the number of topics found in your [analytics page](topics-analytics.md).

By default, the only person who can manage Topics for your organization is the admin. You can change this setting by following the steps to [manage topics](#manage-topics) and going to the [**Topic permissions**](#topic-permissions) section.

## Manage topics

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Setup**, and then choose **Microsoft Viva**.

   ![Screenshot of the Microsoft Viva setup card.](../media/topics/viva-setup.png)

2. Select **Viva Topics**.

   [![Screenshot of the Viva admin page.](../media/topics/viva-new-admin.png)](../media/topics/viva-new-admin.png#lightbox)

3. This will take you to the Viva Topics admin page. Choose **Manage Settings**.

>[!IMPORTANT]
>Default settings are noted with an asterisk (*).

### Topic discovery

On the Topic discovery page, you'll choose how Viva Topics sources and identifies topics.

1. In the **Select SharePoint topic sources** section, select which SharePoint sites will be crawled as sources for your topics during discovery. Choose from:
    - **All sites**: All SharePoint sites in your organization. This includes current and future sites.*
    - **All, except selected sites**: Type the names of the sites you want to exclude.  You can also upload a list of sites that you want to opt out from discovery. Sites created in future will be included as sources for topic discovery.
    - **Only selected sites**: Type the names of the sites you want to include. You can also upload a list of sites. Sites created in the future won't be included as sources for topic discovery.
    - **No sites**: Do not include any SharePoint sites.

2. Select **Save**.

3. In the **Select data connection sources** section, choose any additional sources you want Viva Topics to source topics from. [Learn more about eligible connection sources](/microsoft-365/knowledge/manage-topics).
No data sources are selected by default.

4. In the **Exclude topics by name** section, you can add names of topics you want to exclude from topic discovery. Use this setting to prevent sensitive information from being included as topics. The options are:
    - **Don't exclude any topics***
    - **Exclude topics by name**
      1. To exclude topics by name, download and fill out the CSV file with the topics you want excluded.
      1. In the CSV template, enter the following information about the topics you want to exclude:
         - **Name**: Type the name of the topic you want to exclude. There are two ways to do this:
            - Exact match: You can include the exact name or acronym (for example, *Contoso* or *ATL*).
            - Partial match: You can exclude all topics that have a specific word in it.  For example, *arc* will exclude all topics with the word *arc* in it, such as *Arc circle*, *Plasma arc welding*, or *Training arc*. Note that it will not exclude topics in which the text is included as part of a word, such as *Architecture*.
         - **Stands for (optional)**: If you want to exclude an acronym, type the words the acronym stands for.
         - **MatchType-Exact/Partial**: Type whether the name you entered was an *exact* or *partial* match type.
      1. Upload your completed file and choose **Save**.

### Enable the Everyone in my organization option

For [Topic visibility](#topic-visibility) and [Topic permissions](#topic-permissions), you'll have the option to choose who can see, create, edit, and manage topics. It's recommended to choose **Everyone in my organization**.

If the **Everyone in my organization** option isn't available for any of your settings, you can enable it with the following PowerShell cmdlet:

```PowerShell
    Set-SPOTenant -ShowEveryoneExceptExternalUsersClaim $True
```

[Learn more about ShowEveryoneExceptExternalUsersClaim](/powershell/module/sharepoint-online/set-spotenant#-showeveryoneexceptexternalusersclaim)

If you want to keep this option disabled, it's recommended to choose the broadest possible group of users.

### Topic visibility

On the **Topic visibility** page, you'll choose who can see topics.

> [!NOTE]
> While this setting allows you to select any user in your organization, only users who have Topic Experiences licenses assigned to them are able to view topics.

1. Choose **Edit** to make changes to who can see topics.

2. Select one of the following options:
    - **Everyone in my organization** [Learn how to enable this option if it's greyed out](#enable-the-everyone-in-my-organization-option).
    - **Only selected people or security groups**
    - **No one**

    ![Screenshot of the who can see topics options.](../media/knowledge-management/ksetup2.png)

3. Select **Save**.

### Topic permissions

> [!NOTE]
> If you make changes to user roles and permissions the changes will take at least an hour to take effect.

In the **Topic permissions** page, you choose who can create, edit, and manage topics.

![Screenshot of the topic permissions page.](../media/knowledge-management/topic-permissions.png)

1. First, go to the **Who can create and edit topics** section. You can select:
    - **Everyone in my organization** [Learn how to enable this option if it's greyed out](#enable-the-everyone-in-my-organization-option).
    - **Only selected people or security groups**
    - **No one**

2. Select **Save**.

3. Then, go to the **Who can manage topics** section. You can select:
    - **Everyone in my organization** [Learn how to enable this option if it's greyed out](#enable-the-everyone-in-my-organization-option).
    - **Only selected people or security groups**
    The default selection is **Admin**.

4. Select **Save**.

5. If you chose **Only selected people or security groups**, type the name of the person or group and then select it when it appears. Repeat until you've added everyone who should be able to manage topics.

6. Select **Save**.

### Topic center

On the **Topic center** page, you can create your topic center site where users can view topic pages and manage topics.

![Screenshot of the Topic center page.](../media/knowledge-management/manage-topic-center.png)

1. Under **Topic center name**, choose **Edit**.

2. Pick a name for your topic center. Then select **Save**. The default name is **Topic Center**.

3. Next go to the **Site address** section. Here you can determine the URL of your topic center. Select **Save**.

> [!IMPORTANT]
> You can change the site name later, but you can't change the URL after you complete the wizard.

### Review your settings

Once you've chosen all your settings you can close out the **Manage Viva Topics** pane. You can change your settings at any time by repeating the same process from your Microsoft 365 admin center.

## Access to EWS Exchange

If your organization has controlled access to EWS Exchange, this will impact the Viva Topics product. Add "VivaTopicsApi" as the user agent string in EWSAllowList.

Control access to EWS for your organization:

- [Learn about control access to EWS in exchange](/exchange/client-developer/exchange-web-services/how-to-control-access-to-ews-in-exchange)
- [Reference to Set-OrganizationConfig](/powershell/module/exchange/set-organizationconfig)

## Manage topic experiences

Once you have set up Topics, you can change the settings that you chose during setup in the [Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal#/featureexplorer/csi/KnowledgeManagement). Manage other areas in topics:

>[!NOTE]
>If you update user roles and permissions, these changes can take over an hour to take effect.

- [Manage topic discovery in Microsoft Viva Topics](manage-topic-discovery.md)
- [Manage topic visibility in Microsoft Viva Topics](manage-topic-visibility.md)
- [Manage topic permissions in Microsoft Viva Topics](topic-experiences-user-permissions.md)
- [Change the name of the topic center in Microsoft Viva Topics](rename-topic-center.md)

You can also [add Viva Topics as an app in Teams](add-topics-app.md).

## Resources for your users

- [Understanding Viva Topics](https://support.microsoft.com/office/5bef3020-2679-4045-81cb-bcbc37218332)
- [Edit an existing topic in Microsoft Viva Topics](https://support.microsoft.com/office/6a4c7459-2293-4291-af76-973af65a44ae)

