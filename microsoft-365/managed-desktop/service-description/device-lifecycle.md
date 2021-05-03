---
title: Microsoft Managed Desktop product lifecycle
description:  This article lists the device specifications used in Microsoft Managed Desktop.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Microsoft Managed Desktop product lifecycle

Microsoft Managed Desktop benefits users assuring that they always use devices that offer the best performance, reliability, design, and security capabilities (such as support for features like Windows Hello). To accomplish this, Microsoft Managed Desktop maintains a short catalog of continuously updated approved devices. You can view approved devices by filtering for Microsoft Managed Desktop on the [Shop Windows 10 Pro business devices](https://www.microsoft.com/windowsforbusiness/view-all-devices) site.
 
This article details the lifecycle of devices as they are added and removed from the approved catalog. 

> [!NOTE]
> In this topic, we'll make a distinction between a "device" and a "product." By "device," we mean one individual, specific computer. For example, "Serial number 1234", "Bill's laptop", "Shared VM XYZ" refer to specific devices. A "product", however, refers to a collection or family of devices. For example, "Fabrikam Laptop", "Adatum ZX450 Laptop", etc. This is important because products are added to our approved list, or catalog, and devices are what get enrolled into Microsoft Managed Desktop.

## Product lifecycle

 Generally, products move through these lifecycle phases:

- [Product release and evaluation](#product-release-and-evaluation)
- [Product primary availability period](#product-primary-availability-period)
- [Product grace period](#product-grace-period)
- [Product retirement](#product-retirement)


This illustration shows the entire sequence:

![lifecycle timeline: starting with product general availability, "primary availability" lasts for two years. During this time the certification window ends and at some point the device is onboarded. At the end of primary availability, the product is archived and the "grace period" of three years starts. Starting when the device is onboarded, it has a 3-year period of use until it's removed from management. At the end of the grace period we remove the product from the catalog.](../../media/non-dark1-edits.PNG)

Products remain on the catalog for up to 24 months, but <em>devices</em> remain under management for three years based on their individual enrollment dates. Effectively, each product has three important dates, but each device has only one. For products, all three of these dates are calculated based on the <em>approval date</em>, and therefore we publish these dates upon approval so that you can always look ahead and plan appropriately for the product's entire lifecycle.

This table shows example dates for a theoretical product:


|Product  |Approved date  |End of primary availability  |End of eligibility  |
|---------|---------|---------|---------|
|Fabrikam Laptop    | 1/1/2017 | 6/1/2019 | 6/1/2022 |
|Adatum Laptop   | 1/1/2018 | 6/1/2020 | 6/1/2023  |

This table shows example dates for theoretical *devices*:


|Device ID  |Enrollment date  |Retirement date  |
|---------|---------|---------|
|Laptop #123412     |  2/3/2018       |  2/3/2021       |
|Desktop #321513     | 6/2/2018        |  6/2/2021       |


## Product release and evaluation

The product lifecycle starts when a manufacturer publicly releases the product:

![lifecycle timeline showing release and evaluation period](../../media/non-dark3-edits.PNG)

During this stage, the Microsoft Managed Desktop engineering team does their evaluation and certification of a product. The team evaluates things like reliability and performance with Windows, compliance with a hardware baseline, market sentiment, and inventory and channel readiness, among other things. This process typically takes approximately six weeks.
  
Microsoft Managed Desktop will only evaluate devices for certification within their first six months of availability. This policy ensures that we're always focusing our efforts on the latest generation of hardware.
 
At the end of this phase, Microsoft Managed Desktop adds the product to the [approved list](device-list.md), effectively releasing the product for customer enrollments. Regardless of the date when a device is certified, its **approved date** is back-dated to the product's own general availability date. 


## Product primary availability period

This period is the core of product availability:

![lifecycle timeline showing primary availability](../../media/non-dark4-edits.PNG)

Any device enrolled during this period receives the full three years of support from Microsoft Managed Desktop (as shown by the blue timeline). This period lasts until an end date set to 24 months from the general availability date.

You can think of this period as effectively "open enrollment", so to maximize the value of Microsoft Managed Desktop, you should target your procurement models and selected products to fall within this period. As a small example, you should avoid settling on a two-year roll-out period using a product that is in its final month of primary availability – most of those devices will not receive the full three years of Microsoft Managed Desktop management (see [grace period](#product-grace-period) for more information).  

## Product grace period

The product grace period is a three-year period following primary availability. This phase allows you to enroll devices that are from a supported product family, but still hold firm to the promises of Microsoft Managed Desktop regarding modern hardware and device performance. This phase is ideal for customers who have made procurement decisions before knowing about Microsoft Managed Desktop. 

If you've recently bought approved devices prior to enrolling with Microsoft Managed Desktop, you can still enroll them, but you won't receive a full three years of management. Instead, they'll fall out of compliance on the retirement date, regardless of when they were enrolled. Behind the scenes, Microsoft Managed Desktop will treat these devices as if they were enrolled on the last day of primary availability. In this illustration, you can see this scenario by noting that both the blue and green device end on the same day, despite their one-year difference in enrollment:


![lifecycle timeline showing grace period](../../media/non-dark2-edits.PNG)

The Fabrikam Laptop example from the previous table illustrates this situation: 

|Product  |Approved date  |End of primary availability  |End of eligibility  |
|---------|---------|---------|---------|
|Fabrikam Laptop    | 6/1/2017 | 6/1/2019 | 6/1/2022 |

As a customer, you can enroll Fabrikam Laptops all the way until 6/1/2022 – however they will all be treated as though you enrolled them on 6/1/2019. If you enroll a Fabrikam Laptop on 6/1/2021, you'll only get one year of management. This policy allows you to extract partial lifecycles from products that were previously supported, rather than having to procure new devices prematurely. 

Finally, during this phase the device is removed from the [device list](device-list.md) and moved to the [archived device list](archived-device-list.md).


## Product retirement

Product retirement is the final phase of the lifecycle. In this phase, no new devices of that product type can be enrolled in Microsoft Managed Desktop and, by definition, all existing devices are now outside their allowed three-year term. During this time, Microsoft Managed Desktop will remove the device from the public list entirely. It's also during this phase where, if you haven't already procured replacements, you'll start to see diminished services as Microsoft Managed Desktop starts to ramp down on the devices that are out of compliance. 

## Devices that are out of compliance

A device is out of compliance when its allowed window for Microsoft Managed Desktop management has elapsed. This situation occurs when the device has reached three years of management or when that product type is removed from the device catalog, whichever occurs first. You should always target your procurement cycles such that new devices are deployed prior to current devices going out of compliance.

The Microsoft Managed Desktop team knows that procurement cycles are long and planned around long-running budgets. To ensure that you're always aware of the state of your device population, we provide a [website](https://aka.ms/mmdportal) that lists every device under management, its age, and a status indicating its compliance. The website helps you always have the latest information regarding device age and can use the report in any procurement planning cycle. 







