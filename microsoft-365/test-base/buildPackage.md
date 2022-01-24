---
title: 'Build a package'
description: Details on how to build a .zip package file
search.appverid: xx
author: mansipatel-usl
ms.author: mapatel
manager: rshastri
audience: Software-Vendor
ms.topic: how-to
ms.date: 01/24/2022
ms.service: virtual-desktop
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: mapatel
f1.keywords: NOCSH
---

# Build a package
A package is a .zip file containscontaining your application binary and test scripts, which is the prerequisite to use Test Base. This quickstart will guide you to build your first package, with which you can perform Out-of-box test on your application. 

    *"An"* **Out-of-Box (OOB)** *"test performs an install, launch, close, and uninstall of your application. After the install, the launch-close routine is repeated 30 times before a single uninstall is run"*. 

    *"The OOB test provides you with standardized telemetry on your package to compare across Windows builds"*.
    
Optionally, you can download the  [sample package](https://aka.ms/testbase-sample-package) to refer and start with. 

## Create a folder structure 

In your local computer, create a folder structure as follows:

