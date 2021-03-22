---
title: Use OneDrive LTI
ms.author: v-cichur
author: cichur
manager: serdars
ms.reviewer:amitman 
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal
ROBOTS: NOINDEX, NOFOLLOW
description: "Create and grade assignments, build and curate course content, and collaborate on files in real time with the new OneDrive LTI App."
---

# Use Microsoft OneDrive with your Learning Management System

Learn the benefits of using Microsoft OneDrive with your Learning Management System (LMS).

**Brings Microsoft Office 365 directly into your workflows**

The Microsoft OneDrive Learning Tools Interoperability (LTI) App integrates with your LMS to bring Microsoft OneDrive and Microsoft Office 365 directly into your most important workflows that include:

- Attaching resources and organizing content.
- Starting collaborative documents.
- Creating and grading assignments.

**Secure and fully compliant with latest LTI standards**

The Microsoft OneDrive LTI App is compatible with LTI 1.3 and LTI Advantage. This advantage allows for a highly secure and tightly integrated user experience.

**Modern and Rich User Experience**

The Microsoft OneDrive LTI App brings the best of Microsoft right into your LMS experience. We're improving upon the existing Office 365 integration in your LMS by delivering a more modern user experience, complete with a new and expanded Microsoft OneDrive file picker and richer editing experiences for Office files. Microsoft will also fully own the Microsoft OneDrive LTI App going forward, which means you’ll always get the latest and greatest from Microsoft automatically.

The Microsoft OneDrive LTI App allows you to:

- Attach Office 365 files including Word documents, PowerPoint presentations, and Excel from the Rich Content Editor.

- Distribute Office 365 cloud assignments.

- View and organize your personal and course Microsoft OneDrive files.

- Create collaborations where course members can work together on shared documents in real time.

- Access multiple Microsoft OneDrive accounts, including personal and school accounts.

- Integrate Office 365 files with your course modules.

- Use your Microsoft account for single sign-on with your LMS.

## Integrate with Canvas

The person who performs this integration should be an admin of Canvas and an admin of the Microsoft 365 tenant.

1. Sign in to the Microsoft Azure portal with the tenant admin account. The Azure tenant administrator should also have the Group administrator role.

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image1.png" style="width:6.5in;height:2.54792in" />

2. Sign in to the Microsoft [OneDrive LTI portal](https://odltiappnl.azurewebsites.net/admin).

3. Accept the permissions to complete the sign in.

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image2.png" style="width:6.5in;height:3.48194in" />

4. Select **Add LTI Tenant**

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image3.png" style="width:6.5in;height:2.44028in" />

1. Select **LTI Consumer Platform** as **Canvas** from the dropdown.

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image4.png" style="width:6.5in;height:1.42639in" />

1. Select **Canvas Base URL** and then select **Next**.

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image5.png" style="width:6.5in;height:1.48472in" />

 You'll see the following screen. The fields on this page are confidential to you. Click **Next** on this page

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image6.png" style="width:6.5in;height:3.3375in" />

1.  You will see the following screen. It completes the first part of journey on azure portal

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image7.png" style="width:6.5in;height:2.05833in" />

1.  Go to your canvas instance. Select **Admin** à **Developer Keys**. Choose **LTI Key** in the dropdown on Developer Key button on top right

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image8.png" style="width:6.5in;height:3.38889in" />

1.  Copy the values here from step \#8

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image9.png" style="width:6.5in;height:3.37083in" />

1.  The key gets created in **OFF** mode

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image10.png" style="width:6.5in;height:3.35556in" />

1.  Copy the highlighted text. This serves as Client ID in Microsoft OneDrive LTI portal

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image11.png" style="width:6.5in;height:3.36319in" />

1.  Paste this text into **Client ID** field in Microsoft OneDrive LTI portal and click **Next**

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image12.png" style="width:6.5in;height:2.75139in" />

1.  The resulting page looks like this. Click **Save**

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image13.png" style="width:6.5in;height:3.17222in" />

1.  The settings can be viewed by clicking **View LTI Tenants**

<img src="c:\Users\v-cichur\GitHub\microsoft-365-docs-pr\microsoft-365\knowledge/media/image14.png" style="width:6.5in;height:1.5in" />
