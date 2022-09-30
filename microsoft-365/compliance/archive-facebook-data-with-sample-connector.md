---
title: "Set up a connector to archive Facebook data"
description: "Learn how to set up & use a connector in the Microsoft Purview compliance portal to import & archive data from Facebook Business pages to Microsoft 365."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 07/15/2022
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid: 
- MET150
ms.collection:
- tier3
- purview-compliance
- data-connectors
ms.custom: seo-marvel-apr2020
---

# Set up a connector to archive Facebook data (preview)

Use a connector in the Microsoft Purview compliance portal to import and archive data from Facebook Business pages to Microsoft 365. After you set up and configure the connector, it connects to the Facebook Business page (on a scheduled basis), converts the content of Facebook items to an email message format, and then imports those items to a mailbox in Microsoft 365.

After the Facebook data is imported, you can apply Microsoft Purview features such as Litigation Hold, Content Search, In-Place Archiving, Auditing, Communication compliance, and Microsoft 365 retention policies to the Facebook data. For example, when a mailbox is placed on Litigation Hold or assigned to a retention policy, the Facebook data is preserved. You can search third-party data using Content Search or associate the mailbox where the Facebook data is stored with a custodian in a Microsoft Purview eDiscovery (Premium) case. Using a connector to import and archive Facebook data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

If you’d like to participate in the preview, please reach out to the team at dcfeedback@microsoft.com.

## Prerequisites for setting up a connector for Facebook Business pages

Complete the following prerequisites before you can set up and configure a connector in the compliance portal to import and archive data from your organization's Facebook Business pages. 

- You need a Facebook account for your organization's business pages (you need to sign in to this account when setting up the connector). Currently, you can only archive data from Facebook Business pages; you can't archive data from individual Facebook profiles.

- Your organization must have a valid Azure subscription. If you don't have an existing Azure subscription, you can sign up for one of these options:

    - [Sign up for a free one year Azure subscription](https://azure.microsoft.com/free)

    - [Sign up for a Pay-As-You-Go Azure subscription](https://azure.microsoft.com/pricing/purchase-options/pay-as-you-go/)

    > [!NOTE]
    > The [free Azure Active Directory subscription](use-your-free-azure-ad-subscription-in-office-365.md) that's included with your Microsoft 365 subscription doesn't support the connectors in the compliance portal.

- The connector for Facebook Business pages can import a total of 200,000 items in a single day. If there are more than 200,000 Facebook Business items in a day, none of those items will be imported to Microsoft 365.

- The user who sets up the custom connector in the compliance portal (in Step 5) must be assigned the Data Connector Admin role. This role is required to add connectors on the **Data connectors** page in the compliance portal. This role is added by default to multiple role groups. For a list of these role groups, see the "Roles in the security and compliance centers" section in [Permissions in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center). Alternatively, an admin in your organization can create a custom role group, assign the Data Connector Admin role, and then add the appropriate users as members. For instructions, see the "Create a custom role group" section in [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md#create-a-custom-role-group).

## Step 1: Create an app in Azure Active Directory

The first step is to register a new app in Azure Active Directory (AAD). This app corresponds to the web app resource that you implement in Step 4 and Step 5 for the Facebook connector.

For step-by-step instructions, see [Create an app in Azure Active Directory](deploy-facebook-connector.md#step-1-create-an-app-in-azure-active-directory).

During the completion of this step (by using the previous step-by-step instructions), you'll save the following information to a text file. These values are used in later steps in the deployment process.

- AAD application ID

- AAD application secret

- Tenant Id

## Step 2: Deploy the connector web service from GitHub to your Azure account

The next step is to deploy the source code for the Facebook Business pages connector app that will use the Facebook API to connect to your Facebook account and extract data so you can import it to Microsoft 365. The Facebook connector that you deploy for your organization will upload the items from your Facebook Business pages to the Azure Storage location that is created in this step. After you create a Facebook business pages connector in the compliance portal (in Step 5), the Import service will copy the Facebook business pages data from the Azure Storage location to a mailbox in your Microsoft 365 organization. As previous explained in the [Prerequisites](#prerequisites-for-setting-up-a-connector-for-facebook-business-pages) section, you must have a valid Azure subscription to create an Azure Storage account.

For step-by-step instructions, see [Deploy the connector web service from GitHub to your Azure account](deploy-facebook-connector.md#step-2-deploy-the-connector-web-service-from-github-to-your-azure-account).

In the step-by-step instructions to complete this step, you'll provide the following information:

- APISecretKey: You create this secret during the completion of this step. It's used in Step 5.

- TenantId: The tenant ID of your Microsoft 365 organization that you copied after creating the Facebook connector app in Azure Active Directory in Step 1.

After completing this step, be sure to copy the Azure app service URL (for example, https://fbconnector.azurewebsites.net). You need to use this URL to complete Step 3, Step 4, and Step 5).

## Step 3: Register the web app on Facebook

The next step is to create and configure a new app on Facebook. The Facebook business pages connector that you create in Step 5 uses the Facebook web app to interact with the Facebook API to obtain data from your organization's Facebook Business pages.

For step-by-step instructions, see [Register the Facebook app](deploy-facebook-connector.md#step-3-register-the-facebook-app).

During the completion of this step (by following the step-by-step instructions), you save the following information to a text file. These values are used to configure the Facebook connector app in Step 4.

- Facebook application ID

- Facebook application secret

- Facebook webhooks verify token

## Step 4: Configure the Facebook connector app

The next step is to add configuration settings to the Facebook connector app that you uploaded when you created the Azure web app resource in Step 1. You do this by going to the home page of your connector app and configuring it.

For step-by-step instructions, see [Configure the Facebook connector app](archive-facebook-data-with-sample-connector.md#step-4-configure-the-facebook-connector-app).

During the completion of this step (by following the step-by-step instructions), you provide the following information (that you've copied to a text file after completing the previous steps):

- Facebook application ID (obtained in Step 3)

- Facebook application secret (obtained in Step 3)

- Facebook webhooks verify token (obtained in Step 3)

- Azure Active Directory application ID (the AAD application ID obtained in Step 1)

- Azure Active Directory application secret (the AAD application secret obtained in Step 1)

## Step 5: Set up a Facebook Business pages connector in the compliance portal

The final step is to set up the connector in the compliance portal that will import data from your Facebook Business pages to a specified mailbox in Microsoft 365. After you complete this step, the Microsoft 365 Import service will start importing data from your Facebook Business pages to Microsoft 365.

For step-by-step instructions, see [Step 5: Set up a Facebook connector in the compliance portal](deploy-facebook-connector.md#step-5-set-up-a-facebook-connector-in-the-compliance-portal).

During the completion of this step (by following the step-by-step instructions), you provide the following information (that you've copied to a text file after completing the steps).

- AAD application ID (obtained in Step 1)

- Azure app service URL (obtained in Step 1; for example, https://fbconnector.azurewebsites.net)

- APISecretKey (that you created in Step 2)
