---
title: Integrate Microsoft Teams classes and meetings with Desire2Learn Brightspace
ms.author: danismith
author: DaniEASmith
manager: serdars
ms.reviewer: amitman 
audience: admin
ms.topic: article
ms.service: o365-administration
ms.collection: 
- M365-modern-desktop
- m365initiative-edu
ms.localizationpriority: medium
description: Create and manage Teams classes and meetings with Microsoft Learning Tools Interoperability for Desire2Learn (D2L) Brightspace.
---

# Integrate Microsoft Teams classes and meetings within Desire2Learn Brightspace

This guide provides the IT admin steps for registering both Teams Classes and Teams Meetings LTI apps for the Desire2Learn (D2L) Brightspace LMS.

For details on managing all LTI apps for any LMS, see [Manage Microsoft LMS Gateway for any LMS](manage-microsoft-one-lti.md).

## Prerequisites before set up

For the integration between D2L Brightspace and Teams to function correctly, D2L Brightspace and Teams must be set up to communicate with one another.

1. For Teams Classes to work, you need to have **Brightspace Course Connector** installed and configured correctly. Follow [these steps to install the connector on your D2L Brightspace account](https://community.brightspace.com/s/article/Getting-started-with-Brightspace-Course-Connector-for-Microsoft-Teams).

   > [!NOTE]
   > Select **Class Team** for **Integration type** when setting up the connector to ensure compatibility with Teams LTI tools.

2. Teams Meetings will work without the course connector. However, certain features such as **Add entire class** won't be available.

## Register Microsoft Teams LTI for use in D2L Brightspace
