---
title: "Enhancing mail flow with MTA-STS "
f1.keywords:
- NOCSH
ms.author: v-bshilpa
author: Benny-54
manager: serdars
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
ms.localizationpriority: high 
ms.assetid: 
ms.collection:
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
description: Learn how to enhance mail flow with MTA-STS.
---

# Enhancing mail flow with MTA-STS

Support for the [SMTP MTA Strict Transport Security](https://datatracker.ietf.org/doc/html/rfc8461) (MTA-STS) standard is added to Exchange Online. The standard was developed to ensure that TLS is always used for connections between email servers. It also provides a way for sending servers to validate that the receiving server has a trusted certificate. If either TLS isn't offered or the certificate isn't valid, the sender refuses to deliver messages. These new checks improve the overall security of SMTP and protect against man-in-the-middle attacks.

MTA-STS can be broken down into two scenarios: Inbound and Outbound Protection. Inbound covers the protection of domains hosted in Exchange Online with MTA-STS and Outbound covers the MTA-STS validations performed by Exchange Online when sending emails to MTA-STS protected domains.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Outbound Protection

All messages sent outbound from Exchange Online to MTA-STS protected recipients are being validated with these extra security checks set out by the MTA-STS standard. There's nothing admins need to do to apply it. Our outbound implementation respects the wishes of the recipient domain owners via their MTA-STS policy. MTA-STS forms part of the security infrastructure of Exchange Online, and it's therefore always on (like other core SMTP features).

## Inbound Protection

Domain owners can take action to protect emails sent to their domains with MTA-STS, if their MX record points to Exchange Online. If your MX record points to an intermediary third-party service, you'll need to check that MTA-STS requirements are met by them and follow their instructions.

Once MTA-STS is set up for your domain, any messages sent from senders who support MTA-STS will perform the validations laid out by the standard to ensure a secure connection. If you're receiving an email from a sender who doesn't support MTA-STS, the email will still be delivered without the extra protection. Likewise, there's no disruption to messages if you aren't using MTA-STS yet but the sender supports it. The only scenario where messages aren't delivered is when both sides are using MTA-STS and MTA-STS validation fails.

## How To Adopt MTA-STS

MTA-STS allows a domain to declare support for TLS and communicate the MX record and destination certificate to expect. It also indicates what a sending server must do if there's a problem. This communication is done through a combination of a DNS TXT record and a policy file that's published as an HTTPS webpage. The HTTPS-protected policy introduces another security protection that attackers must overcome.

A domain's MTA-STS TXT record indicates MTA-STS support to a sender, after which the domain's HTTPS-based MTA-STS policy is retrieved by the sender. The following TXT record is an example that declares support for MTA-STS:

`_mta-sts.contoso.com. 3600 IN TXT v=STSv1; id=20220101000000Z;`

A domain's MTA-STS policy needs to be located at a predefined URL that's hosted by the domain's web infrastructure. The URL syntax is `https://mta-sts.<domain name>/.well-known/mta-sts.txt`. For example, Microsoft.com's policy is found at: <https://mta-sts.microsoft.com/.well-known/mta-sts.txt>.

```text
version: STSv1
mode: enforce
mx: *.mail.protection.outlook.com
max_age: 604800
```

Any customer whose MX records point directly to Exchange Online can specify in their own policy, with the same values that are shown above in the microsoft.com policy. The unique required information in the policy is the MX record that points to Exchange Online (`*`.mail.protection.outlook.com), and the same certificate is shared by all Exchange Online customers. It's possible to publish your policy in *test* mode to ensure it's valid before changing it to *enforce* mode. There are third-party validation tools out there that can check your configuration.

These policies aren't something that Exchange Online can host on behalf of customers, so customers must configure their domain's STS policy using the services they prefer. Azure services can be easily used for policy hosting and there's a configuration walk-through later in this article. The policy needs to be protected by HTTPS with a certificate for the subdomain `mta-sts.<domain name>`.

Once the DNS TXT record is created and the policy file is available at the required HTTPS URL, the domain will be protected by MTA-STS. Details about MTA-STS are available in [RFC 8461](https://datatracker.ietf.org/doc/html/rfc8461).

### Configuring Inbound MTA-STS with Azure Services

> [!NOTE]
> These configuration flows were developed to help Microsoft Exchange Online customers host their MTA-STS policy using Azure resources. This configuration flow assumes that you're an Exchange Online customer who is aware of how MTA-STS works and its requirements. For more information about the protocol beyond this topic, see [RFC8461](https://www.rfc-editor.org/rfc/rfc8461.html).

There are two Azure resources that can be used to host the MTA-STS policy: [Azure Static Web App](https://azure.microsoft.com/services/app-service/static/) and [Azure Functions](/azure/azure-functions/functions-overview). Although this article describes how to deploy the policy using both the resources, the recommended method is [Azure Static Web App](https://azure.microsoft.com/services/app-service/static/) as it’s designed for hosting static pages such as the STS policy, and Azure simplifies the configuration by providing a TLS certificate for the MTA-STS webpage out of the box, without requiring more configuration. If you aren't able to use [Azure Static Web App](https://azure.microsoft.com/services/app-service/static/), you can also host your policy as serverless code using [Azure Functions](/azure/azure-functions/functions-overview). This approach isn't the preferred method because Azure Function is a feature designed for other scenarios and it doesn’t issue a TLS certificate automatically, unlike Azure Static Web Apps. So using [Azure Functions](/azure/azure-functions/functions-overview) for MTA-STS requires that you issue your own “mta-sts.[your domain]” certificate and bind it to the function.

Regardless of which approach you've taken, we encourage you to validate that your policy is properly configured and the response time is acceptable – timeout per RFC guidance is 60 seconds.

These configuration flows are intended to provide only technical information about Azure features that can be used to host the MTA-STS policy and doesn't provide any information about Azure features’ charging or costs. If you want to know Azure feature costs, use the Azure [Pricing Calculator](https://azure.microsoft.com/pricing/calculator/).

#### Option 1 (RECOMMENDED): Azure Static Web App

1. Create an Azure DevOps organization or use an organization that already exists. In this example, an organization called “ContosoCorporation” will be used to host the MTA-STS policy.

   :::image type="content" source="../media/projects-tab.png" alt-text="The screenshot that shows the projects tab." lightbox="../media/projects-tab.png":::

2. In **Repos > Files**, clone your repository in any IDE that you prefer. In this example, the repo will be cloned in Visual Studio.

   :::image type="content" source="../media/clone-to-vs-code.png" alt-text="The screenshot that shows an example of cloning to visual studio code." lightbox="../media/clone-to-vs-code.png":::

3. Once the repo is cloned, create the following folder path: `home\.well-known\`. Then, create the following files: 

    - File 1: home\.well-known\mta-sts.txt

   > [!NOTE]
   > This configuration allows only Exchange Online to receive messages on behalf of your domain. If you're using multiple email providers, you need to reference MX hosts for those other providers' domains as well. Wildcards or ‘*’ must not be used as the MX prefix in all MTA-STS scenarios; the settings below are specific to Exchange Online only and must NOT be used as general guidance for configuring MTA-STS. 

    1. Input the following text into the mta-sts.txt file:
        ```powershell
           version: STSv1
           mode: testing
           mx: *.mail.protection.outlook.com
           max_age: 604800
        ```
       > [!NOTE]
       > It's recommended that the policy mode be initially set as ‘testing’. Then, at the end of the configuration and after validating that the policy is working as expected, update the mta-sts.txt file such that the mode is ‘enforce’.
 
       The file must only contain the content as shown in the following screenshot:

       :::image type="content" source="../media/contents-of-file1.png" alt-text="The screenshot that displays the contents of File1." lightbox="../media/contents-of-file1.png":::

    - File 2: home\index.html
    
    1. Create an index.html file and input the following code into it:
    
       ```powershell
           <!DOCTYPE html>
           <html lang="en">

           <head>
           <meta charset="UTF-8">
           <title>MTA-STS</title>
           </head>

           <body>
           <h1>MTA-STS Static Website index</h1>
           </body>

           </html>
       ```
           
      The file must only contain the content as shown in the following screenshot:
   
      :::image type="content" source="../media/contents-of-file2.png" alt-text="The screenshot that displays the contents of File2." lightbox="../media/contents-of-file2.png":::

      Once the folder path and files are created, don’t forget to commit the changes and push them into your main branch.

4. Create a new Azure Static Web App with the following configuration:

    - **Name**: MTA-STS-StaticWebApp
    - **Plan type**: Standard
    - **Deployment Details**: Azure DevOps
    - **Organization**: ContosoCorporation
    - **Project**: MTA-STS_Project
    - **Repository**: MTA-STS_Project
    - **Branch**: master
    - **Build Presets**: Angular
    - **App Location**: /home
   
    :::image type="content" source="../media/new-app-with-details.png" alt-text="The screenshot that shows a newly created Azure Static Web App with its information." lightbox="../media/new-app-with-details.png":::

5. Once the Static Web App creation is done and the resource is provisioned, go to **Overview > Manage deployment token**; then copy the token as it will be used in the next step.

6. Go to **Pipelines > Create Pipeline > Azure Repos Git > MTA-STS_Project**, and perform the following subtasks:
    1. Go to **Variables > New Variable** and type the following:
        1. **Name**: token
        1. **Value**: (paste the token that you previously copied)
    1. Once the variable is saved, return to **Review your pipeline YAML** and paste the following yml, save and run.
           
       ```powershell
           trigger:
           - main

           pool:
           vmImage: ubuntu-latest

           steps:
           - checkout: self
           submodules: true
           - task: AzureStaticWebApp@0
           inputs:
            app_location: '/home'
            azure_static_web_apps_api_token: $(token)
       ```

       In Azure DevOps, during deployment, if you experience the error **No hosted parallelism has been purchased or granted**, either request through this [form](https://forms.office.com/pages/responsepage.aspx?id=v4j5cvGGr0GRqy180BHbR63mUWPlq7NEsFZhkyH8jChUMlM3QzdDMFZOMkVBWU5BWFM3SDI2QlRBSC4u) or implement a configuration through **Organization Settings > Parallel jobs > Microsoft Hosted > Change > Paid Parallel jobs** such that “Paid parallel jobs” are allowed.

7. Once the job finishes successfully, you can validate the deployment through the Azure portal by going to **Azure Static Web App > Environment > Browser**. You must see the index.html file's content.

8. Add your vanity domain in **Azure Static Web App > Custom domains > Add**. You'll be required to create a **CNAME** record through your DNS provider (for example, GoDaddy) to validate that the zone belongs to you. Once the validation is finished, Azure will issue a certificate and bind it to your Static Web App automatically.

9. Validate that your MTA-STS policy is published through: https://mta-sts.[your domain]/.well-known/mta-sts.txt.

10. Create the MTA-STS TXT DNS record through your DNS provider. The format is as follows:
     
    ```powershell
        Hostname: _mta-sts.<domain name>
        TTL: 3600 (recommended)
        Type: TXT
        Text: v=STSv1; id=<ID unique for your domain’s STS policy>Z;
    ```

    > [!NOTE]
    > An example MTA-STS TXT record can be found in [How To Adopt MTA-STS](#how-to-adopt-mta-sts).

11. Once the TXT record is available in DNS, validate your MTA-STS configuration. Once the configuration has been successfully validated, update the mta-sts.txt file so that the policy mode is ‘enforce’; then update your policy ID in the TXT record.

#### Option 2: Azure Function

1. Create a new Azure Function App with the following configuration:

    - **Function App name**: [As your choice]
    - **Publish**: Code
    - **Runtime stack**: .NET
    - **Version**: 6
    - **Operating System**: Windows
    - **Plan Type**: [As your choice]

    :::image type="content" source="../media/new-azure-function-app.png" alt-text="The screenshot that shows the configurations of a new Azure Function app." lightbox="../media/new-azure-function-app.png":::

2. Add your custom domain to the Function App. You'll be required to create a **CNAME** record to validate that the domain belongs to you.

   :::image type="content" source="../media/custom-domain-to-add.png" alt-text="The screenshot that shows the custom domain to be added to the Function App." lightbox="../media/custom-domain-to-add.png":::

3. Bind your mta-sts.[your domain] to the Function App.

   :::image type="content" source="../media/binding-to-function-app.png" alt-text="The screenshot that shows the process of binding the domain to the Function App." lightbox="../media/binding-to-function-app.png":::

4. In **App File**, add the following extension to the host.json of your Function App to eliminate the routePrefix. This addition is necessary to remove the /api from the function URL.
   
    ```powershell
        "extensions": {
    "http": {
      "routePrefix": ""
      }
    }
    ```

   :::image type="content" source="../media/extension-added-to-app-file.png" alt-text="The screenshot that shows the extension being added to the app file." lightbox="../media/extension-added-to-app-file.png":::

5. In your Function App, go to **Functions > Create** and configure the following parameters: 

   > [!NOTE]
   > Although this example describes the function development through the portal, you're free to use VS Code, or any other tool that you prefer.

    - **Development environment**: [As your choice, this example will use “Develop in Portal”]
    - **Select a template**: HTTP trigger
    - **New Function**: [As your choice]
    - **Authorization level**: Anonymous

    :::image type="content" source="../media/create-function-screen.png" alt-text="The screenshot that shows the Create function page." lightbox="../media/create-function-screen.png":::

6. Once the function is created, open **Code + Test** and develop in C# a simple async HTTP response that will be your MTA-STS policy. The following example indicates that Exchange Online is expected to receive emails:

   > [!NOTE]
   > It's recommended that the policy mode be initially set as ‘testing’. Then, at the end of the configuration and after validating that the policy is working as expected, update the mta-sts.txt file such that the mode is ‘enforce’.

   :::image type="content" source="../media/mta-sts-policy.png" alt-text="The screenshot that shows the mta-sts policy that's developed." lightbox="../media/mta-sts-policy.png":::

7. In **Integration > HTTP (req)**, edit the trigger to the following values:

    - **Route Template**: .well-known/mta-sts.txt
    - **Selected HTTP methods**: GET

    :::image type="content" source="../media/edit-trigger-screen.png" alt-text="The screenshot that shows the Edit trigger page." lightbox="../media/edit-trigger-screen.png":::

8. Validate that your MTA-STS policy is published through: https://mta-sts.[your domain]/.well-known/mta-sts.txt.

9. Create the MTA-STS TXT DNS record through your DNS provider in the following format:

     ```powershell
        Hostname: _mta-sts.<domain name>
        TTL: 3600 (recommended)
        Type: TXT
        Text: v=STSv1; id=<ID unique for your domain’s STS policy>Z;
     ```

   > [!NOTE]
   > An example MTA-STS TXT record can be found in [How To Adopt MTA-STS](#how-to-adopt-mta-sts).

10. Once the TXT record is available in DNS, validate your MTA-STS configuration. Once the configuration has been successfully validated, update the mta-sts.txt file such that the policy mode is ‘enforce’; then update your policy ID in the TXT record.
