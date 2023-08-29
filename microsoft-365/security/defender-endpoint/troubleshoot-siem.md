---
title: Troubleshoot SIEM tool integration issues in Microsoft Defender for Endpoint
description: Troubleshoot issues that might arise when using SIEM tools with Microsoft Defender for Endpoint.
keywords: troubleshoot, siem, client secret, secret
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: troubleshooting
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Troubleshoot SIEM tool integration issues

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!NOTE]
> **Try our new APIs using MS Graph security API**. Find out more at: [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview).

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-pullalerts-abovefoldlink)

> [!NOTE]
> The new Microsoft 365 Defender alerts API, released to public preview in MS Graph, is the official and recommended API for customers migrating from the SIEM API. See [Migrate from the MDE SIEM API to the Microsoft 365 Defender alerts API](configure-siem.md).

You might need to troubleshoot issues while pulling detections in your SIEM tools.

This page provides detailed steps to troubleshoot issues you might encounter.

## Learn how to get a new client secret

If your client secret expires or if you've misplaced the copy provided when you were enabling the SIEM tool application,  you'll need to get a new secret.

1. Log in to the [Azure management portal](https://portal.azure.com).

2. Select **Azure Active Directory**.

3. Select your tenant.

4. Click **App registrations**. Then in the applications list, select the application.

5. Select **Certificates & Secrets** section, Click on New Client Secret, then provide a description and specify the validity duration.

6. Click **Save**. The key value is displayed.

7. Copy the value and save it in a safe place.

## Error when getting a refresh access token

If you encounter an error when trying to get a refresh token when using the threat intelligence API or SIEM tools, you'll need to add reply URL for relevant application in Azure Active Directory.

1. Log in to the [Azure management portal](https://ms.portal.azure.com).

2. Select **Azure Active Directory**.

3. Select your tenant.

4. Click **App Registrations**. Then in the applications list, select the application.

5. Add the following URL:
   - For the European Union: `https://winatpmanagement-eu.securitycenter.windows.com/UserAuthenticationCallback`
   - For the United Kingdom: `https://winatpmanagement-uk.securitycenter.windows.com/UserAuthenticationCallback`
   - For the United States:  `https://winatpmanagement-us.securitycenter.windows.com/UserAuthenticationCallback`.

6. Click **Save**.

## Error while enabling the SIEM connector application

If you encounter an error when trying to enable the SIEM connector application, check the pop-up blocker settings of your browser. It might be blocking the new window being opened when you enable the capability.

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-troubleshootsiem-belowfoldlink)

## Related topics

- [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview)

- [Pull detections to your SIEM tools](configure-siem.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
