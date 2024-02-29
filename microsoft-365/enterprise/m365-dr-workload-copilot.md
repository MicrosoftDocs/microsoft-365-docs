---
title: Data Residency for Microsoft Copilot for Microsoft 365
description: Learn about data residency for Microsoft Copilot for Microsoft 365
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 02/29/2024
ms.reviewer: deanw
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- must-keep
---

# Data Residency for Microsoft Copilot for Microsoft 365

## Overview

Service documentation: [Microsoft Copilot for Microsoft 365 overview](/microsoft-365-copilot/microsoft-365-copilot-overview) and [Data, Privacy, and Security for Microsoft Copilot for Microsoft 365](/microsoft-365-copilot/microsoft-365-copilot-privacy)

Capability Summary: Microsoft Copilot for Microsoft 365 is an AI-powered productivity tool that coordinates large language models (LLMs), content in Microsoft Graph, and the Microsoft 365 apps that you use every day, such as Word, Excel, PowerPoint, Outlook, and Teams. This integration provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills.
The following applications provide the ability to interact with Microsoft Copilot for Microsoft 365: Microsoft Word, Excel, PowerPoint, Loop, Outlook, Teams (Chat, Meetings, Calls, Whiteboard), and OneNote. The Content of Interactions of these applications and the related semantic index with Microsoft Copilot for Microsoft 365 are stored at rest in the relevant _Local Region Geography_.

## Data Residency Commitments Available for Microsoft Copilot for Microsoft 365

### Product Terms

Required Conditions:

1. _Tenant_ has a sign-up country/region included in Australia, Brazil, Canada, the European Union, France, Germany, India, Japan, Norway, Qatar, South Africa, South Korea, Sweden, Switzerland, the United Kingdom, the United Arab Emirates, or the United States.

**Commitment:**

_For current language, refer to the [Privacy and Security Product Terms](https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all) and view the section titled "Location of Customer Data at Rest for Core Online Services"._

### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign-up country/region included in _Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_
1. For existing _Tenant_ that has data stored in a _Macro Region Geography_, the _Tenant_ Global Admin must opt in to move the _Tenant_ data into the _Local Region Geography_.
1. The Microsoft Copilot for Microsoft 365 subscription customer data is provisioned in _Local Region Geography_.

**Commitment:**

Refer to the [ADR Commitment page](m365-dr-commitments.md#copilot-for-microsoft-365) to understand the specific data at rest commitments for Microsoft Copilot for Microsoft 365. Examples of the committed data include:

- "Content of Interactions” such as the user's prompt and Microsoft Copilot's response, including citations to any information used to ground Microsoft Copilot's response.

### Multi-Geo add-on

Required Conditions:

1. _Tenants_ have a valid Multi-Geo subscription that covers all users assigned to a _Satellite Geography_
1. Customer must have an active Enterprise or CSP Partner Agreement.
1. Total purchased Multi-Geo units must be greater than 5% of the total eligible seats in the _Tenant_.

**Commitment:**
Multi-Geo capabilities in Microsoft Copilot for Microsoft 365 enable content of s with Microsoft Copilot for Microsoft 365 to be stored at rest in a specified _Macro Region Geography_ or _Local Region Geography_ location. Microsoft Copilot for Microsoft 365 uses the Preferred Data Location (PDL) for users and groups to determine where to store data. If the PDL isn't set or is invalid, data is stored in the _Tenant's Primary Provisioned Geography_ location.

## Multi-Geo Capabilities in Microsoft Copilot for Microsoft 365

Content of Interactions with Microsoft Copilot for Microsoft 365 are stored at rest in the Macro Region Geography or Local Region Geography location that is set as the Preferred Data Location (PDL) for the user. If the PDL isn't set or is invalid, data is stored in the _Tenant's Primary Provisioned Geography_ location.

Content of Interactions: User Prompts and Microsoft Copilot Responses

The Geography where the Content of Interactions with Microsoft Copilot for Microsoft 365 is stored depends on the PDL of the user who writes the prompt. So, users in different regions will have their interactions stored according to their configured PDL.

To find the current location of a user's content of interactions with Microsoft Copilot for Microsoft 365 by referencing the PDL configuration for that user.

**Illustrative examples**

**Collaboration Experience**
Two people are working together on a Microsoft Word document. User A authored the document and stored it in their SharePoint, which is located in France. User B is in Canada and asks Microsoft Copilot for Microsoft 365 to rewrite a paragraph in the document. The paragraph User B submitted as the prompt, as well as the rewrite options Copilot provides (the “content of interactions” in this case) are stored in Canada; the original document remains in France, as does any rewrite the user accepts into that document. 

**Teams Meeting Experience**
Microsoft Teams meeting recording video location is determined by the region of the user that starts the recording, or when meetings have an automatic recording policy, the location is determined from the first person joining the meeting. When users in other regions interact with Microsoft Copilot for Microsoft 365 in Teams, those user prompts and corresponding responses are stored in the location of the user that asks the Microsoft Copilot for Microsoft 365 questions.

### Migration

Microsoft Copilot for Microsoft 365 is part of the Microsoft 365 Advanced Data Residency migration. You can learn more at [ADR Migration](advanced-data-residency.md#data-migration-management)

### How can I determine customer data location?

You can find the actual data location in Microsoft 365 admin center. As a _Tenant_ Global Administrator you can find the actual data location, for committed data, by navigating to **Settings > Org settings > Organization profile > Data location**.
