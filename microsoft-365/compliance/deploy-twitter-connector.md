---
title: "Deploy a connector to archive Twitter data"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
ROBOTS: NOINDEX, NOFOLLOW
description: "Administrators can set up a native connector to import and archive Twitter data to Office 365. After this data is imported to Office 365, you can use compliance features such as legal hold, content search, and retention policies to manage the governance of your organization's Twitter data."
---

# Deploy a connector to archive Twitter data

This article contains the step-by-step process to deploy a connector that uses the Office 365 Import service to import data from your organization's Twitter account to Office 365. For a high-level overview of this process and a list of prerequisites required to deploy a Twitter connector, see [Use a connector to archive Twitter data in Office 365 (Preview)](archive-twitter-data-with-sample-connector.md). 

## Step 1: Download the package

Download the prebuilt package from the Release section in the GitHub repository at [https://github.com/microsoft/m365-sample-twitter-connector-csharp-aspnet/releases](https://github.com/microsoft/m365-sample-twitter-connector-csharp-aspnet/releases). Under the latest release, download the zip file named **SampleConnector.zip**. You upload this zip file to Azure in Step 4.

## Step 2: Create an app in Azure Active Directory

1. Go to <https://portal.azure.com> and sign in using the credentials of an Office 365 global admin account.

   ![Sign in to Azure](media/TCimage01.png)

2. In the left navigation pane, click **Azure Active Directory**.

   ![Go to Azure Active Directory](media/TCimage02.png)

3. In the left navigation pane, click **App registrations (Preview)** and then click **New registration**.

   ![Create a new app registration](media/TCimage03.png)

4. Register the application. Under **Redirect URI (optional)**, select **Web** in the application type dropdown list and then type `https://portal.azure.com` in the box for the URI.

   ![Type https://portal.azure.com for the redirect URI ](media/TCimage04.png)

5. Copy the **Application (client) ID** and **Directory (tenant) ID** and save them to a text file or other safe location. You use these IDs in later steps.

    ![Copy and save the Application Id and Directory Id](media/TCimage05.png)

6. Go to **Certificates & secrets for the new app** and under **Client secrets** click **New client secret**.

   ![Create a new client secret](media/TCimage06.png)

7. Create a new secret. In the description box, type the secret and then choose an expiration period. 

   ![Type the secret and choose expiration period](media/TCimage08.png)

8. Copy the value of the secret and save it to a text file or other storage location. This is the AAD application secret that you use in later steps.

   ![Copy and save the secret](media/TCimage09.png)

9. Go to **Manifest** and copy the identifierUris (which is also called the AAD application Uri) as highlighted in the following screenshot. Copy the AAD application Uri to a text file or other storage location. You use it in Step 6.

    ![Copy and save the AAD application Uri](media/TCimage10.png)

## Step 3: Create an Azure storage account

1.  Go to the Azure home page for your organization.

    ![Gi to Azure home page](media/TCimage11.png)

2. Click **Create a resource** and they type **storage account** in the search box.

   ![Create a storage account resource](media/TCimage12.png)

3. Click **Storage**, and then click **Storage account**.

   ![Click Storage and then click Storage account](media/TCimage13.png)

4. On the **Create storage account** page, in the Subscription box, select **Pay-As-You-Go** or **Free Trial** depending on which type of Azure subscription you have. 

   ![Select a storage account type](media/TCimage14.png)

5. Select or create a resource group.

   ![Select or create a resource group](media/TCimage15.png)

6. Type a name for the storage account.

   ![Name the storage account](media/TCimage16.png)

7. Review and then click **Create** to create the storage account.

   ![Review settings and then create storage account](media/TCimage17.png)

8. After a few moments, click **Refresh** and then click **Go to resource** to navigate to the storage account.

   ![Go to the storage account you just created](media/TCimage18.png)

9. Click **Access keys** in the left navigation pane.

   ![Click Access keys](media/TCimage19.png)

10. Copy a **Connection string** and save it to a text file or other storage location. You use this when creating a web app resource in Step 4.

    ![Copy a connection string](media/TCimage20.png)

## Step 4: Create a new web app resource in Azure

1. On the **Home** page in the Azure portal, click **Create a resource \> Everything \> Web app**. On the **Web app** page, click **Create**.

   ![Create web app resource in Azure](media/TCimage21.png)

2. Fill in the details (as shown below) and then create the Web app. The name that you enter in the **App name** box is used to create the Azure app service URL; for example, twitterconnector.azurewebsites.net.

   ![Type name for the web app resource; for example twitterconnector.azurewebsites.net ](media/TCimage22.png)

3. Go to the newly created web app resource and click **Application Settings** in the left navigation pane. Under **Application settings**, click **Add new setting** and add the following three settings. Use the values (that you copied to the text file from the previous steps): 

    - **APISecretKey** – You can type any value as the secret. This is used to access the connector web app in Step 7.

    - **StorageAccountConnectionString** – The connection string Uri that you copied after creating the Azure storage account in Step 3.

    - **tenantId** – The tenant ID of your Office 365 organization that you copied after creating the Twitter connector app in Azure Active Directory in Step 2.

    ![Add app settings](media/TCimage23.png)

4. Under **General settings**, click **On** next to the **Always On**. Click **Save** at the top of the page to save the application settings.

   ![Turn on web app resource and then save it](media/TCimage24.png)

5. The final step is to upload the connector app source code to Azure that you downloaded in Step 1. In a web browser, go to https://<AzureAppResourceName>.scm.azurewebsites.net/ZipDeployUi. For example, if the name of your Azure app resource (which you named in step 2 in this section) is **twitterconnector**, then you would go to https://twitterconnector.scm.azurewebsites.net/ZipDeployUi.

6. Drag and drop the SampleConnector.zip (that you downloaded in Step 1) to this page. After the files are uploaded and the deployment is successful, the page will look similar to the following screenshot:

   ![Drag and drop the SampleConnector.zip file to this page](media/TCimage25.png)

## Step 5: Create the Twitter app

1. Go to https://developer.twitter.com, log in using the credentials for the developer account for your organization, and then click **Apps**.

   ![Go to https://developer.twitter.com and log in](media/TCimage25-5.png)
2. Click **Create an app**.
   
   ![Go to Apps page to create an app](media/TCimage26.png)

3. Under **App details**, add information about the application.

   ![Enter info about the app](media/TCimage27.png)

4. On the Twitter developer dashboard, select the app that you just created and copy the App ID that's displayed  and save it to a text file or other storage location. Then click **Details**.
   
   ![Copy and save the App Id](media/TCimage28.png)

5. On the **Keys and tokens** tab, under **Consumer API keys** copy the API secret key and save it to a text file or other storage location. Then click **Create** to generate an access token and an access token secret, and copy these to a text file or other storage location.
   
   ![Copy and save to API secret key](media/TCimage29.png)

   Then click **Create** to generate an access token and an access token secret, and copy these to a text file or other storage location.

6. Click the **Permissions** tab and configure the permissions as shown in the following screenshot:

   ![Configure permissions](media/TCimage30.png)

7. After you save the permission settings, click the **App details** tab, and then click **Edit > Edit details**.

   ![Edit the app details](media/TCimage31.png)

8. Do the following tasks:

   - Select the checkbox to allow the connector app to sign in to Twitter.
   
   - Add the OAuth redirect Uri using the following format: **\<connectorserviceuri>/Views/TwitterOAuth**, where the value of *connectorserviceuri* is the Azure app service URL for your organization; for example, https://twitterconnector.azurewebsites.net/Views/TwitterOAuth.

    ![Allow connector app to sign in to Twitter and add OAuth redirect Uri](media/TCimage32.png)

The Twitter developer app is now ready to use.

## Step 6: Configure the connector web app 

1. Go to https://\<AzureAppResourceName>.azurewebsites.net (where **AzureAppResourceName** is the name of your Azure app resource that you named in Step 4). For example, if the name is **twitterconnector**, go to https://twitterconnector.azurewebsites.net. The home page of the app looks like the following screenshot:

   ![Go to Azure app resource page](media/FBCimage41.png)

2. Click **Configure** to display a sign in page.

   ![Click Configure to display sign in page](media/FBCimage42.png)

3. In the Tenant Id box, type or paste your tenant Id (that you obtained in Step 2). In the password box, type or paste the APISecretKey (that you obtained in Step 2), and then click **Set Configuration Settings** to display the **Configuration Details** page.

   ![Sign in using tenant Id and API secret key](media/TCimage35.png)

4. Under **Configuration Details**, enter the following configuration settings 

   - **Twitter Api Key** – The app ID for the Twitter application that you created in Step 5.
   - **Twitter Api Secret Key** – The API secret key for the Twitter application that you created in Step 5.
   - **Twitter Access Token** – The access token that you created in Step 5.
   - **Twitter Access Token Secret** – The access token secret that you created in Step 5.
   - **AAD Application ID** – The application ID for the Azure Active Directory app that you created in Step 2
   - **AAD Application Secret** – The value for the APISecretKey secret that you created in Step 4.
   - **AAD Application Uri** – The AAD application Uri obtained in Step 2; for example, `https://microsoft.onmicrosoft.com/2688yu6n-12q3-23we-e3ee-121111123213`.
   - **App Insights Instrumentation Key** – Leave this box blank.

5. Click **Save** to save the connector settings.

## Step 7: Set up a custom connector in the security and compliance center

1.  Go to <https://protection.office.com> and then click **Information governance \> Import \> Archive third-party data**.

    ![Go to Archive third-party data page in security and compliance center](media/TCimage36.png)

2. Click **Add a connector** and then click **Twitter**.

   ![Click Add a connector to add a Twitter connector](media/TCimage37.png)

3. On the **Add Connector App** page, enter the following information and then click **Validate connector**.

    - In the first box, type a name for the connector, such as **Twitter**.
    - In the second box, type or paste the value of the APISecretKey that you added in Step 4.
    - In the third box, type or paste the Azure app service URL; for example, **https://twitterconnector.azurewebsites.net**.

   After the connector is successfully validated, click **Next**.

   ![Enter connector app settings](media/TCimage38.png)

4. Click **Login with Connector App**.

   ![Log into Connector App](media/TCimage39.png)

5. Type or paste the APISecretKey again and then click  **Login to Connector Service**.

   ![Type API secret key to log into connector service](media/TCimage40.png)

6. Click **Continue with Twitter**.

7. On the Twitter sign in page, sign in using the credentials for the account for your organization’s Twitter account.

   ![Sign in to Twitter account](media/TCimage42.png)

   After you sign in, the Twitter page will display the following message, "Twitter Connector Job Successfully set up."

8. Click **Finish** to complete setting up the Twitter connector.

9. On the **Set Filters** page, you can apply a filter to import (and archive) items that are a certain age. Click **Next**.

   ![Configure filter to import items of a certain age](media/TCimage44.png)

10. On the **Set Storage Account** page, type the email address of an Office 365 mailbox that the Twitter items will be imported to.

    ![Specify an Office 365 mailbox to import Twitter items to](media/TCimage45.png)

11. Review your settings and then click **Finish** to complete the connector setup in the Security & Compliance Center.

    ![Review settings and then click Finish](media/TCimage46.png)

    ![Screen showing that connector setup is complete](media/TCimage47.png)

12. Go to the **Archive third-party data** page to see the progress of the import process.

    ![New connector displayed in security and compliance center](media/TCimage48.png)
