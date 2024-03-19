---
title: Become a Microsoft Defender for Endpoint partner
ms.reviewer:
description: Learn the steps and requirements to integrate your solution with Microsoft Defender for Endpoint and be a partner.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
search.appverid: met150
ms.date: 12/18/2020
---

# Become a Microsoft Defender for Endpoint partner

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)


To become a Defender for Endpoint solution partner, complete steps outlined in this article.

## Step 1: Subscribe to a Microsoft Defender for Endpoint license

Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink). Subscribing allows you to use a Microsoft Defender for Endpoint tenant with up to three devices to developing solutions that integrate with Microsoft Defender for Endpoint.

## Step 2: Fulfill the solution validation and certification requirements

The best way for technology partners to certify that their integration works is to have a joint customer approve the suggested integration design in the [Partner Application page](https://security.microsoft.com/interoperability/partnersapps) in Microsoft Defender XDR and have it tested and demoed to the Microsoft Defender for Endpoint team.

Once the Microsoft Defender for Endpoint team reviews and approves the integration, we direct you to be included as a partner at the Microsoft Intelligent Security Association.

## Step 3: Get listed in the Microsoft Defender for Endpoint partner application portal

Microsoft Defender for Endpoint supports non-Microsoft applications discovery and integration using the in-product [partner page](partner-applications.md) that is embedded within the Microsoft Defender for Endpoint management portal.

To have your company listed as a partner in the in-product partner page, provide the following information:

- A square logo (SVG)
- Name of the product to be presented
- A 15-word product description
- A link to the landing page for the customer to complete the integration or blog post that includes sufficient information for customers. Any press release including the Microsoft Defender for Endpoint product name should be reviewed by the marketing and engineering teams. Wait for at least 10 days for the review process to be done.
- If you use a multi-tenant Microsoft Entra ID approach, we need the Microsoft Entra application name to track usage of the application.
- The User-Agent field in each API call to the Defender for Endpoint public set of APIs or Graph Security APIs. This is used for statistical purposes, troubleshooting, and partner recognition. In addition, this step is a requirement for membership in Microsoft Intelligent Security Association (MISA).

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

Partnerships with Microsoft Defender for Endpoint help our mutual customers to further streamline, integrate, and orchestrate defenses. Thank you for choosing to become a Microsoft Defender for Endpoint partner and to achieve our common goal of effectively protecting customers and their assets by preventing and responding to modern threats together.

## MISA nomination 

Managed security service providers (MSSP) and independent software vendors (ISV) can be nominated to the Microsoft Intelligent Security Association (MISA). For more information, see [MISA information page](https://www.microsoft.com/security/business/intelligent-security-association).


## Related articles

- [Technical partner opportunities](partner-integration.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
