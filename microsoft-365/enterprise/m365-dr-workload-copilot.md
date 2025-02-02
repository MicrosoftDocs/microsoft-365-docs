---
title: Data Residency for Microsoft 365 Copilot
description: Learn about data residency for Microsoft 365 Copilot.
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.subservice: advanced-data-residency
ms.topic: concept-article
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
- m365copilot
- magic-ai-copilot
---

# Data Residency for Microsoft 365 Copilot

## Overview

Service documentation: [Microsoft 365 Copilot overview](/microsoft-365-copilot/microsoft-365-copilot-overview) and [Data, Privacy, and Security for Microsoft 365 Copilot](/microsoft-365-copilot/microsoft-365-copilot-privacy)

Capability Summary: Microsoft 365 Copilot is an AI-powered productivity tool that coordinates large language models (LLMs), content in Microsoft Graph, and the Microsoft 365 apps that you use every day, such as Word, Excel, PowerPoint, Outlook, and Teams. This integration provides real-time intelligent assistance, enabling users to enhance their creativity, productivity, and skills.
The following applications provide the ability to interact with Microsoft 365 Copilot: Microsoft Word, Excel, PowerPoint, Loop, Outlook, Teams (Chat, Meetings, Calls, Whiteboard), and OneNote.

The content of interactions and the related semantic index with Microsoft 365 Copilot are stored at rest in the relevant _Local Region Geography_.

## Data Residency Commitments Available for Microsoft 365 Copilot

### Product Terms

Required Conditions:

1. _Tenant_ has a sign-up country/region included in Australia, Brazil, Canada, the European Union, France, Germany, India, Japan, Norway, Qatar, South Africa, South Korea, Sweden, Switzerland, the United Kingdom, the United Arab Emirates, or the United States.

**Commitment:**

_For current language, refer to the [Privacy and Security Product Terms](https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all) and view the section titled "Location of Customer Data at Rest for Core Online Services."_

### Advanced Data Residency (ADR) add-on

Required Conditions:

1. _Tenant_ has a sign-up country/region included in _Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_
1. For existing _Tenant_ that has data stored in a _Macro Region Geography_, the _Tenant_ Global Admin must opt in to move the _Tenant_ data into the _Local Region Geography_.
1. The Microsoft 365 Copilot subscription customer data is provisioned in _Local Region Geography_.

**Commitment:**

Refer to the [ADR Commitment page](m365-dr-commitments.md#microsoft-365-copilot) to understand the specific data at rest commitments for Microsoft 365 Copilot. Examples of the committed data include:

- "Content of Interactions" such as the user's prompt and Microsoft Copilot's response, including citations to any information used to ground Microsoft Copilot's response.

### Multi-Geo add-on

Required Conditions:

1. _Tenants_ have a valid Multi-Geo subscription that covers all users assigned to a _Satellite Geography_
1. Customer must have an active Enterprise or CSP Partner Agreement.
1. Total purchased Multi-Geo units must be greater than 5% of the total eligible licenses in the _Tenant_.

**Commitment:**
Multi-Geo capabilities in Microsoft 365 Copilot enable content of interactions with Microsoft 365 Copilot to be stored at rest in a specified _Macro Region Geography_ or _Local Region Geography_ location. Microsoft 365 Copilot uses the Preferred Data Location (PDL) for users and groups to determine where to store data. If the PDL isn't set or is invalid, data is stored in the _Tenant's Primary Provisioned Geography_ location. The _Geography_ where the content of interactions with Microsoft 365 Copilot are stored is determined by the PDL of the user interacting with Microsoft 365 Copilot. This means that the storage of content of interactions for users in different regions will be based on their respective PDL configurations.

To find the current location of a user's content of interactions with Microsoft 365 Copilot by referencing the PDL configuration for that user. Refer to [Multi-Geo Testing](m365-multi-geo-user-testing.md)

**Illustrative examples**

**Collaboration Experience**
Two people are working together on a Microsoft Word document. User A authored the document and stored it in the OneDrive for Business personal storage site, which is located in France. User B is in Canada and asks Microsoft 365 Copilot to rewrite a paragraph in the document. The paragraph User B submitted as the prompt, as well as the rewrite options Microsoft 365 Copilot provides (the "content of interactions" in this case) are stored in Canada; the original document remains in France, as does any rewrite the user accepts into that document.

**Teams Meeting Experience**
Microsoft Teams meeting recording video location is determined by the user PDL that starts the recording, or when meetings have an automatic recording policy, the location is determined from the first person joining the meeting. When users in other regions interact with Microsoft 365 Copilot in Teams, those user prompts and corresponding responses are stored in the location of the user that asks the Microsoft 365 Copilot questions.

### Migration and User Experience

When a user interacts with Microsoft 365 Copilot (using apps such as Word, PowerPoint, Excel, OneNote, Loop, or Whiteboard), we store data about these interactions. The stored data includes the user's prompt and Copilot's response, including citations to any information used to ground Copilot's response. We refer to the user's prompt and Copilot's response to that prompt as the "content of interactions" and the record of those interactions is the user's Copilot interaction history. For example, this stored data provides users with Copilot interaction history in [Microsoft 365 Copilot Chat](https://support.microsoft.com/topic/get-started-with-copilot-for-microsoft-365-5b00a52d-7296-48ee-b938-b95b7209f737) and [meetings in Microsoft Teams](https://support.microsoft.com/office/get-started-with-copilot-in-microsoft-teams-meetings-0bf9dd3c-96f7-44e2-8bb8-790bedf066b1). This data is processed and stored in alignment with contractual commitments with your organization's other content in Microsoft 365, such as [Advanced data residency in Microsoft 365](advanced-data-residency.md).

When a customer elects [Advanced data residency in Microsoft 365](advanced-data-residency.md), they are subject to [ADR Migration](advanced-data-residency.md#data-migration-management). For detailed information regarding customer impact during the migration, please refer to [Data Residency for Microsoft Teams](m365-dr-workload-teams.md#user-experience).

### How can I determine customer data location?

You can find the actual data location in Microsoft 365 admin center. In the coming months, you will be able to find the actual data location for committed data, by navigating to **Settings > Org settings > Organization profile > Data location**.
