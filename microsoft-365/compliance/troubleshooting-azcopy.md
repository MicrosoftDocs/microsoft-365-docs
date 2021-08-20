---
title: "Troubleshoot AzCopy in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: troubleshooting
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: 
description: Troubleshoot errors for Azure AzCopy when loading non-Office 365 data for error remediation in Advanced eDiscovery.
ms.custom: 
 - seo-marvel-mar2020
 - seo-marvel-apr2020
---

# Troubleshoot AzCopy in Advanced eDiscovery

When loading non-Microsoft 365 data or documents for error remediation in Advanced eDiscovery, the user interface supplies an Azure AzCopy command that contains parameters with the location of where the files that you want to upload are stored and the Azure storage location that the files will be uploaded to. To upload your documents, you copy this command and then run it in a Command Prompt on your local computer.  The follow screenshot shows an example of an AzCopy command:

![Upload non-Microsoft 365 files](../media/46ba68f6-af11-4e70-bb91-5fc7973516e3.png)

Usually the command that's provided works when you run it. However, there may be cases when the command that's displayed will not run successfully. Here's a few possible reasons.

## The supported version of AzCopy isn't installed on the local computer

At this time, you must use AzCopy v8.1 to load non-Microsoft 365 data in Advanced eDiscovery. The AzCopy command that's displayed on the **Upload files** page shown in the previous screenshot returns an error if you're not using AzCopy v8.1. To install this version, see [Transfer data with the AzCopy v8.1 on Windows](/previous-versions/azure/storage/storage-use-azcopy).

## AzCopy isn't installed on the local computer or it's not installed in the default location

If AzCopy isn't installed or it's installed in a location other than the default install location (which is `%ProgramFiles(x86)%`), you may receive the following error when you run the AzCopy command:

> The system cannot find the path specified.

If AzCopy isn't installed on the local computer, you can find installation information in [Transfer data with the AzCopy v8.1 on Windows](/previous-versions/azure/storage/storage-use-azcopy). Be sure to install it in the default location.

If AzCopy is installed, but it's installed in a location different than the default location, you can copy the command, paste it to a text file, and then change the path to the location where AzCopy is installed. For example, if Azcopy is located in `%ProgramFiles%`, then you can change the first part of the command from `%ProgramFiles(x86)%\Microsoft SDKs\Azure\AzCopy.exe` to `%ProgramFiles%\Microsoft SDKs\Azure\AzCopy`. After you make this change, copy it from the text file and then run it a Command Prompt.

> [!TIP]
> If AzCopy is installed in a location other then the default install location, consider uninstalling it and then re-installing it in the default location. This will help prevent this issue in the future.