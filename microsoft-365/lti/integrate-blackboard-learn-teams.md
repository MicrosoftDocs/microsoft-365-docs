---
title: Use Blackboard Learn Ultra in Microsoft Teams
ms.author: v-cichur
author: cichur
manager: serdars
ms.reviewer: amitman 
audience: admin
ms.topic: article
ms.service: o365-administration
f1.keywords:
- CSH
ms.collection: M365-modern-desktop
localization_priority: Normal
ROBOTS: NOINDEX, NOFOLLOW
description: "Integrate Blackboard Learn Ultra with Microsoft Teams"
---


# Use Blackboard Learn Ultra in Microsoft Teams

Microsoft Teams and Blackboard Learn Ultra now have a collaborative experience that benefits educators and students. As a Teams admin, you manage the integration between both applications.

## Approve app and set up integrations

The following tasks are completed by the Microsoft Office 365 admin and the Blackboard Learn Ultra admin.

Before managing the integration within Blackboard Learn Ultra, the Microsoft Office 365 admin must approve the Blackboard `MSFT Teams for Learn Ultra Azure` app for the institution’s Microsoft Azure tenant.

1.Find your Microsoft Tenant ID. See [how to find the tenant](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-how-to-find-tenant).

2. Redirect the Microsoft Identity Platform Admin Consent Endpoint according to the following example:

   https://login.microsoftonline.com/{tenant}/adminconsent?client\_id=2d94989f-457a-47c1-a637-e75acdb11568

   > [!NOTE]
   > Replace {tenant} with your organization’s Microsoft tenant ID.

## Blackboard Learn Ultra Admin
----------------------------


As a Learn Admin you will need to register 2 LTI 1.3 integration apps within your Test environment.

-   The Blackboard Learn Class Teams integration to support the roster sync

-   The Microsoft Teams class team LTI app

1.  Make a note of the following LTI Client IDs for both Apps

    1.  Blackboard - f1561daa-1b21-4693-ba90-6c55f1a0eb41

    2.  Microsoft - 027328b7-c2e3-4c9e-aaa1-07802dae6c89

2.  Access Admin Panel and under Integrations locate LTI Tool Providers

> <img src="c:\Users\v-cichur\microsoft-365-docs-pr\microsoft-365\lti/media/image1.png" style="width:5.70149in;height:1.45278in" alt="Graphical user interface, text, application, email Description automatically generated" />

1.  Select Register LTI1.3/Advantage Tool

2.  Enter in the first of the Client IDs provided (either Blackboard or Microsoft) and click Submit

> <img src="c:\Users\v-cichur\microsoft-365-docs-pr\microsoft-365\lti/media/image2.png" style="width:5.84328in;height:2.42346in" alt="Graphical user interface, text, application, email Description automatically generated" />

1.  You will notice all relevant fields have been pre-populated for you. Please go through and review these settings and ensure that the tool status is marked as approved.

2.  Scroll to the bottom and click Submit

3.  Repeat steps 4 and 5 again to register the second of the LTI apps within your environment

### Setting up the REST Application and Cross Origin Resource Sharing

Alongside setting up the LTI integrations, the Learn admin will also need to configure the REST Application and the Cross Origin Resource Sharing configuration.

#### REST Application

1.  Access the Learn Administration Tools and select REST API Integrations from the Integrations section.

2.  Select Create integrations and enter in the same Application/Client ID as with the Blackboard Learn Class Teams Integration LTI tool.

3.  Enter in the Learn User (this could be your own learn admin username) or select Browse to locate.

4.  Select End User Access to Yes

5.  Select Authorized to Act as User to Yes

6.  Click Submit once complete.

#### Cross-Origin Resource Sharing

1.  Access the Learn Administration Tools and select Cross-Origin Resource Sharing from the Integrations section.

2.  Select Create Configuration and in the Origin enter in https://bb-ms-teams-ultra-ext.api.blackboard.com

3.  In the Allowed Headers add in the word Authorization

4.  Set Available to Yes

5.  Click Submit once complete.

### Enabling Class Teams in Blackboard Learn

Once you have enabled the LTI tools, your next step will be to setup the Microsoft Class Teams integration from your own Microsoft Office 365 tenant. You can do this by following these steps:

#### Learn Admin

1.  On the Learn Admin screen, under Tools and Utilities select Microsoft Teams Integration Admin

> <img src="c:\Users\v-cichur\microsoft-365-docs-pr\microsoft-365\lti/media/image3.png" style="width:5.8806in;height:7.07203in" alt="Table Description automatically generated" />

1.  Select the checkbox on Enable Microsoft Teams and Enter in your tenant ID as referenced in the section under Microsoft O365 Admin

    1.  Please note that you will not be able to save the settings until the app has been approved by the O365 admin. Please see the first section under Microsoft O365 Admin

2.  If the global O365 admin has approved the Blackboard Teams application in your Microsoft Tenant, you will be able to click Submit, and this should save the settings and enable Teams globally for all Learn Ultra courses.
