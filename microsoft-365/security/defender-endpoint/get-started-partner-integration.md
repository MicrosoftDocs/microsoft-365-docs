---
title: Become a Microsoft Defender for Endpoint partner
ms.reviewer:
description: Learn the steps and requirements to integrate your solution with Microsoft Defender for Endpoint and be a partner
keywords: partner, integration, solution validation, certification, requirements, member, misa, application portal
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
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Become a Microsoft Defender for Endpoint partner

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


To become a Defender for Endpoint solution partner, you'll need to follow and complete the following steps.

## Step 1: Subscribe to a Microsoft Defender for Endpoint license

Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink). Subscribing allows you to use a Microsoft Defender for Endpoint tenant with up to three devices to developing solutions that integrate with Microsoft Defender for Endpoint.

## Step 2: Fulfill the solution validation and certification requirements

The best way for technology partners to certify that their integration works is to have a joint customer approve the suggested integration design in the [Partner Application page](https://security.microsoft.com/interoperability/partnersapps) in Microsoft 365 Defender and have it tested and demoed to the Microsoft Defender for Endpoint team.

Once the Microsoft Defender for Endpoint team has reviewed and approves the integration, we'll direct you to be included as a partner at the Microsoft Intelligent Security Association.

## Step 3: Get listed in the Microsoft Defender for Endpoint partner application portal

Microsoft Defender for Endpoint supports third-party applications discovery and integration using the in-product [partner page](partner-applications.md) that is embedded within the Microsoft Defender for Endpoint management portal.

To have your company listed as a partner in the in-product partner page, you'll need to provide the following information:

1. A square logo (SVG).
2. Name of the product to be presented.
3. Provide a 15-word product description.
4. Link to the landing page for the customer to complete the integration or blog post that includes sufficient information for customers. Any press release including the Microsoft Defender for Endpoint product name should be reviewed by the marketing and engineering teams. Wait for at least 10 days for the review process to be done.
5. If you use a multi-tenant Azure AD approach, we need the Azure AD application name to track usage of the application.
6. Include the User-Agent field in each API call made to Microsoft Defender for Endpoint public set of APIs or Graph Security APIs. This is used for statistical purposes, troubleshooting, and partner recognition. In addition, this step is a requirement for membership in Microsoft Intelligent Security Association (MISA).

   Follow these steps:

   - Set the User-Agent field in each HTTP request header to the below format.

     ```http
     MdePartner-{CompanyName}-{ProductName}/{Version}
     ```

     For example, User-Agent:

     ```http
     MdePartner-Contoso-ContosoCognito/1.0.0
     ```

   - For more information, see [RFC 2616 section-14.43](https://tools.ietf.org/html/rfc2616#section-14.43).

Partnerships with Microsoft Defender for Endpoint help our mutual customers to further streamline, integrate, and orchestrate defenses. We're happy that you chose to become a Microsoft Defender for Endpoint partner and to achieve our common goal of effectively protecting customers and their assets by preventing and responding to modern threats together.

## MISA nomination 
Managed security service providers (MSSP) and independent software vendors (ISV) can be nominated to the Microsoft Intelligent Security Association (MISA). For more information, see [MISA information page](https://www.microsoft.com/security/business/intelligent-security-association).


## Related topics

- [Technical partner opportunities](partner-integration.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
