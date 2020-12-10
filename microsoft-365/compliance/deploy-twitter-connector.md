---
title: "Deploy a connector to archive Twitter data"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MET150
ms.collection: M365-security-compliance
ROBOTS: NOINDEX, NOFOLLOW
description: "Administrators can set up a native connector to import and archive Twitter data to Microsoft 365. After this data is imported to Microsoft 365, you can use compliance features such as legal hold, content search, and retention policies to manage the governance of your organization's Twitter data."
---

# Deploy a connector to archive Twitter data

This article contains the step-by-step process to deploy a connector that uses the Office 365 Import service to import data from your organization's Twitter account to Microsoft 365. For a high-level overview of this process and a list of prerequisites required to deploy a Twitter connector, see [Set up a connector to archive Twitter data ](archive-twitter-data-with-sample-connector.md). 

## Step 1: Create an app in Azure Active Directory

1. Go to <https://portal.azure.com> and sign in using the credentials of a global admin account.

   ![Sign in to Azure](../media/TCimage01.png)

2. In the left navigation pane, click **Azure Active Directory**.

   ![Go to Azure Active Directory](../media/TCimage02.png)

3. In the left navigation pane, click **App registrations (Preview)** and then click **New registration**.

   ![Create a new app registration](../media/TCimage03.png)

4. Register the application. Under **Redirect URI (optional)**, select **Web** in the application type dropdown list and then type `https://portal.azure.com` in the box for the URI.

   ![Type https://portal.azure.com for the redirect URI ](../media/TCimage04.png)

5. Copy the **Application (client) ID** and **Directory (tenant) ID** and save them to a text file or other safe location. You use these IDs in later steps.

    ![Copy and save the Application Id and Directory Id](../media/TCimage05.png)

6. Go to **Certificates & secrets for the new app** and under **Client secrets** click **New client secret**.

   ![Create a new client secret](../media/TCimage06.png)

7. Create a new secret. In the description box, type the secret and then choose an expiration period. 

   ![Type the secret and choose expiration period](../media/TCimage08.png)

8. Copy the value of the secret and save it to a text file or other storage location. This is the AAD application secret that you use in later steps.

   ![Copy and save the secret](../media/TCimage09.png)


## Step 2: Deploy the connector web service from GitHub to your Azure account

1. Go to [this GitHub site](https://github.com/microsoft/m365-sample-twitter-connector-csharp-aspnet) and click **Deploy to Azure**.

    ![Go to the Azure home page](../media/FBCimage11.png)

2. After you click **Deploy to Azure**, you will be redirected to an Azure portal with a custom template page. Fill in the **Basics** and **Settings** details and then click **Purchase**.

   ![Click Create a resource and type storage account](../media/FBCimage12.png)

    - **Subscription:** Select your Azure subscription that you want to deploy the Twitter connector web service to.
    
    - **Resource group:** Choose or create a new resource group. A resource group is a container that holds related resources for an Azure solution.

    - **Location:** Choose a location.

    - **Web App Name:** Provide a unique name for the connector web app. Th name must be between 3 and 18 characters in length. This name is used to create the Azure app service URL; for example, if you provide the Web app name of **twitterconnector** then the Azure app service URL  will be **twitterconnector.azurewebsites.net**.
    
    - **tenantId:** The tenant ID of your Microsoft 365 organization that you copied after creating the Facebook connector app in Azure       Active Directory in Step 1.
    
   - **APISecretKey:** You can type any value as the secret. This is used to access the connector web app in Step 5.

3. After the deployment is successful, the page will look similar to the following screenshot:

    ![Click Storage and then click Storage account](../media/FBCimage13.png)

## Step 3: Create the Twitter app

1. Go to https://developer.twitter.com, log in using the credentials for the developer account for your organization, and then click **Apps**.

   ![Go to https://developer.twitter.com and log in](../media/TCimage25-5.png)
2. Click **Create an app**.
   
   ![Go to Apps page to create an app](../media/TCimage26.png)

3. Under **App details**, add information about the application.

   ![Enter info about the app](../media/TCimage27.png)

4. On the Twitter developer dashboard, select the app that you just created and then click **Details**.
   
   ![Copy and save the App Id](../media/TCimage28.png)

5. On the **Keys and tokens** tab, under **Consumer API keys** copy both the API Key and the API secret key and save them to a text file or other storage location. Then click **Create** to generate an access token and access token secret and copy these to a text file or other storage location.
   
   ![Copy and save to API secret key](../media/TCimage29.png)

   Then click **Create** to generate an access token and an access token secret, and copy these to a text file or other storage location.

6. Click the **Permissions** tab and configure the permissions as shown in the following screenshot:

   ![Configure permissions](../media/TCimage30.png)

7. After you save the permission settings, click the **App details** tab, and then click **Edit > Edit details**.

   ![Edit the app details](../media/TCimage31.png)

8. Do the following tasks:

   - Select the checkbox to allow the connector app to sign in to Twitter.
   
   - Add the OAuth redirect Uri using the following format: **\<connectorserviceuri>/Views/TwitterOAuth**, where the value of *connectorserviceuri* is the Azure app service URL for your organization; for example, https://twitterconnector.azurewebsites.net/Views/TwitterOAuth.

    ![Allow connector app to sign in to Twitter and add OAuth redirect Uri](../media/TCimage32.png)

The Twitter developer app is now ready to use.

## Step 4: Configure the connector web app 

1. Go to https://\<AzureAppResourceName>.azurewebsites.net (where **AzureAppResourceName** is the name of your Azure app resource that you named in Step 4). For example, if the name is **twitterconnector**, go to https://twitterconnector.azurewebsites.net. The home page of the app looks like the following screenshot:

   ![Go to Azure app resource page](../media/FBCimage41.png)

2. Click **Configure** to display a sign in page.

   ![Click Configure to display sign in page](../media/FBCimage42.png)

3. In the Tenant Id box, type or paste your tenant Id (that you obtained in Step 2). In the password box, type or paste the APISecretKey (that you obtained in Step 2), and then click **Set Configuration Settings** to display the configuration details page.

   ![Sign in using tenant Id and API secret key](../media/TCimage35.png)

4. Enter the following configuration settings 

   - **Twitter Api Key:** The API key for the Twitter application that you created in Step 3.
   
   - **Twitter Api Secret Key:** The API secret key for the Twitter application that you created in Step 3.
   
   - **Twitter Access Token:** The access token that you created in Step 3.
   
   - **Twitter Access Token Secret:** The access token secret that you created in Step 3.
   
   - **AAD Application ID:** The application ID for the Azure Active Directory app that you created in Step 1
   
   - **AAD Application Secret:** The value for the APISecretKey secret that you created in Step 1.

5. Click **Save** to save the connector settings.

## Step 5: Set up a Twitter connector in the Microsoft 365 compliance center

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com) and then click **Data connectors** in the left nav.

2. On the **Data connectors** page under **Twitter**, click **View**.

3. On the **Twitter** page, click **Add connector**.

4. On the **Terms of service** page, click **Accept**.

5. On the **Add credentials for your connector app** page, enter the following information and then click **Validate connection**.

   ![Enter connector app credentials](../media/TCimage38.png)

    - In the **Name** box, type a name for the connector, such as **Twitter help handle**.
    
    - In the **Connector URL** box, type or paste the Azure app service URL; for example `https://twitterconnector.azurewebsites.net`.
    
    - In the **Password** box, type or paste the value of the APISecretKey that you created in Step 2.
    
    - In the **Azure App ID** box, type or paste the value of the Azure Application App Id (also called the *client ID*) that you obtained in Step 1.

6. After the connection is successfully validated, click **Next**.

7. On the **Authorize Microsoft 365 to import data** page, type or paste the APISecretKey again and then click  **Login web app**.

8. Click **Login with Twitter**.

9. On the Twitter sign in page, sign in using the credentials for your organization's Twitter account.

   ![Sign in to Twitter account](../media/TCimage42.png)

   After you sign in, the Twitter page will display the following message, "Twitter Connector Job Successfully set up."

10. Click **Continue** to complete setting up the Twitter connector.

11. On the **Set filters** page, you can apply a filter to initially import items that are a certain age. Select an age, and then click **Next**.

12. On the **Choose storage location** page, type the email address of Microsoft 365 mailbox that the Twitter items will be imported to, and then click **Next**.

13. Click **Next** to review the connector settings and then click **Finish** to complete the connector setup.

14. In the compliance center, go to the **Data connectors** page, and click the **Connectors** tab to see the progress of the import process.
