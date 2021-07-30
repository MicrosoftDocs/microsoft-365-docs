---
title: Configure Micro Focus ArcSight to pull Microsoft Defender for Endpoint detections
description: Configure Micro Focus ArcSight to receive and pull detections from Microsoft Defender Security Center
keywords: configure Micro Focus ArcSight, security information and events management tools, arcsight
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Configure Micro Focus ArcSight to pull Defender for Endpoint detections

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configurearcsight-abovefoldlink)

You'll need to install and configure some files and tools to use Micro Focus ArcSight so that it can pull Defender for Endpoint detections.

> [!NOTE]
>
>- [Defender for Endpoint Alert](alerts.md) is composed from one or more detections
>- [Defender for Endpoint Detection](api-portal-mapping.md) is composed from the suspicious event occurred on the Device and its related Alert details.

## Before you begin

Configuring the Micro Focus ArcSight Connector tool requires several configuration files for it to pull and parse detections from your Azure Active Directory (AAD) application.

This section guides you in getting the necessary information to set and use the required configuration files correctly.

- Make sure you have enabled the SIEM integration feature from the **Settings** menu. For more information, see [Enable SIEM integration in Defender for Endpoint](enable-siem-integration.md).

- Have the file you saved from enabling the SIEM integration feature ready. You'll need to get the following values:
  - OAuth 2.0 Token refresh URL
  - OAuth 2.0 Client ID
  - OAuth 2.0 Client secret

- Have the following configuration files ready:
  - WDATP-connector.properties
  - WDATP-connector.jsonparser.properties

    You would have saved a .zip file which contains these two files when you chose Micro Focus ArcSight as the SIEM type you use in your organization.

- Make sure you generate the following tokens and have them ready:
  - Access token
  - Refresh token

  You can generate these tokens from the **SIEM integration** setup section of the portal.

## Install and configure Micro Focus ArcSight FlexConnector

The following steps assume that you have completed all the required steps in [Before you begin](#before-you-begin).

1. Install the latest 32-bit Windows FlexConnector installer. You can find this in the HPE Software center. The tool is typically installed in the following default location: `C:\Program Files\ArcSightFlexConnectors\current\bin`.</br></br>You can choose where to save the tool, for example C:\\*folder_location*\current\bin where *folder_location* represents the installation location.

2. Follow the installation wizard through the following tasks:
   - Introduction
   - Choose Install Folder
   - Choose Install Set
   - Choose Shortcut Folder
   - Pre-Installation Summary
   - Installing...

   You can keep the default values for each of these tasks or modify the selection to suit your requirements.

3. Open File Explorer and locate the two configuration files you saved when you enabled the SIEM integration feature. Put the two files in the FlexConnector installation location, for example:

   - WDATP-connector.jsonparser.properties: C:\\*folder_location*\current\user\agent\flexagent\

   - WDATP-connector.properties: C:\\*folder_location*\current\user\agent\flexagent\

   > [!NOTE]
   > You must put the configuration files in this location, where *folder_location* represents the location where you installed the tool.

4. After the installation of the core connector completes, the Connector Setup window opens. In the Connector Setup window, select **Add a Connector**.

5. Select Type: **ArcSight FlexConnector REST** and click **Next**.

6. Type the following information in the parameter details form. All other values in the form are optional and can be left blank.

   <br>

   ****

   |Field|Value|
   |---|---|
   |Configuration File|Type in the name of the client property file. The name must match the file provided in the .zip that you downloaded. <p> For example, if the configuration file in "flexagent" directory is named "WDATP-Connector.jsonparser.properties", you must type "WDATP-Connector" as the name of the client property file.|
   |Events URL|Depending on the location of your datacenter, select either the EU or the US URL: <ul><li>**For EU**:  `https://<i></i>wdatp-alertexporter-eu.windows.com/api/alerts/?sinceTimeUtc=$START_AT_TIME`</li><li>**For US**: `https://<i></i>wdatp-alertexporter-us.windows.com/api/alerts/?sinceTimeUtc=$START_AT_TIME`</li><li>**For UK**: `https://<i></i>wdatp-alertexporter-uk.windows.com/api/alerts/?sinceTimeUtc=$START_AT_TIME`</li></ul>|
   |Authentication Type|OAuth 2|
   |OAuth 2 Client Properties file|Browse to the location of the *wdatp-connector.properties* file. The name must match the file provided in the .zip that you downloaded.|
   |Refresh Token|You can obtain a refresh token in two ways: by generating a refresh token from the **SIEM settings** page or using the restutil tool. <p> For more information on generating a refresh token from the **Preferences setup** , see [Enable SIEM integration in Defender for Endpoint](enable-siem-integration.md). <p> **Get your refresh token using the restutil tool**: <ol><li>Open a command prompt. Navigate to C:\\*folder\_location*\current\bin where *folder\_location* represents the location where you installed the tool.</li><li>Type: `arcsight restutil token -config` from the bin directory. For example: **arcsight restutil boxtoken -proxy proxy.location.hp.com:8080**. A Web browser window will open.</li><li>Type in your credentials then click on the password field to let the page redirect. In the login prompt, enter your credentials.</li><li>A refresh token is shown in the command prompt.</li><li>Copy and paste it into the **Refresh Token** field.|
   |

7. A browser window is opened by the connector. Login with your application credentials. After you log in, you'll be asked to give permission to your OAuth2 Client. You must give permission to your OAuth 2 Client so that the connector configuration can authenticate.

   If the <code>redirect_uri</code> is a https URL, you'll be redirected to a URL on the local host. You'll see a page that requests for you to trust the certificate supplied by the connector running on the local host. You'll need to trust this certificate if the redirect_uri is a https.

   If however you specify a http URL for the redirect_uri, you do not need to provide consent in trusting the certificate.

8. Continue with the connector setup by returning to the Micro Focus ArcSight Connector Setup window.

9. Select the **ArcSight Manager (encrypted)** as the destination and click **Next**.

10. Type in the destination IP/hostname in **Manager Hostname** and your credentials in the parameters form. All other values in the form should be retained with the default values. Click **Next**.

11. Type in a name for the connector in the connector details form. All other values in the form are optional and can be left blank. Click **Next**.

12. The ESM Manager import certificate window is shown. Select **Import the certificate to connector from destination** and click **Next**. The **Add connector Summary** window is displayed and the certificate is imported.

13. Verify that the details in the **Add connector Summary** window is correct, then click **Next**.

14. Select **Install as a service** and click **Next**.

15. Type a name in the **Service Internal Name** field. All other values in the form can be retained with the default values or left blank . Click **Next**.

16. Type in the service parameters and click **Next**. A window with the **Install Service Summary** is shown. Click **Next**.

17. Finish the installation by selecting **Exit** and **Next**.

## Install and configure the Micro Focus ArcSight console

1. Follow the installation wizard through the following tasks:
   - Introduction
   - License Agreement
   - Special Notice
   - Choose ArcSight installation directory
   - Choose Shortcut Folder
   - Pre-Installation Summary

2. Click **Install**. After the installation completes, the ArcSight Console Configuration Wizard opens.

3. Type localhost in **Manager Host Name** and 8443 in **Manager Port** then click **Next**.

4. Select **Use direct connection**, then click **Next**.

5. Select **Password Based Authentication**, then click **Next**.

6. Select **This is a single user installation. (Recommended)**, then click **Next**.

7. Click **Done** to quit the installer.

8. Login to the Micro Focus ArcSight console.

9. Navigate to **Active channel set** > **New Condition** > **Device** > **Device Product**.

10. Set **Device Product = Microsoft Defender ATP**. When you've verified that events are flowing to the tool, stop the process again and go to Windows Services and start the ArcSight FlexConnector REST.

You can now run queries in the Micro Focus ArcSight console.

Defender for Endpoint detections will appear as discrete events, with "Microsoft" as the vendor and "Windows Defender ATP" as the device name.

## Troubleshooting Micro Focus ArcSight connection

**Problem:** Failed to refresh the token. You can find the log located in C:\\*folder_location*\current\logs where *folder_location* represents the location where you installed the tool. Open _agent.log_ and look for `ERROR/FATAL/WARN`.

**Symptom:** You get the following error message:

`Failed to refresh the token. Set reauthenticate to true: com.arcsight.common.al.e: Failed to refresh access token: status=HTTP/1.1 400 Bad Request FATAL EXCEPTION: Could not refresh the access token`

**Solution:**

1. Stop the process by clicking Ctrl + C on the Connector window. Click **Y** when asked "Terminate batch job Y/N?".

2. Navigate to the folder where you stored the WDATP-connector.properties file and edit it to add the following value:
   `reauthenticate=true`.

3. Restart the connector by running the following command: `arcsight.bat connectors`.

   A browser window appears. Allow it to run, it should disappear, and the connector should now be running.

> [!NOTE]
> Verify that the connector is running by stopping the process again. Then start the connector again, and no browser window should appear.

## Related topics

- [Enable SIEM integration in Defender for Endpoint](enable-siem-integration.md)
- [Pull detections to your SIEM tools](/windows/security/threat-protection/microsoft-defender-atp/configure-siem)
- [Pull Defender for Endpoint detections using REST API](pull-alerts-using-rest-api.md)
- [Troubleshoot SIEM tool integration issues](troubleshoot-siem.md)
