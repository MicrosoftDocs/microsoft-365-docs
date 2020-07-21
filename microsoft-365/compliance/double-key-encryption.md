---
# required metadata

title: Double Key Encryption (DKE)
description: DKE enables you to protect highly sensitive data while maintaining full control of your key.
author: kccross
ms.author: krowley
manager: laurawi
ms.date: 07/11/2020
ms.topic: conceptual
ms.service: information-protection
audience: Admin
ms.reviewer: esaggese
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- M365-security-compliance

---

# Double Key Encryption (DKE)

> *Applies to: [Microsoft 365 Compliance](https://www.microsoft.com/microsoft-365/business/compliance-management), [Azure Information Protection](https://azure.microsoft.com/pricing/details/information-protection)*
>
> *Instructions for: [Azure Information Protection unified labeling client for Windows](faqs.md#whats-the-difference-between-the-azure-information-protection-classic-and-unified-labeling-clients)*
>
> *Service description for: [Microsoft 365 Compliance](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)*

This public preview version of Double Key Encryption (DKE) enables you to use the unified labeling client to protect highly sensitive content while maintaining full control of your key.

Double Key Encryption requires two keys, used together, to access protected content. You store one key in Microsoft Azure Key Vault, and you hold the other key.

Double Key Encryption supports both cloud and on-premises deployments. These deployments help to ensure that encrypted data remains opaque regardless of where you store the protected data.

For more information about the default, cloud-based tenant root keys, see [Planning and implementing your Azure Information Protection tenant key](https://docs.microsoft.com/azure/information-protection/plan-implement-tenant-key).

Double Key Encryption is similar to a safety deposit box that requires both a bank key and a customer key to gain access. To decrypt protected content, you must use both the Microsoft managed key and the customer-held key.

The following video shows how Double Key Encryption works to secure your content.

If your organizations has any of the following requirements, you can use DKE to help secure your content:

- You want to ensure that *only you* can ever decrypt protected content, under all circumstances.
- You don't want Microsoft to have access protected data on its own.
- You have regulatory requirements to hold keys within a geographical boundary. All customer-held keys for data encryption and decryption are maintained in your data center.

> [!VIDEO https://msit.microsoftstream.com/embed/video/f466a1ff-0400-a936-221c-f1eab45dc756]

## System and licensing requirements for DKE

**Public preview**. This is the public preview version of DKE. For licensing information about this release, see ***

**Azure Information Protection**. DKE works with sensitivity labels and requires of Azure Information Protection. For more information about the software required to deploy DKE, see [Installing software prerequisites](#installing-software-prerequisites).

## Supported environments for storing and viewing DKE-protected content

| Support | Description |
|---------|-------------|
|**Supported applications** | [Microsoft 365 Apps for enterprise](https://www.microsoft.com/microsoft-365/business/microsoft-365-apps-for-enterprise-product) clients with Windows, including Word, Excel, and PowerPoint. |
|**Online content support** | Documents and files stored online in both Microsoft SharePoint and OneDrive for Business. Encrypted content can be shared by email. You can't view encrypted documents online. Instead, you must view protected content locally because you must provide the second key to decrypt the content. ||

## Deploy DKE

These are the general steps you'll take to set up DKE for your organization.

To deploy DKE:

1. [Install software prerequisites](#installing-software-prerequisites)
2. [Clone the DKE GitHub repository](#cloning-the-dke-git-repository)
3. [Modify application settings](#modifying-application-settings)
4. [Generate test keys](#generate-test-keys)
5. [Build the project](#building-the-project)
6. [Publish a key store to Azure](#publishing-a-key-store-to-azure)

Make sure to [validate your deployment](#validate-your-deployment) and then [register your key store](#register-your-key-store).

When you're done, [create sensitivity labels to encrypt content using DKE](#create-labels-using-dke).

### Install software prerequisites

Install prerequisites on the DKE service host computer:

**.NET Core 3.1 SDK** Download and install the SDK from [Download .NET Core 3.1](https://dotnet.microsoft.com/download/dotnet-core/3.1).

**Visual Studio code and relevant extensions** Download Visual Studio code from [https://code.visualstudio.com/](https://code.visualstudio.com/). Once installed, press **CTRL+SHIFT** to open the extensions window. Download the following extensions:

- C# for Visual Studio Code

- NuGet Package Manager

**Microsoft Office** versions *.12711 or later
**Git resources** Download and install one of the following installations:</br>

- [Git](https://git-scm.com/downloads)

- [GitHub](https://desktop.github.com/)
- [GitHub Enterprise](https://github.com/enterprise)

**Azure Information Protection Unified Labeling Client** versions 2.7.93.0 or later. Download and install the Unified Labeling client from [Microsoft](https://www.microsoft.com/download/details.aspx?id=53018).

**OpenSSL** You must have [OpenSSL](https://slproweb.com/products/Win32OpenSSL.html) installed in order to [generate test keys](#generate-test-keys) after deploying DKE.

Install prerequisites on each client computer where you want to protect and consume protected documents:

**Microsoft Office** versions *.12711 or later

**Azure Information Protection Unified Labeling Client** versions 2.7.93.0 or later. Download and install the Unified Labeling client from [Microsoft](https://www.microsoft.com/download/details.aspx?id=53018).

### Cloning the DKE GitHub repository

Microsoft supplies the DKE source files in a GitHub repository. You'll clone the repository to build the project locally for your organization's use. The DKE GitHub repository is located at [https://github.com/Azure-Samples/customer-key-store](https://github.com/Azure-Samples/customer-key-store).

The following instructions are intended for inexperienced git or Visual Studio Code users who need to deploy DKE:

1. In your browser, go to: [https://github.com/Azure-Samples/customer-key-store](https://github.com/Azure-Samples/customer-key-store)
2. Towards the right side of the screen, select the green **Clone or download** button. Then, in the dropdown that appears, select the copy button to copy the URL to your clipboard.

    For example:

    :::image type="content" source="../media/dke-clone.png" alt-text="Clone the Double Key Encryption service repository from GitHub":::

3. Open Visual Studio Code. Press **CTRL+SHFT+P,** and select the **Git:Clone** option. If you need to, enter **git:clone** in the textbox to find the option.

    For example:

    :::image type="content" source="../media/dke-vscode-clone.png" alt-text="Visual Studio Code GIT:Clone option":::

4. In the text box, paste the URL that you'd copied from Git and press **ENTER.**

5. In the **Select Folder** dialog that appears, browse to and select a location to store the repository. At the prompt, select **Open**.

    The repository is opened in Visual Studio code, and displays the current Git branch at the bottom left. Your current branch should be **master**.

    For example:

    :::image type="content" source="../media/dke-vscode-master.png" alt-text="Visual Studio Code master branch":::

6. Select the word **master,** and then select **public_preview** from the list of branches. Selecting the **public_preview** branch ensures that you have the correct files to build the project.

You now have your DKE source repository set up locally. Continue with [modifying application settings](#modifying-application-settings) for your organization.

### Modifying application settings

To deploy DKE, you must modify the following types of application settings:

- [Key access settings](#key-access-settings)
- [Tenant and key settings](#tenant-and-key-settings)

When you're done, [generate a set of test keys](#generate-test-keys), and then continue with [building your project](#building-the-project).

#### Key access settings

Consider whether you're going to use email or role authorization. DKE supports only one of these authentication methods at a time.

- **Email authorization**. Allows your organization to authorize access to keys based on email addresses only. Enabled with the **AuthorizedEmailAddresses** key.

- **Role authorization**. Allows your organization to authorize access to keys based on Active Directory groups, and requires that the web service can query LDAP. Enabled with the **AuthorizedRoles** key.

In the **appsettings.json** file, define one of the following keys. Remove the key that isn't relevant for your chosen authorization method.

|Key  |Description  |
|---------|---------|
|**AuthorizedEmailAddresses**     | Used for email authorization only.<br></br>Define with the email address you want to authorize. </br>For example: **" ‘AuthorizedEmailAddresses’ ": ["email1@company.com", "email2@company.com ", email3@company.com]**</br></br>Remove for role authorization.        |
|**AuthorizedRoles**    | Used for role authorization only.</br> </br>Define with the ActiveDirectory group names you want to authorize. </br>For example: **"AuthorizedRoles": ["group1", "group2", "group3"]**</br><br>Remove for email authorization.        |

#### Tenant and key settings

DKE tenant and key settings are located in the **appsettings.json** file.

In the **appsettings.json** file, modify the following values:

|Name  |Description  |
|---------|---------|
|**ValidIssuers**     | Replace `<tenantid>` with your tenant ID GUID.        |
|**JwtAudience**     | Replace `<yourhostname>` with the hostname of the machine where the DKE service will be running.</br></br>- This value must match the actual name of your host.</br>- If you are debugging, you may want to define this value as **localhost:5000** </br>- If you later deploy to a server, make sure to update this value to the server's hostname.</br> </br>[Later in the deployment](#publishing-a-customer-key-store-to-azure), you'll define this hostname as the Azure App Service instance name.        |
|**LDAPPath**     | Set the value as follows:</br></br>- If you are using role authorization, enter the LDAP domain.</br>- If you are not using role authorization, leave this value empty. </br></br>For more information, see [Key access settings](#key-access-settings)      |
|**TestKeys:Name**     |  Enter a name for your key. Example: **TestKey1**       |
|**TestKeys:Id**     |   Create a GUID and enter it as the **TestKeys:ID** value. Example: **DCE1CC21-FF9B-4424-8FF4-9914BD19A1BE**|

### Generate test keys

Once you have your application settings defined, you're ready to generate public and private test keys.

To generate keys:

1. Make sure that you're invoking OpenSSL correctly from your environment variables path. <!--For example, see [https://www.osradar.com/install-openssl-windows/](https://www.osradar.com/install-openssl-windows/).-->

1. Run the following commands:

        openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 365
        openssl rsa -in key.pem -out privkeynopass.pem
        openssl rsa -in key.pem -pubout > pubkeyonly.pem

1. Copy all of the content in the **pubkeyonly.pem** file, except the beginning and end lines, into the **PublicPem** section of the **appsettings.json** file.

1. Copy all of the content in the **privkeynopass.pem** file, except the beginning and end lines, into the **PrivatePem** in **appsettings.json** file.

1. Ensure that all whitespaces and newlines in both the **PublicPem** and **PrivatePem** sections are removed. 

    > [!IMPORTANT]
    > When you remove this content, make sure not delete any of the actual PEM data.

1. Open the **Startup.cs** file, and locate the following lines:

        #if USE_TEST_KEYS
        #error !!!!!!!!!!!!!!!!!!!!!! Use of test keys is only supported for testing, 
        DO NOT USE  FOR PRODUCTION !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        services.AddSingleton<ippw.IKeyStore, ippw.TestKeyStore>();
        #endif

1. Replace these lines with the following text:

        services.AddSingleton<ippw.IKeyStore, ippw.TestKeyStore>();

Now you're ready to [build your DKE project](#building-the-project).

### Building the project

Use the following instructions to build the DKE project locally:

1. In Visual Studio Code, ensure that you have your local DKE repository open.

1. Press **CTRL+SHIFT+B** > **ENTER** to start building the project.

    If there are no build tasks found, create one for .NET core as follows:

    1. Open the **tasks.json** file.

    1. In the build section, locate the path to the **customerkeystore.csproj** file.

        If it's not there, add the following line:

            "${workspaceFolder}/src/customer-key-store/customerkeystore.csproj",

1. If needed, press **CTRL+SHIFT+B** > **ENTER** again to run the build. Verify that there are no red errors in the output window.

    If there are red errors, check the console output. Ensure that all the previous steps were done correctly and the correct build versions are present.

1. Press **F5** to debug the process. If you're prompted to select an environment, select **.NET core**.

The .NET core debugger typically launches to **https://localhost:5001**. To view your test key, go to **https://localhost:5001**, and append a forward slash (/) and the name of your key.

For example: **https://localhost:5001/TestKey1**

The key should display in JSON format.

Your setup is now complete. Continue with [publishing your key to Azure](#publishing-a-customer-key-store-to-azure).

### Publishing a customer key store to Azure

The following steps describe how to create an Azure App Service instance to host your DKE deployment, and how to publish your generated keys to Azure.

To create an Azure App Service instance to host your DKE deployment:

1. In your browser, sign in to the [Microsoft Azure portal](https://ms.portal.azure.com), and go to **App Services** > **Add**.

1. Select your subscription and resource group and define your instance details.

    - The name you define here will be the hostname of the machine where you deploy DKE. Make sure it's the same name as the one defined in the [**appsettings.json**](#tenant-and-key-settings) file.

    - For the **Publish** option, select **code,** and for the **Runtime stack** option, select **.NET Core 3.1**.

    For example:

    :::image type="content" source="../media/dke-azure-add-app-service.png" alt-text="Add your App Service":::

1. At the bottom of the page, select **Review + create**, and then select **Add**.

1. Do one of the following to publish your generated keys to Azure:

    - [Publish via ZipDeployUI](#publish-via-zipdeployui)
    - [Publish via FTP](#publish-via-ftp)
    - [Publish via Visual Studio 2019 or later](https://docs.microsoft.com/aspnet/core/tutorials/)
    - [Publish to an on-premises system](https://docs.microsoft.com/aspnet/core/tutorials/publish-to-iis?view=aspnetcore-3.1&tabs=netcore-cli)

    > [!NOTE]
    > You may prefer other methods to deploy your keys. Select the method that works best for your organization.
    
    > [!TIP]
    > [Publishing via Visual Studio](https://docs.microsoft.com/aspnet/core/tutorials/) and to an [on-premises system](https://docs.microsoft.com/aspnet/core/tutorials/publish-to-iis?view=aspnetcore-3.1&tabs=netcore-cli) are described in the [ASP .NET documentation](https://docs.microsoft.com/aspnet/core/). If you use one of these methods, open the instructions in a separate tab so that you can return here easily when you're done.

#### Publish via ZipDeployUI

1. Go to `https://<appservicename>.scm.azurewebsites.net/ZipDeployUI`.

    For example: https://customerkeystoreforpublicpreview.scm.azurewebsites.net/ZipDeployUI

1. In the codebase for the key store, go to the **customer-key-store\src\customer-key-store** directory, and verify that this directory contains the **customerkeystore.csproj** file.

1. Run: **dotnet publish**

     The output window displays the directory where the publish was deployed.

    For example: `customer-key-store\src\customer-key-store\bin\Debug\netcoreapp3.1\publish\`

1. Send all files in the publish directory to a .zip file. When creating the .zip file, make sure that all files in the directory are at the root level of the .zip file.

1. Drag and drop the .zip file you create to the ZipDeployUI site you opened above. For example: https://customerkeystoreforpublicpreview.scm.azurewebsites.net/ZipDeployUI

DKE is deployed and you can browse to the test keys you've created. Continue with [Validating your deployment](#validating-your-deployment) below.

#### Publish via FTP

1. Connect to the App Service you created [above](#publishing-a-customer-key-store-to-azure).

    In your browser, go to: **Azure portal** > **App Service** **> Deployment Center** > **Manual Deployment** > **FTP** > **Dashboard.**

1. Copy the connection strings displayed to a local file. You'll use these strings to connect to the App Service and upload files via FTP.

    For example:

    :::image type="content" source="../media/dke-ftp-dashboard.png" alt-text="Copy connection strings from the FTP dashboard":::

1. In the codebase for the key storage, go to the **customer-key-store\src\customer-key-store directory**.

1. Verify that this directory contains the **customerkeystore.csproj** file.

1. Run: **dotnet publish**

    The output contains the directory where the publish was deployed.

    For example: `customer-key-store\src\customer-key-store\bin\Debug\netcoreapp3.1\publish\`

1. Send all files in the publish directory to a zip file. When creating the .zip file, make sure that all files in the directory are at the root level of the .zip file.

1. From your FTP client, use the connection information you copied to connect to your App Service. Upload the .zip file you created in the previous step to the root directory of your App Service.

DKE is deployed and you can browse to the test keys you'd created. Continue with [Validating your deployment](#validating-your-deployment) below.

### Validating your deployment

After deploying DKE using one of the methods described above, validate the deployment and the key store settings.

Run:

    src\customer-key-store\scripts\key_store_tester.ps1 mykeystoreurl/mykey

For example:

    key_store_tester.ps1 https://mycustomerkeystore.com/mykey

Ensure that no errors appear in the output. When you're ready, continue on with [registering your key store](#registering-your-key-store).

## Registering your key store

The following steps enable you to register the key store you've deployed to Azure. Registering your key store is the last step in deploying DKE before you can start creating labels.

To register your key store:

1. In your browser, open the [Microsoft Azure portal](https://ms.portal.azure.com/), and go to **All Services -> Identity -> App Registrations**.

2. Select **New registration,** and enter a meaningful name.

3. Select an account type from the options displayed.

    If you're using Microsoft Azure with a non-custom domain, such as **onmicrosoft.com**, select **Accounts in this organizational directory only (Microsoft only - Single tenant).**

    For example:

    :::image type="content" source="../media/dke-app-registration.png" alt-text="New App Registration":::

4. At the bottom of the page, select **Register** to create the new App Registration.

5. In your new App Registration, in the left pane, under **Manage,** select **Authentication**.

    If available, select the **Switch to the old experience** button.

6. In the **Implicit grant** area, choose the **ID tokens** checkbox.

    :::image type="content" source="../media/dke-select-id-tokens.png" alt-text="Select ID tokens checkbox":::

7. On the left pane, under **Manage,** select **Expose an API**.

8. Select the **Set** link next to the Application ID URI field. Enter the App Service URL, including both the hostname and domain.

    For example: https://mycustomerkeystoretest.com

    - The URL you enter must match the hostname where your key store is deployed.
    - If you're testing locally with Visual Studio, use **https://localhost:5001**.
    - In all cases, the scheme must be **https**.

    Select **Save** at the top to save your changes.

9. Still on the **Expose an API** page, in the **Scopes defined by this API** area, select **Add a scope**. In the new scope:

    1. Define the scope name as **user_impersonation**.

    2. Select the administrators and users who can consent.

    3. Define any remaining values required.

    4. Select **Add scope.**

    Select **Save** at the top to save your changes.

10. Still on the **Expose an API** page, in the **Authorized client applications** area, select **Add a client application**.

    In the new client application:

    1. Define the Client ID as **d3590ed6-52b3-4102-aeff-aad2292ab01c**. This value is the Microsoft Office client ID, and enables Office to obtain an access token for your key store.

    2. Under **Authorized scopes**, select the **user_impersonation** scope.

    3. Select **Add application**.

    4. Select **Save** at the top to save your changes.

Your DKE key store is now registered. Continue  by [creating labels using DKE](#create-labels-using-dke).

## Create labels using DKE

Once you've registered your key store, set up sensitivity labels in the Microsoft 365 compliance center and apply double key encryption to those labels. <!-- This said security center, but you set up labels in the compliance center then use DKE encryption>

In the label creation UI, select the **Use Double Key Encryption** option and enter the endpoint URL for your key.

For example:

:::image type="content" source="../media/dke-use-dke.png" alt-text="Select Use Double Key Encryption in the Microsoft 365 compliance center":::

Any DKE labels you add will start appearing for users in the latest versions of Microsoft 365 Apps for enterprise.

> [!NOTE]
> It may take up to 24 hours for the clients to refresh with the new labels.

### Enabling DKE in your client

If your DKE labels do not appear under the Sensitivity ribbon in Microsoft Office, your client may not yet have DKE enabled. 

Enable DKE for your client by adding the following registry keys:

    [HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\MSIPC\flighting]
    "DoubleKeyProtection"=dword:00000001

    [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSIPC\flighting]
    "DoubleKeyProtection"=dword:00000001
