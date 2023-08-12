---
title: 'Run your test on-demand'
description: How to run your test on-demand
search.appverid: MET150
author: Tinacyt
ms.author: tinachen
manager: rshastri
audience: Software-Vendor
ms.topic: troubleshooting
ms.date: 08/10/2022
ms.service: test-base
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:
ms.reviewer: Tinacyt
f1.keywords: NOCSH
---

# Run your test on-demand

> [!NOTE]
> Test Base now provides the option to kickoff a test with an on-demand approach.

## Run as request under Manage packages

For an active package, you can access the run-on-request feature from the Manage packages page.

> [!div class="mx-imgBorder"]
> [ ![Manage packages](Media/runondemand01-managepackages.png) ](Media/runondemand01-managepackages.png#lightbox)

By specifying the OS update type and Windows product which are pre-defined with the package, you can kick off the test on demand which immediately gets scheduled for the current monthly churn of Windows updates.


> [!div class="mx-imgBorder"]
> [ ![Run on request](Media/runondemand02-runonrequest.png) ](Media/runondemand02-runonrequest.png#lightbox)

You don’t need the test to be executed with its automatic cadence before you can use the feature. You can now decide which product and when to be tested.

> [!div class="mx-imgBorder"]
> [ ![Testsummary](Media/runondemand03-testsummary.png) ](Media/runondemand03-testsummary.png#lightbox)

> [!NOTE]
> Please be remind that only active packages will have Run on request button enabled. Make sure you Enable the package for future tests if you would like to opt-in the package for this feature.