---
title: "Set up a connector to archive Facebook data"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
description: "Administrators can set up a native connector to import third-party data from data sources such as Facebook Business pages, Twitter, LinkedIn Company pages, and Instant Bloomberg. This lets you archive data from third-party data sources in Office 365 so you can use compliance features such as legal hold, Content Search, and retention policies to manage the governance of your organization's third-party data."
---

# Set up a connector to archive Facebook data

Use a data connector in the Security & Compliance Center in Office 365 to import and archive data from Facebook Business pages to Office 365. After you set up and configure a connector, it connects to the Facebook Business page (on a scheduled basis), converts the content of Facebook items to an email message format, and then imports those items to a mailbox in Office 365.

After the Facebook data is imported, you can apply Office 365 compliance features such as Litigation Hold, Content Search, In-Place Archiving, Auditing, [Communication compliance](communication-compliance.md), and Office 365 retention policies to the Facebook data. For example, when a mailbox is placed on Litigation Hold or assigned to a retention policy, the Facebook data is preserved. You can search third-party data using Content Search or associate the mailbox where the Facebook data is stored with a custodian in an Advanced eDiscovery case. Using a connector to import and archive Facebook data in Office 365 can help your organization stay compliant with government and regulatory policies.

## Prerequisites for setting up a connector for Facebook Business pages

Complete the following prerequisites before you can set up and configure a connector in the Security & Compliance Center to import and archive data from your organization's Facebook Business pages. 

- You need a Facebook account for your organization's business pages (you need to sign in to this account when setting up the connector). Currently, you can only archive data from Facebook Business pages; you can't archive data from individual Facebook profiles.

- Your organization must have a valid Azure subscription. If you don't have an existing Azure subscription, you can sign up for one of these options:

    - [Sign up for a free one year Azure subscription](https://azure.microsoft.com/free) 

    - [Sign up for a Pay-As-You-Go Azure subscription](https://azure.microsoft.com/pricing/purchase-options/pay-as-you-go/)

    > [!NOTE]
    > The [free Azure Active Directory subscription](use-your-free-azure-ad-subscription-in-office-365.md) that's included with your Office 365 subscription doesn't support the connectors in the Security & Compliance Center.

- Your organization must consent to allow the Office 365 Import service to access mailbox data in your organization. To consent to this request, go to [this page](https://login.microsoftonline.com/common/oauth2/authorize?client_id=570d0bec-d001-4c4e-985e-3ab17fdc3073&response_type=code&redirect_uri=https://portal.azure.com/&nonce=1234&prompt=admin_consent), sign in with the credentials of an Office 365 global admin, and then accept the request.

- The user who sets up the custom connector in the Security & Compliance (in Step 7) must be assigned the Mailbox Import Export role in Exchange Online. By default, this role isn't assigned to any role group in Exchange Online. You can add the Mailbox Import Export role to the Organization Management role group in Exchange Online. Or you can create a role group, assign the Mailbox Import Export role, and then add the appropriate users as members. For more information, see the  [Create role groups](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#create-role-groups) or [Modify role groups](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#modify-role-groups) sections in the article "Manage role groups in Exchange Online".

## Step 1: Download the pre-built connector app package from GitHub

The first step is to download the source code for the pre-built Facebook connector app that will use a Facebook API to connect to your Facebook Business pages and extract Facebook data so you can import it to Office 365.

1. Go to [this GitHub site](https://github.com/Microsoft/m365-sample-connector-csharp-aspnet/releases). 
2. Under the latest release, select the **SampleConnector.zip** file.
3. Save the ZIP file to a location on your local computer. You upload this ZIP file to Azure in Step 4.

## Step 2: Create an app in Azure Active Directory

The next step is to register a new app in Azure Active Directory (AAD). This app corresponds to the web app resource that you implement in Step 4 for the Facebook connector. 

For step-by-step instructions, see [Create an app in Azure Active Directory](deploy-facebook-connector.md#step-2-create-an-app-in-azure-active-directory).

During the completion of this step (by using the previous step-by-step instructions), you'll save the following information to a text file. These values are used in later steps in the deployment process.

- AAD application ID
- AAD application secret
- AAD application Uri
- Tenant Id

## Step 3: Create an Azure Storage account

The Facebook Connector that you deploy for your organization will upload the items from your Facebook Business pages to the Azure Storage location that you create in this step. After you create a custom connector in the Security & Compliance Center (in Step 7), the Office 365 Import service will copy the Facebook data from the Azure Storage location to a mailbox in Office 365. As previous explained in the [Prerequisites](#prerequisites-for-setting-up-a-connector-for-facebook-business-pages) section, you must have a valid Azure subscription to create an Azure Storage account.

For step-by-step instructions, see [Create an Azure Storage account](deploy-facebook-connector.md#step-3-create-an-azure-storage-account).

During the completion of this step (by following the step-by-step instructions), you save the connection string Uri that is generated. You use this string when creating a web app resource in Azure in Step 4.

## Step 4: Create a web app resource in Azure

The next step is to create a web app resource in Azure for the Facebook Connector. 

For step-by-step instructions, see [Create a new web app resource in Azure](deploy-facebook-connector.md#step-4-create-a-new-web-app-resource-in-azure).

While you follow the step-by-step instructions to complete this step, you provide the following information (that you copied to a text file after completing the previous steps) when creating the web app resource.

- APISecretKey: You create this secret during the completion of this step. It's used in Step 7.
- StorageAccountConnectionString: The connection string Uri that you copied after creating the Azure Storage account in Step 3.
- tenantId: The tenant ID of your Office 365 organization that you copied after creating the Facebook connector app in Azure Active Directory in Step 2.

Additionally, you upload the SampleConnector.zip file (that you downloaded in Step 1) in this step to deploy the source code for the Facebook connector app.

After completing this step, be sure to copy the app Service URL (for example, https://fbconnector.azurewebsites.net). You need to use this URL to complete Step 5, Step 6, and Step 7).

## Step 5: Register the web app on Facebook

The next step is to create and configure a new app on Facebook. The custom connector that you create in Step 7 uses the Facebook web app to interact with the Facebook API to obtain data from your organization's Facebook Business pages.

For step-by-step instructions, see [Register the Facebook app](deploy-facebook-connector.md#step-5-register-the-facebook-app).

During the completion of this step (by following the step-by-step instructions), you save the following information to a text file. The values are used to configure the Facebook connector app in Step 6.

- Facebook application ID
- Facebook application secret
- Facebook webhooks verify token

## Step 6: Configure the Facebook connector app

The next step is to add configurations settings to the Facebook connector app that you uploaded when you created the Azure web app resource in Step 4. You do this by going to the home page of your connector app and configuring it.

For step-by-step instructions, see [Step 6: Configure the connector web app](deploy-facebook-connector.md#step-6-configure-the-connector-web-app).

During the completion of this step (by following the step-by-step instructions), you provide the following information (that you've copied to a text file after completing the previous steps):

- Facebook application ID (obtained in Step 5)
- Facebook application secret (obtained in Step 5)
- Facebook webhooks verify token (obtained in Step 5)
- Azure Active Directory application ID (the AAD application ID obtained in Step 2)
- Azure Active Directory application secret (the AAD application secret obtained in Step 2)
- Azure Active Directory application Uri (the AAD application Uri obtained in Step 2; for example, `https://microsoft.onmicrosoft.com/2688yu6n-12q3-23we-e3ee-121111123213)`

## Step 7: Set up a custom connector in the Security & Compliance Center

The final step is to set up the custom connector in the Security & Compliance Center that will import data from your Facebook Business pages to a specified mailbox in Office 365. After you complete this step, the Office 365 Import service will start importing data from your Facebook Business pages to Office 365. 

For step-by-step instructions, see [Set up a custom connector in the Security & Compliance Center](deploy-facebook-connector.md#step-7-set-up-a-custom-connector-in-the-security--compliance-center). 

During the completion of this step (by following the step-by-step instructions), you provide the following information (that you've copied to a text file after completing the steps).

- Azure app service URL (obtained in Step 4; for example, https://fbconnector.azurewebsites.net)
- APISecretKey (that you created in Step 4)
