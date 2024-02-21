---
title: Data Residency for Microsoft Copilot
description: Learn about data residency for Microsoft Copilot
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 02/06/2024
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
The following applications provide the ability to interact with Microsoft Copilot for Microsoft 365:  Microsoft Word, Excel, PowerPoint, Loop, Outlook, Teams (Chat, Meetings, Calls, Whiteboard), and OneNote.  The interactions with these applications and the related semantic index will be stored in the relevant _Geography_. Copilot interaction data for all stated applications is stored within the Microsoft Teams data storage infrastructure.

## Data Residency Commitments Available for Microsoft Copilot for Microsoft 365

### Product Terms

Required Conditions:

1. _Tenant_ has a sign-up country/region included in Australia, Brazil, Canada, the European Union, France, Germany, India, Japan, Norway, Qatar, South Africa, South Korea, Sweden, Switzerland, the United Kingdom, the United Arab Emirates, or the United States.

**Commitment:**

_For current language, refer to the [Privacy and Security Product Terms](https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all) and view the section titled "Location of Customer Data at Rest for Core Online Services" and reference statement (5)._

### Advanced Data Residency add-on

Required Conditions:

1. _Tenant_ has a sign-up country/region included in _Local Region Geography_.
1. _Tenant_ has a valid Advanced Data Residency subscription for all users in the _Tenant_
1.	For existing Tenant that has data stored in a _Macro Region Geography_, the Tenant Global Admin must opt in to move the _Tenant_ data into the _Local Region Geography_.
1. The Microsoft Copilot for Microsoft 365 subscription customer data is provisioned in _Local Region Geography_.

**Commitment:**

Refer to the [ADR Commitment page](m365-dr-commitments.md#copilot-for-microsoft-365) to understand the specific commitments provided via Product Terms.  Examples of the committed data include:

- (5) any stored content of interactions with Microsoft Copilot for Microsoft 365 to the extent not included in the preceding commitments.

### Multi-Geo add-on

Required Conditions:

1. _Tenants_ have a valid Multi-Geo subscription that covers all users assigned to a _Satellite Geography_
1. Customer must have an active Enterprise or CSP Partner Agreement.
1. Total purchased Multi-Geo units must be greater than 5% of the total eligible seats in the _Tenant_.

**Commitment:**
Multi-Geo capabilities in Microsoft Copilot for Microsoft 365 enable content of interactions with Microsoft Copilot for Microsoft 365 to be stored at rest in a specified _Macro Region Geography_ or _Local Region Geography_ location. Microsoft Copilot for Microsoft 365 uses the Preferred Data Location (PDL) for users and groups to determine where to store data. If the PDL isn't set or is invalid, data is stored in the tenant's _Primary Provisioned Geography_ location.

## Multi-Geo Capabilities in Microsoft Copilot for Microsoft 365

Microsoft Copilot for Microsoft 365 relies on Microsoft Teams for storing the interactions users have with Microsoft Copilot for Microsoft 365.  Given that approach, the assignment of PDL to users for Teams will apply to the Microsoft Copilot for Microsoft 365 interactions that are stored and committed to.

 The _Geography_ used to store the Copilot interactions is determined by the user who writes the prompt. Different users in different regions will have their interactions stored in different regions. 

**Collaboration**

Regarding two or more people working together on a Microsoft Word or Microsoft Powerpoint document.  User A is in Canada and asks Copilot to do something in PPTX/Word, but the document is stored in France. User A from Canada will have Copilot data in Canada even though the document is in France. The document is not copied to Canada but parts of the document may be included in the results and stored in Teams. 

**Meeting Recordings**

Microsoft Teams meeting recording location is determined by the region of the user that starts the recording.  When users in other regions ask Microsoft Copilot for Microsoft 365 to summarize the meeting, those questions and related answers  (interactions) are stored in the location of the user that asks the Copilot questions.


### Migration

Microsoft Copilot for Microsoft 365 prompts and responses are stored with the Tenant Microsoft Teams Data, and the relevant Microsoft Copilot for Microsoft 365 data are migrated with Microsoft Teams.

### How can I determine customer data location?

You can find the actual data location in _Tenant_ Microsoft 365 admin center. As a _Tenant_ Global Administrator you can find the actual data location, for committed data, by navigating to Admin->Settings->Org Settings->Organization Profile->Data Location.
