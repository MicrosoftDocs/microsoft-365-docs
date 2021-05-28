---
title: Use Microsoft Teams classes with Canvas
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
description: "Integrate Microsoft Teams classes with Canvas"
---


# Use Microsoft Teams classes with Canvas

Microsoft Teams classes is a Learning Tools Interoperability (LTI) app that helps educators and students easily navigate between their Learning Management System (LMS) and Teams. Users can access their class teams associated with their course directly from within their LMS.

## Microsoft O365 Admin

Before managing the Microsoft Teams integration within Instructure Canvas, it is important to have Canvas’s ‘Microsoft-Teams-Sync-for-Canvas’ Azure app approved by your institution’s O365 admin in your Microsoft Azure tenant before completing the Canvas admin setup.

1. Login to Canvas, click on Admin link in the global navigation, and select your account.

2. In the admin navigation, click on the Settings link and then the Integrations tab. Enter your Microsoft tenant name and login attribute. Login attribute will be used for associating the Canvas user with an Azure Active Directory user. Click on Update Settings once done.

3. To approve access for Canvas’s ‘Microsoft-Teams-Sync-for-Canvas’ Azure app, click on the ‘Grant tenant access’ link which will redirect to the Microsoft Identity Platform Admin Consent Endpoint

<img src="c:\Users\v-cichur\microsoft-365-docs-pr\microsoft-365\lti/media/image1.png" style="width:2.40989in;height:3.95545in" alt="Graphical user interface, text, application Description automatically generated" />

1. Enable the Microsoft Teams sync by turning the toggle on.

<img src="c:\Users\v-cichur\microsoft-365-docs-pr\microsoft-365\lti/media/image2.png" style="width:5.35644in;height:2.22269in" alt="Graphical user interface, text, application, Word Description automatically generated" />

## Canvas Admin

Setting up the Microsoft Teams LTI 1.3 Integration

As a Canvas Admin you will need to add the Microsoft Teams classes LTI app within your environment. Make a note of the LTI Client ID for the app.

1.  Microsoft Teams classes - 170000000000570


1.  Access Apps tab under Admin Settings

> <img src="c:\Users\v-cichur\microsoft-365-docs-pr\microsoft-365\lti/media/image3.png" style="width:5.82673in;height:1.03586in" alt="Text Description automatically generated with medium confidence" />

1.  Click on + App to add the Teams LTI apps. Select ‘By Client ID’ under configuration type.

> <img src="c:\Users\v-cichur\microsoft-365-docs-pr\microsoft-365\lti/media/image4.png" style="width:5.79703in;height:2.02586in" alt="Graphical user interface, text, application, email Description automatically generated" />

1.  Enter the Client ID provided above and click Submit.

2.  You will notice the Microsoft Teams classes LTI app name for the Client ID for confirmation. Click on Install.

3.  The Microsoft Teams classes LTI app will be added to the list of external apps.
