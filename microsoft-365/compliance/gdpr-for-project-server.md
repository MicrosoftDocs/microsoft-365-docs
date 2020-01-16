---
title: "GDPR for Project Server"
description: "Learn about how to address GDPR requirements in on-premises Project Server."
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
titleSuffix: Microsoft GDPR
---

# GDPR for Project Server

Project Server uses custom scripts to export and redact user data in Project Web App. The basic process is:

1.  Find the Project Web App sites in your farm.

2.  Find the projects in each site that contain the user.

3.  Export and review the types of data that you want to review.

4.  Redact data as needed.

These steps are covered in detail in the following articles:

- [Export user data from Project Server](/Project/export-user-data-from-project-server?toc=/Office365/Enterprise/toc.json)

- [Delete user data from Project Server](/Project/delete-user-data-from-project-server?toc=/Office365/Enterprise/toc.json)


Note that Project Server is built on top of SharePoint Server and logs events to the SharePoint ULS logs and Usage database. See [GDPR for SharePoint Server](gdpr-for-sharepoint-server.md) for more information.
