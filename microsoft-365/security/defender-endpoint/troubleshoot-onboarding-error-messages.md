---
title: Troubleshoot onboarding issues and error messages
description: Troubleshoot onboarding issues and error message while completing setup of Microsoft Defender for Endpoint.
keywords: troubleshoot, troubleshooting, Azure Active Directory, onboarding, error message, error messages, microsoft defender for endpoint
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

# Troubleshoot subscription and portal access issues

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-troublshootonboarding-abovefoldlink)

This page provides detailed steps to troubleshoot issues that might occur when setting up your Microsoft Defender for Endpoint service.

If you receive an error message, Microsoft 365 Defender will provide a detailed explanation on what the issue is and relevant links will be supplied.

## No subscriptions found

If while accessing Microsoft 365 Defender you get a **No subscriptions found** message, it means the Azure Active Directory (Azure AD) used to log in the user to the portal, does not have a Microsoft Defender for Endpoint license.

Potential reasons:

- The Windows E5 and Office E5 licenses are separate licenses.
- The license was purchased but not provisioned to this Azure AD instance.
  - It could be a license provisioning issue.
  - It could be you inadvertently provisioned the license to a different Microsoft Azure AD than the one used for authentication into the service.

For both cases, you should contact Microsoft support at [General Microsoft Defender for Endpoint Support](https://support.microsoft.com/getsupport?wf=0&tenant=ClassicCommercial&oaspworkflow=start_1.0.0.0&locale=en-us&supportregion=en-us&pesid=16055&ccsid=636419533611396913) or
[Volume license support](https://www.microsoft.com/licensing/servicecenter/Help/Contact.aspx).

:::image type="content" source="images/atp-no-subscriptions-found.png" alt-text="The No subscriptions found page" lightbox="images/atp-no-subscriptions-found.png":::

## Your subscription has expired

If while accessing Microsoft 365 Defender you get a **Your subscription has expired** message, your online service subscription has expired. Microsoft Defender for Endpoint subscription, like any other online service subscription, has an expiration date.

You can choose to renew or extend the license at any point in time. When accessing the portal after the expiration date a **Your subscription has expired** message will be presented with an option to download the device offboarding package, should you choose to not renew the license.

> [!NOTE]
> For security reasons, the package used to Offboard devices will expire 30 days after the date it was downloaded. Expired offboarding packages sent to a device will be rejected. When downloading an offboarding package you will be notified of the packages expiry date and it will also be included in the package name.

:::image type="content" source="images/atp-subscription-expired.png" alt-text="The subscription expired notification message" lightbox="images/atp-subscription-expired.png":::

## You are not authorized to access the portal

If you receive a **You are not authorized to access the portal**, be aware that Microsoft Defender for Endpoint is a security monitoring, incident investigation and response product, and as such, access to it is restricted and controlled by the user.
For more information, see, [**Assign user access to the portal**](/windows/threat-protection/windows-defender-atp/assign-portal-access-windows-defender-advanced-threat-protection).

:::image type="content" source="images/atp-not-authorized-to-access-portal.png" alt-text="The access disallowed notification message" lightbox="images/atp-not-authorized-to-access-portal.png":::

## Data currently isn't available on some sections of the portal

If the portal dashboard and other sections show an error message such as "Data currently isn't available":

:::image type="content" source="images/atp-data-not-available.png" alt-text="The data unavailability notification message" lightbox="images/atp-data-not-available.png":::

You'll need to allow the `security.windows.com` and all subdomains under it on your web browser. For example, `*.security.windows.com`.

## Portal communication issues

If you encounter issues with accessing the portal, missing data, or restricted access to portions of the portal, you'll need to verify that the following URLs are allowed and open for communication.

- `*.blob.core.windows.net`
- `crl.microsoft.com`
- `https://*.microsoftonline-p.com`
- `https://*.security.microsoft.com`
- `https://automatediracs-eus-prd.security.microsoft.com`
- `https://login.microsoftonline.com`
- `https://login.windows.net`
- `https://onboardingpackagescusprd.blob.core.windows.net`
- `https://secure.aadcdn.microsoftonline-p.com`
- `https://security.microsoft.com`
- `https://static2.sharepointonline.com`
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
