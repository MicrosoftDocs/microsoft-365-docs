---
title: "Set up a connector to archive Twitter data"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MET150
ms.collection: M365-security-compliance
ms.custom: seo-marvel-apr2020
description: "Learn how administrators can set up and use a native connector to import Twitter data into Microsoft 365."
---

# Set up a connector to archive Twitter data (preview)

Use a connector in the Microsoft 365 compliance center to import and archive data from Twitter to Microsoft 365. After you set up and configure the connector, it connects to your organization's Twitter account (on a scheduled basis), converts the content of an item to an email message format, and then imports those items to a mailbox in Microsoft 365.

After the Twitter data is imported, you can apply Microsoft 365 compliance features such as Litigation Hold, Content Search, In-Place Archiving, Auditing, and Microsoft 365 retention policies to the Twitter data. For example, when a mailbox is placed on Litigation Hold or assigned to a retention policy, the Twitter data is preserved. You can search third-party data using Content Search or associate the mailbox where the Twitter data is stored with a custodian in an Advanced eDiscovery case. Using a connector to import and archive Twitter data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

After Twitter data is imported, you can apply Microsoft 365 compliance features such as Litigation Hold, Content Search, In-Place Archiving, Auditing, Communication compliance, and Microsoft 365 retention policies to the data stored in the mailbox. For example, you can search Twitter data using Content Search or associate the mailbox where the data is stored with a custodian in an Advanced eDiscovery case. Using a connector to import and archive Twitter data in Microsoft 365 can help your organization stay compliant with government and regulatory policies.

## Before you set up a connector

Complete the following prerequisites before you can set up and configure a connector in the Microsoft 365 compliance center to import and archive data from your organization's Twitter account.

- You need a Twitter account for your organization; you need to sign in to this account when setting up the connector.

- Your organization must have a valid Azure subscription. If you don't have an existing Azure subscription, you can sign up for one of these options:

    - [Sign up for a free one year Azure subscription](https://azure.microsoft.com/free) 

    - [Sign up for a Pay-As-You-Go Azure subscription](https://azure.microsoft.com/pricing/purchase-options/pay-as-you-go/)

    > [!NOTE]
    > The [free Azure Active Directory subscription](use-your-free-azure-ad-subscription-in-office-365.md) that's included with your Microsoft 365 subscription doesn't support the connectors in the Security & Compliance Center.

- The Twitter connector can import a total of 200,000 items in a single day. If there are more than 200,000 Twitter items in a day, none of those items will be imported to Microsoft 365.

- The user who sets up the Twitter connector in the Microsoft 365 compliance center (in Step 5) must be assigned the Mailbox Import Export role in Exchange Online. By default, this role isn't assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the  [Create role groups](/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

## Step 1: Create an app in Azure Active Directory

The first step is to register a new app in Azure Active Directory (AAD). This app corresponds to the web app resource that you implement in Step 2 for the Twitter connector.

For step-by-step instructions, see [Create an app in Azure Active Directory](deploy-twitter-connector.md#step-1-create-an-app-in-azure-active-directory).

During the completion of this step (by following the step-by-step instructions), you'll save the following information to a text file. These values will be used in later steps in the deployment process.

- AAD application ID

- AAD application secret

- Tenant Id

## Step 2: Deploy connector web service from GitHub repository to your Azure account

The next step is to deploy the source code for the Twitter connector app that will use Twitter API to connect to your Twitter account and extract data so you can import it to Microsoft 365. The Twitter connector that you deploy for your organization will upload the items from your organization's Twitter account to the Azure Storage location that is created in this step. After you create a Twitter connector in the Microsoft 365 compliance center (in Step 5), the Microsoft 365 Import service will copy the Twitter data from the Azure Storage location to a mailbox in Microsoft 365. As previous explained in the [Before you set up a connector](#before-you-set-up-a-connector) section, you must have a valid Azure subscription to create an Azure Storage account.

To deploy the source code for the Twitter connector app:

1. Go to [this GitHub site](https://github.com/microsoft/m365-sample-twitter-connector-csharp-aspnet).

2. Click **Deploy to Azure**.

For step-by-step instructions, see [Deploy the connector web service from GitHub to your Azure account](deploy-twitter-connector.md#step-2-deploy-the-connector-web-service-from-github-to-your-azure-account).

While you follow the step-by-step instructions to complete this step, you provide the following information

- APISecretKey: You create this secret during the completion of this step. It's used in Step 5.

- tenantId: The tenant ID of your Microsoft 365 organization that you copied after creating the Twitter app in Azure Active Directory in Step 1.

After completing this step, be sure to copy the app Service URL (for example, `https://twitterconnector.azurewebsites.net`). You need to use this URL to complete Step 3, Step 4, and Step 5).

## Step 3: Create developer app on Twitter

The next step is to create and configure a developer app on Twitter. The custom connector that you create in Step 7 uses the Twitter app to interact with the Twitter API to obtain data from your organization's Twitter account.

For step-by-step instructions, see [Create the Twitter app](deploy-twitter-connector.md#step-3-create-the-twitter-app).

During the completion of this step (by following the step-by-step instructions), you save the following information to a text file. These values will be used to configure the Twitter connector app in Step 4.

- Twitter API Key

- Twitter API Secret Key

- Twitter Access Token

- Twitter Access Token Secret

## Step 4: Configure the Twitter connector app

The next step is to add configurations settings to the Twitter connector app that you deployed in Step 2. You do this by going to the home page of your connector app and configuring it.

For step-by-step instructions, see [Configure the connector web app](deploy-twitter-connector.md#step-4-configure-the-connector-web-app).

During the completion of this step (by following the step-by-step instructions), you'll provide the following information (that you've copied to a text file after completing the previous steps):

- Twitter API Key (obtained in Step 3)

- Twitter API Secret Key (obtained in Step 3)

- Twitter Access Token (obtained in Step 3)

- Twitter Access Token Secret (obtained in Step 3)

- Azure Active Directory application ID (the AAD application ID obtained in Step 1)

- Azure Active Directory application secret (the AAD application secret obtained in Step 1)

## Step 5: Set up a Twitter connector in the Microsoft 365 compliance center

The final step is to set up the Twitter connector in the Microsoft 365 compliance center that will import data from your organization's Twitter account to a specified mailbox in Microsoft 365. After you complete this step, the Microsoft 365 Import service will start importing data from your organization's Twitter account to Microsoft 365.

For step-by-step instructions, see [Set up a Twitter connector in the Microsoft 365 compliance center](deploy-twitter-connector.md#step-5-set-up-a-twitter-connector-in-the-microsoft-365-compliance-center). 

During the completion of this step (by following the step-by-step instructions), you'll provide the following information (that you've copied to a text file after completing the steps).

- Azure app service URL (obtained in Step 2; for example, `https://twitterconnector.azurewebsites.net`)

- APISecretKey (that you created in Step 2)