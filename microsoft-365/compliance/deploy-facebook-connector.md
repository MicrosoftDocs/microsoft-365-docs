---
title: "Deploy a connector to archive Facebook business pages data"
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
description: "Administrators can set up a native connector to import and archive Facebook business pages to Microsoft 365. After this data is imported to Microsoft 365, you can use compliance features such as legal hold, content search, and retention policies to manage the governance of your organization's Facebook data."
---

# Deploy a connector to archive Facebook business pages data

This article contains the step-by-step process to deploy a connector that uses the Microsoft 365 Import service to import data from Facebook business pages to Microsoft 365. For a high-level overview of this process and a list of prerequisites required to deploy a Facebook connector, see [Set up a connector to archive Facebook data](archive-facebook-data-with-sample-connector.md). 

## Step 1: Create an app in Azure Active Directory

1. Go to <https://portal.azure.com> and sign in using the credentials of an Office 365 global admin account.

    ![Create app in AAD](media/FBCimage1.png)

2. In the left navigation pane, click **Azure Active Directory**.

    ![Click Azure Active Directory](media/FBCimage2.png)

3. In the left navigation pane, click **App registrations (Preview)** and then click **New registration**.

    ![Click **App registrations (Preview)** and then click **New registration**](media/FBCimage3.png)

4. Register the application. Under Redirect URI, select Web in the application type dropdown list and then type <https://portal.azure.com> in the box for the URI.

   ![Register the application](media/FBCimage4.png)

5. Copy the **Application (client) ID** and **Directory (tenant) ID** and save them to a text file or other safe location. You use these IDs in later steps.

   ![Copy the Application ID and Directory ID and save them](media/FBCimage5.png)

6. Go to **Certificates & secrets for the new app.**

   ![Go to Certificates & secrets for the new app](media/FBCimage6.png)

7. Click **New client secret**

   ![Click New client secret](media/FBCimage7.png)

8. Create a new secret. In the description box, type the secret and then choose an expiration period. 

    ![Type the secret and then choose an expiration period](media/FBCimage8.png)

9. Copy the value of the secret and save it to a text file or other storage location. This is the AAD application secret that you use in later steps.

   ![Copy the value of the secret and save it](media/FBCimage9.png)

10. Go to **Manifest** and copy the identifierUris (which is also called the AAD application Uri) as highlighted in the following screenshot. Copy the AAD application Uri to a text file or other storage location. You use it in Step 6.

    ![Go to Manifest and copy the AAD application Uri](media/FBCimage10.png)

## Step 2: Deploy the connector web service from GitHub to your Azure account

1. Go to [this GitHub site](https://github.com/microsoft/m365-sample-twitter-connector-csharp-aspnet) and click **Deploy to Azure**.

    ![Click Deploy to Azure](media/FBCimage11.png)

2. After you click **Deploy to Azure**, you will be redirected to an Azure portal with a custom template page. Fill in the **Basics** and **Settings** details and then click **Purchase**.

    - **Subscription** – Select your Azure subscription that you want to deploy the Facebook business pages connector web service to.
    
    - **Resource group** — Choose or create a new resource group. A resource group is a container that holds related resources for an Azure solution.

    - **Location** – Choose a location.

    - **Web App Name** – Provide a unique name for the connector web app. Th name must be between 3 and 18 characters in length. This name is used to create the Azure app service URL; for example, if you provide the Web app name of **fbconnector** then the Azure app service URL  will be **fbconnector.azurewebsites.net**.
    
    - **tenantId** – The tenant ID of your Microsoft 365 organization that you copied after creating the Facebook connector app in Azure       Active Directory in Step 1.
    
   - **APISecretKey** – You can type any value as the secret. This is used to access the connector web app in Step 5.
   
     ![Click Create a resource and type storage account](media/FBCimage12.png)

3. After the deployment is successful, the page will look similar to the following screenshot:

     ![Click Storage and then click Storage account](media/FBCimage13.png)

## Step 3: Register the Facebook app

1. Go to <https://developers.facebook.com>, log in using the credentials for the account for your organization’s Facebook Business pages, and then click **Add New App**.

   ![Add a new app for Facebook business page](media/FBCimage25.png)

2. Create a new app ID.

   ![Create a new app ID](media/FBCimage26.png)

3. In the left navigation pane, click **Add Products** and then click **Set Up** in the **Facebook Login** tile.

   ![Click Add Products](media/FBCimage27.png)

4. On the Integrate Facebook Login page, click **Web**.

   ![Click Web on the Integrate Facebook Login page](media/FBCimage28.png)

5. Add the Azure app service URL; for example `https://fbconnector.azurewebsites.net`.

   ![Add the Azure app service URL](media/FBCimage29.png)

6. Complete the QuickStart section of the Facebook Login setup.

   ![Complete the QuickStart section](media/FBCimage30.png)

7. In the left navigation pane under **Facebook Login**, click **Settings**, and add the OAuth redirect URI in the **Valid OAuth Redirect URIs** box. Use the format **\<connectorserviceuri>/Views/FacebookOAuth**, where the value for connectorserviceuri is the Azure app service URL for your organization; for example, `https://fbconnector.azurewebsites.net`.

   ![Add the OAuth redirect URI to the Valid OAuth Redirect URIs box](media/FBCimage31.png)

8. In the left navigation pane, click **Add Products** and then click **Webhooks.** In the **Page** pull-down menu, click **Page**. 

   ![Click Add Products and then click **Webhooks](media/FBCimage32.png)

9. Add Webhooks Callback URL and add a verify token. The format of the callback URL, use the format **<connectorserviceuri>/api/FbPageWebhook**, where the value for connectorserviceuri is the Azure app service URL for your organization; for example `https://fbconnector.azurewebsites.net`. 

    The verify token should similar to a strong password. Copy the verify token to a text file or other storage location.

        ![Add the verify token](media/FBCimage33.png)

10. Test and subscribe to the endpoint for feed.

    ![Test and subscribe to the endpoint](media/FBCimage34.png)

11. Add a privacy URL, app icon, and business use. Also, copy the app ID and app secret to a text file or other storage location.

    ![Add a privacy URL, app icon, and business use](media/FBCimage35.png)

12. Make the app public.

    ![Make the app public](media/FBCimage36.png)

13. Add user to the admin or tester role.

    ![Add user to the admin or tester role](media/FBCimage37.png)

14. Add the **Page Public Content Access** permission.

    ![dd the Page Public Content Access permission](media/FBCimage38.png)

15. Add Manage Pages permission.

    ![Add Manage Pages permission](media/FBCimage39.png)

16. Get the application reviewed by Facebook.

    ![Get the application reviewed by Facebook](media/FBCimage40.png)

## Step 4: Configure the connector web app

1. Go to https://\<AzureAppResourceName>.azurewebsites.net (where AzureAppResourceName is the name of your Azure app resource that you named in Step 4) For example, if the name is **fbconnector**, go to `https://fbconnector.azurewebsites.net`. The home page of the app will look like the following screenshot:

   ![Go to you connector web app](media/FBCimage41.png)

2. Click **Configure** to display a sign in page.
 
   ![Click Configure to display a sign in page](media/FBCimage42.png)

3. In the Tenant Id box, type or paste your tenant Id (that you obtained in Step 2). In the password box, type or paste the APISecretKey (that you obtained in Step 2), and then click **Set Configuration Settings** to display the **Configuration Details** page.

    ![Sign in using your tenant Id and password and go to configuration details page](media/FBCimage43.png)

4. Under **Configuration Details**, enter the following configuration settings 

   - **Facebook application ID** – The app ID for the Facebook application that you obtained in Step 5.
   - **Facebook application secret** – The app secret for the Facebook application that you obtained in Step 5.
   - **Facebook webhooks verify token** – The verify token that you created in Step 5.
   - **AAD application ID** – The application ID for the Azure Active Directory app that you created in Step 2.
   - **AAD application secret** – The value for the APISecretKey secret that you created in Step 4.
   - **AAD application Uri** – The AAD application Uri obtained in Step 2; for example, `https://microsoft.onmicrosoft.com/2688yu6n-12q3-23we-e3ee-121111123213`.
   - **App insights instrumentation key** – Leave this box blank.

5. Click **Save** to save the connector settings.

## Step 5: Set up a Facebook business pages connector

1. Go to <https://compliance.microsoft.com> and then click **Data connectors**.

   ![Go to the Data connectors page in the Microsoft 365 compliance center](media/FBCimage44.png)

2.  Click **View** and then click **Add connector**.

    ![Add a Facebook connector configure the connector](media/FBCimage46.png)

3.  On the **Add Connector App** page, enter the following information and then click **Validate connector**.

    - In the first box, type a name for the connector, such as **Facebook marketing page**.
    - In the second box, type or paste the Azure app service URL; for example `https://fbconnector.azurewebsites.net`.
    - In the third box, type or paste the value of the APISecretKey that you added in Step 2.
    - In the fourth box, type or paste the value of the Application (client) ID also called as AAD Application ID that you created in Step 1.
 
    After the connector is successfully validated, click **Next**.
    
    ![Click Next after connector is successfully validated](media/FBCimage47.png)

4. Type or paste the APISecretKey again and then click  **Login web app**.

   ![Type or paste the APISecretKey and then click the login button](media/FBCimage48.png)

5. On the **Log in with Facebook** page, log in using the credentials for the account for your organization’s Facebook Business pages. Make sure the Facebook account that you logged in to is assigned the admin role for your organization’s Facebook Business pages

   ![Log in with Facebook](media/FBCimage50.png)

6. A list of the business pages managed by the Facebook account that you logged in to is displayed. Select the page to archive and then click **Next**.

    ![Select the organization business page that you want to archive](media/FBCimage52.png)

7. Click **Continue** to exit the setup of the connector service app.

    ![Click Continue to exit the connector service app](media/FBCimage53.png)

8. On the **Set Filters** page, you can apply a filter to import (and archive) items that are a certain age. Click **Next**.

    ![Apply a filter to import items that are a certain age](media/FBCimage54.png)

9. On the **Set Storage Account** page, select the Microsoft 365 mailbox that the items from the Facebook Business pages that you previously selected will be imported to.

    ![Specify a mailbox to archive items imported from Facebook](media/FBCimage55.png)

10. Review your settings and then click **Finish** to complete the connector setup in the compliance center.

    ![Review connector settings](media/FBCimage56.png)

11. Go to the **Connectors** tab on the **Data connectors** page to see the progress of the import process.

    ![Go to the Connectors tab to track the import process](media/FBCimage58.png)
