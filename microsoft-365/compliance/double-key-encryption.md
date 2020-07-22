---
# required metadata

title: Double Key Encryption (DKE)
description: DKE enables you to protect highly sensitive data while maintaining full control of your key.
author: kccross
ms.author: krowley
manager: laurawi
ms.date: 07/21/2020
ms.topic: conceptual
ms.service: information-protection
audience: Admin
ms.reviewer: esaggese
localization_priority: Normal
ms.collection:
- M365-security-compliance

---

# Double Key Encryption (DKE)

> *Applies to: [Microsoft 365 Compliance](https://www.microsoft.com/microsoft-365/business/compliance-management), [Azure Information Protection](https://azure.microsoft.com/pricing/details/information-protection)*
>
> *Instructions for: [Azure Information Protection unified labeling client for Windows](https://docs.microsoft.com/azure/information-protection/faqs.md#whats-the-difference-between-the-azure-information-protection-classic-and-unified-labeling-clients)*
>
> *Service description for: [Microsoft 365 Compliance](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance)*

This public preview version of Double Key Encryption (DKE) enables you to use the Azure Information Protection Unified Labeling Client to protect highly sensitive content while maintaining full control of your key.

Double Key Encryption requires two keys, used together, to access protected content. You store one key in Microsoft Azure, and you hold the other key.

Double Key Encryption supports both cloud and on-premises deployments. These deployments help to ensure that encrypted data remains opaque wherever you store the protected data.

For more information about the default, cloud-based tenant root keys, see [Planning and implementing your Azure Information Protection tenant key](https://docs.microsoft.com/azure/information-protection/plan-implement-tenant-key).

Double Key Encryption is similar to a safety deposit box that requires both a bank key and a customer key to gain access. To decrypt protected content, you must use both the Microsoft managed key and the customer-held key.

The following video shows how Double Key Encryption works to secure your content.

If your organizations have any of the following requirements, you can use DKE to help secure your content:

- You want to ensure that *only you* can ever decrypt protected content, under all circumstances.
- You don't want Microsoft to have access to protected data on its own.
- You have regulatory requirements to hold keys within a geographical boundary. All customer-held keys for data encryption and decryption are maintained in your data center.

> [!VIDEO https://msit.microsoftstream.com/embed/video/f466a1ff-0400-a936-221c-f1eab45dc756]

## System and licensing requirements for DKE

This public preview release of Double Key Encryption for Microsoft 365 is available as part of Microsoft 365 E5 and Office 365 E5. If you don’t have a Microsoft 365 E5 license, you can sign up for a [trial](https://aka.ms/M365E5ComplianceTrial). For more information about these licenses, see [Microsoft 365 licensing guidance for security & compliance](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

**Office Insider** To use the public preview, you must be a member of the Office Insider program. To join Office Insider, go to [https://insider.office.com](https://insider.office.com). Once you're a member, prepare your environment to deploy Office Insider builds by choosing the right deployment method for your organization. For instructions, see [Getting started on deploying Office Insider builds](https://insider.office.com/business/deploy).

**Azure Information Protection**. DKE works with sensitivity labels and requires Azure Information Protection.

## Supported environments for storing and viewing DKE-protected content

**Supported applications**. [Microsoft 365 Apps for enterprise](https://www.microsoft.com/microsoft-365/business/microsoft-365-apps-for-enterprise-product) clients on Windows, including Word, Excel, and PowerPoint.

**Online content support**. Documents and files stored online in both Microsoft SharePoint and OneDrive for Business are supported. You can share encrypted content by email, but you can't view encrypted documents and files online. Instead, you must view protected content using the desktop apps on your local computer.

## About this public preview article

There are several ways you can complete some of the steps to deploy Double Key Encryption. This article provides detailed instructions so that less experienced admins successfully deploy the service. If you're experienced with the common technologies, such as git, shared by the deployment methods described in this article, you can choose to use your own methods.

For public preview, we've included step-by-step instructions on how to deploy the Double Key Encryption service to Azure. This scenario isn't something you'd likely do in production. For public preview using Azure is a quick way to deploy that lets you get started using Double Key Encryption right away.

You can choose to deploy the service wherever you want, whether it's locally on your network or with another provider. You'll need to publish the key store using methods appropriate for that location.

## Deploy Double Key Encryption

You'll follow these general steps to set up Double Key Encryption for your organization. The example in this article uses Azure as the deployment destination for the DKE service. If you're deploying to another location, you'll need to provide your own values.

1. [Install software prerequisites](#install-software-prerequisites)
1. [Clone the Double Key Encryption GitHub repository](#clone-the-dke-github-repository)
1. [Modify application settings](#modify-application-settings)
1. [Generate test keys](#generate-test-keys)
1. [Build the project](#build-the-project)
1. [Publish the key store](#publish-the-key-store)
1. [Validate your deployment](#validate-your-deployment)
1. [Register your key store](#register-your-key-store)
1. [Create sensitivity labels](#create-labels-using-dke)

When you're done, you can encrypt documents and files using DKE. For information, see [Apply sensitivity labels to your files and email in Office](https://support.microsoft.com/office/2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9).

### Install software prerequisites

There are two types of software prerequisites for Double Key Encryption

- [Double Key Encryption service prerequisites](#double-key-encryption-service-prerequisites)
- [Double Key Encryption prerequisites for client computers](#double-key-encryption-prerequisites-for-client-computers)

#### Double Key Encryption service prerequisites

Install these prerequisites on the computer where you want to install the DKE service.

**.NET Core 3.1 SDK**. Download and install the SDK from [Download .NET Core 3.1](https://dotnet.microsoft.com/download/dotnet-core/3.1).

**Visual Studio Code**. Download Visual Studio Code from [https://code.visualstudio.com/](https://code.visualstudio.com). Once installed, run Visual Studio Code and select **View** \> **Extensions**. Install these extensions.

- C# for Visual Studio Code

- NuGet Package Manager

**Microsoft Office Insider**. Set up at least one [deployment method](https://insider.office.com/business/deploy).

**Git resources**. Download and install one of the following.

- [Git](https://git-scm.com/downloads)

- [GitHub Desktop](https://desktop.github.com/)

- [GitHub Enterprise](https://github.com/enterprise)

**OpenSSL** You must have [OpenSSL](https://slproweb.com/products/Win32OpenSSL.html) installed to [generate test keys](#generate-test-keys) after you deploy DKE. Make sure you're invoking it correctly from your environment variables path. For example, see "Add the installation directory to PATH" at https://www.osradar.com/install-openssl-windows/ for details.

#### Double Key Encryption prerequisites for client computers

Install these prerequisites on each client computer where you want to protect and consume protected documents.

**Microsoft Office** version *.12711 or later.

**Azure Information Protection Unified Labeling Client** versions 2.7.93.0 or later. Download and install the Unified Labeling client from [Microsoft](https://www.microsoft.com/download/details.aspx?id=53018).

### Clone the DKE GitHub repository

Microsoft supplies the DKE source files in a GitHub repository. You clone the repository to build the project locally for your organization's use. The DKE GitHub repository is located at [https://github.com/Azure-Samples/DoubleKeyEncryptionService](https://github.com/Azure-Samples/DoubleKeyEncryptionService).

The following instructions are intended for inexperienced git or Visual Studio Code users:

1. In your browser, go to: [https://github.com/Azure-Samples/DoubleKeyEncryptionService](https://github.com/Azure-Samples/DoubleKeyEncryptionService)

1. Towards the right side of the screen, select **Code**. Your version of the UI might show a **Clone or download** button. Then, in the dropdown that appears, select the copy icon to copy the URL to your clipboard.

    For example:

    :::image type="content" source="../media/dke-clone.png" alt-text="Clone the Double Key Encryption service repository from GitHub":::

3. In Visual Studio Code, select **View** \> **Command Palette** and select **Git: Clone**. To jump to the option in the list, start typing `git: clone` to filter the entries and then select it from the drop-down. For example:

    :::image type="content" source="../media/dke-vscode-clone.png" alt-text="Visual Studio Code GIT:Clone option":::

4. In the text box, paste the URL that you copied from Git and select **Clone from GitHub**.

5. In the **Select Folder** dialog that appears, browse to and select a location to store the repository. At the prompt, select **Open**.

    The repository is opened in Visual Studio Code, and displays the current Git branch at the bottom left. Your current branch should be **master**.

    For example:

    :::image type="content" source="../media/dke-vscode-master.png" alt-text="Visual Studio Code master branch":::

6. Select the word **master,** and then select **public_preview** from the list of branches. 

   > [!IMPORTANT]
   > Selecting the public_preview branch ensures that you have the correct files to build the project. If you do not choose the correct branch your deployment will fail.

You now have your DKE source repository set up locally. Next, [modify application settings](#modify-application-settings) for your organization.

### Modify application settings

To deploy the DKE service, you must modify the following types of application settings:

- [Key access settings](#key-access-settings)
- [Tenant and key settings](#tenant-and-key-settings)

You modify application settings in the appsettings.json file. This file is located in the DoubleKeyEncryptionService repo you cloned locally under DoubleKeyEncryptionService\src\customer-key-store. For example, in Visual Studio Code, you can browse to the file as shown in the following picture.

:::image type="content" source="../media/dke-appsettingsjson.png" alt-text="Locating the appsettings.json file for DKE.":::

#### Key access settings

Choose whether to use email or role authorization. DKE supports only one of these authentication methods at a time.

- **Email authorization**. Allows your organization to authorize access to keys based on email addresses only.

- **Role authorization**. Allows your organization to authorize access to keys based on Active Directory groups, and requires that the web service can query LDAP.

**To set key access settings for DKE using email authorization**

1. Open the **appsettings.json** file and locate the `AuthorizedEmailAddress` setting.

2. Add the email address or addresses that you want to authorize. Separate multiple email addresses with double quotes and commas. For example:

   ```json
   "AuthorizedEmailAddress": ["email1@company.com", "email2@company.com ", "email3@company.com"]
   ```

3. Locate the `LDAPPath` setting and remove the text `If role authorization is used then this is the LDAP path` between the double quotes. Leave the double quotes in place. When you're finished, the setting should look like this.

   ```json
   "LDAPPath": ""
   ```

4. Locate the `AuthorizedRoles` setting and delete the entire line.

This image shows the **appsettings.json** file correctly formatted for email authorization.

   :::image type="content" source="../media/dke-email-accesssetting.png" alt-text="The appsettings.json file showing email authorization method":::

**To set key access settings for DKE using role authorization**

1. Open the **appsettings.json** file and locate the `AuthorizedRoles` setting.

2. Add the Active Directory group names you want to authorize. Separate multiple group names with double quotes and commas. For example:

   ```json
   "AuthorizedRoles": ["group1", "group2", "group3"]
   ```

3. Locate the `LDAPPath` setting and add the LDAP domain. For example:

   ```json
   "LDAPPath": "contoso.com"
   ```

4. Locate the `AuthorizedEmailAddress` setting and delete the entire line.

This image shows the **appsettings.json** file correctly formatted for role authorization.

   :::image type="content" source="../media/dke-role-accesssetting.png" alt-text="appsettings.json file showing role authorization method":::

#### Tenant and key settings

DKE tenant and key settings are located in the **appsettings.json** file.

In the **appsettings.json** file, modify the following values:

Under `ValidIssuers`, replace `<tenantid>` with your tenant ID. You can locate your tenant ID by going to the Azure Portal and viewing the [tenant properties blade](https://aad.portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Properties).
- `JwtAudience`. Replace `<yourhostname>` with the hostname of the machine where the DKE service will run.

  > [!IMPORTANT]
  > The value for `JwtAudience` must match the name of your host *exactly*. You may use **localhost:5000** while debugging. However, When you're done debugging, make sure to update this value to the server's hostname.

- `TestKeys:Name`. Enter a name for your key. For example: `TestKey1`
- `TestKeys:Id`. Create a GUID and enter it as the `TestKeys:ID` value. For example, `DCE1CC21-FF9B-4424-8FF4-9914BD19A1BE`. You can use a site like [Online GUID Generator](https://guidgenerator.com/) to randomly generate a GUID.

### Generate test keys

Once you have your application settings defined, you're ready to generate public and private test keys.

To generate keys:

1. From the Windows Start menu, run the OpenSSL Command Prompt.

1. Change to the folder where you want to save the test keys. The files you create by completing the steps in this task are stored in the same folder.

1. Generate the new test key.

   ```dos
   openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 365
   ```

2. Generate the private key.

   ```dos
   openssl rsa -in key.pem -out privkeynopass.pem
   ```

1. Generate the public key.

   ```dos
   openssl rsa -in key.pem -pubout > pubkeyonly.pem
   ```

1. In a text editor, open **pubkeyonly.pem**. Copy all of the content in the **pubkeyonly.pem** file, except the first and last lines, into the `PublicPem` section of the **appsettings.json** file.

1. In a text editor, open **privkeynopass.pem**. Copy all of the content in the **privkeynopass.pem** file, except the first and last lines, into the `PrivatePem` section of the **appsettings.json** file.

1. Remove all blank spaces and newlines in both the **PublicPem** and **PrivatePem** sections.

    > [!IMPORTANT]
    > When you copy this content, do not delete any of the PEM data.

1. Open the **Startup.cs** file, and locate the following lines:

   ```c#
        #if USE_TEST_KEYS
        #error !!!!!!!!!!!!!!!!!!!!!! Use of test keys is only supported for testing,
        DO NOT USE  FOR PRODUCTION !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        services.AddSingleton<ippw.IKeyStore, ippw.TestKeyStore>();
        #endif
   ```

1. Replace these lines with the following text:

   ```csharp
   services.AddSingleton<ippw.IKeyStore, ippw.TestKeyStore>();
   ```

   The end results should look similar to the following.

   :::image type="content" source="../media/dke-startupcs-usetestkeys.png" alt-text="startup.cs file for public preview":::

Now you're ready to [build your DKE project](#build-the-project).

### Build the project

Use the following instructions to build the DKE project locally:

1. In Visual Studio Code, in the DKE service repository, select **View** \> **Command Palette** and then type **build** at the prompt.

1. From the list, choose **Tasks: Run build task**.

   If there are no build tasks found, select **Configure Build Task** and create one for .NET core as follows.

   :::image type="content" source="../media/dke-configurebuildtask.png" alt-text="Configure missing build task for .NET":::

   1. Choose **Create tasks.json from template**.

   :::image type="content" source="../media/dke-createtasksjsonfromtemplate.png" alt-text="Create tasks.json file from template for DKE":::

   2. From the list of template types, select **.NET Core**.

   :::image type="content" source="../media/dke-tasksjsontemplate.png" alt-text="Create tasks.json file from template for DKE":::

   3. In the build section, locate the path to the **customerkeystore.csproj** file. If it's not there, add the following line:

      ```json
      "${workspaceFolder}/src/customer-key-store/customerkeystore.csproj",
      ```

  4. Run the build again.

1. Verify that there are no red errors in the output window.

   If there are red errors, check the console output. Ensure that you completed all the previous steps correctly and the correct build versions are present.

2. Select **Run** \> **Start Debugging** to debug the process. If you're prompted to select an environment, select **.NET core**.

The .NET core debugger typically launches to ``https://localhost:5001`. To view your test key, go to `https://localhost:5001` and append a forward slash (/) and the name of your key. For example:

```https
https://localhost:5001/TestKey1
```

The key should display in JSON format.

Your setup is now complete. Before you publish the keystore, in appsettings.json, for the JwtAudience setting, ensure the value for hostname exactly matches your App Service host name. You may have changed it to localhost to troubleshoot the build.

### Publish the key store

The following steps describe how to create an Azure App Service instance to host your DKE deployment, and how to publish your generated keys to Azure.

To create an Azure Web App instance to host your DKE deployment:

1. In your browser, sign in to the [Microsoft Azure portal](https://ms.portal.azure.com), and go to **App Services** > **Add**.

1. Select your subscription and resource group and define your instance details.

    - Enter the hostname of the computer where you want to install the DKE service. Make sure it's the same name as the one defined for the JwtAudience setting in the [**appsettings.json**](#tenant-and-key-settings) file. The value you provide for the name is also the WebAppInstanceName.

    - For **Publish**, select **code**, and for **Runtime stack**, select **.NET Core 3.1**.

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
    > [Publishing via Visual Studio](https://docs.microsoft.com/aspnet/core/tutorials/) and to an [on-premises system](https://docs.microsoft.com/aspnet/core/tutorials/publish-to-iis?view=aspnetcore-3.1&tabs=netcore-cli) is described in the [ASP .NET documentation](https://docs.microsoft.com/aspnet/core/). If you use one of these methods, open the instructions in a separate tab so that you can return here easily when you're done.

#### Publish via ZipDeployUI

1. Go to `https://<WebAppInstanceName>.scm.azurewebsites.net/ZipDeployUI`.

    For example: https://customerkeystoreforpublicpreview.scm.azurewebsites.net/ZipDeployUI

1. In the codebase for the key store, go to the **customer-key-store\src\customer-key-store** folder, and verify that this folder contains the **customerkeystore.csproj** file.

1. Run: **dotnet publish**

     The output window displays the directory where the publish was deployed.

    For example: `customer-key-store\src\customer-key-store\bin\Debug\netcoreapp3.1\publish\`

1. Send all files in the publish directory to a .zip file. When creating the .zip file, make sure that all files in the directory are at the root level of the .zip file.

1. Drag and drop the .zip file you create to the ZipDeployUI site you opened above. For example: https://customerkeystoreforpublicpreview.scm.azurewebsites.net/ZipDeployUI

DKE is deployed and you can browse to the test keys you've created. Continue to [Validate your deployment](#validate-your-deployment) below.

#### Publish via FTP

1. Connect to the App Service you created [above](#publish-the-key-store).

    In your browser, go to: **Azure portal** > **App Service** > **Deployment Center** > **Manual Deployment** > **FTP** > **Dashboard**.

1. Copy the connection strings displayed to a local file. You'll use these strings to connect to the Web App Service and upload files via FTP.

    For example:

    :::image type="content" source="../media/dke-ftp-dashboard.png" alt-text="Copy connection strings from the FTP dashboard":::

1. In the codebase for the key storage, go to the **customer-key-store\src\customer-key-store directory**.

1. Verify that this directory contains the **customerkeystore.csproj** file.

1. Run: **dotnet publish**

    The output contains the directory where the publish was deployed.

    For example: `customer-key-store\src\customer-key-store\bin\Debug\netcoreapp3.1\publish\`

1. Send all files in the publish directory to a zip file. When creating the .zip file, make sure that all files in the directory are at the root level of the .zip file.

1. From your FTP client, use the connection information you copied to connect to your App Service. Upload the .zip file you created in the previous step to the root directory of your Web App.

DKE is deployed and you can browse to the test keys you'd created. Next, [Validate your deployment](#validate-your-deployment).

### Validate your deployment

After deploying DKE using one of the methods described above, validate the deployment and the key store settings.

Run:

src\customer-key-store\scripts\key_store_tester.ps1 mykeystoreurl/mykey

For example:

key_store_tester.ps1 https://mycustomerkeystore.com/mykey

Ensure that no errors appear in the output. When you're ready, [register your key store](#register-your-key-store).

## Register your key store

The following steps enable you to register your key store. Registering your key store is the last step in deploying DKE before you can start creating labels.

To register your key store:

1. In your browser, open the [Microsoft Azure portal](https://ms.portal.azure.com/), and go to **All Services** \> **Identity** \> **App Registrations**.

2. Select **New registration**, and enter a meaningful name.

3. Select an account type from the options displayed.

    If you're using Microsoft Azure with a non-custom domain, such as **onmicrosoft.com**, select **Accounts in this organizational directory only (Microsoft only - Single tenant).**

    For example:

    :::image type="content" source="../media/dke-app-registration.png" alt-text="New App Registration":::

4. At the bottom of the page, select **Register** to create the new App Registration.

5. In your new App Registration, in the left pane, under **Manage**, select **Authentication**.

6. Select **Add a platform**.
 
7. On the **Configure platforms** popup select **Web**.
 
8. Under **Redirect URIs** enter the URI of your double key encryption service. Enter the App Service URL, including both the hostname and domain.

    For example: https://mycustomerkeystoretest.com

    - The URL you enter must match the hostname where your key store is deployed.
    - If you're testing locally with Visual Studio, use **https://localhost:5001**.
    - In all cases, the scheme must be **https**.

    Ensure the hostname exactly matches your App Service host name. You may have changed it to localhost to troubleshoot the build. In appsettings.json, this is the hostname you identified as the value for the JwtAudience setting.

6. Under **Implicit grant**, select the **ID tokens** checkbox.

1. Select **Save** to save your changes.

7. On the left pane, select **Expose an API**, then next to Application ID URI, select **Set**.

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

Your DKE key store is now registered. Continue by [creating labels using DKE](#create-labels-using-dke).

## Create labels using DKE

Once you've registered your key store, set up sensitivity labels in the Microsoft 365 compliance center and apply double key encryption to those labels.

In the sensitivity label creation UI, select **Use Double Key Encryption** and enter the endpoint URL for your key.

For example:

:::image type="content" source="../media/dke-use-dke.png" alt-text="Select Use Double Key Encryption in the Microsoft 365 compliance center":::

Any DKE labels you add will start appearing for users in the latest versions of Microsoft 365 Apps for enterprise.

> [!NOTE]
> It may take up to 24 hours for the clients to refresh with the new labels.

### Enable DKE in your client

If your DKE labels don't appear under the Sensitivity ribbon in Microsoft Office, your client may not have DKE enabled.

Enable DKE for your client by adding the following registry keys:

```ini
    [HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\MSIPC\flighting]
    "DoubleKeyProtection"=dword:00000001

    [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSIPC\flighting]
    "DoubleKeyProtection"=dword:00000001
```
