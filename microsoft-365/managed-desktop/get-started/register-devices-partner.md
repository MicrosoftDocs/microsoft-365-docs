---
title: Register devices in Microsoft Managed Desktop with a partner
description: Register devices so they can be managed by Microsoft Managed Desktop with the help of a partner
ms.prod: w10
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
---

# Register devices in Microsoft Managed Desktop with a partner


This article describes the steps for you to register devices with the assistance of a partner. The process for registering devices yourself is documented [Somewhere else LINK].

## Partner Process

### Preparing for Registration 
Before completing registration for a customer, you must first establish a relationship with them on Partner Center [Partner Center LINK].

To complete registration for your customer, you must create a CSV file.
>Note: This format is for Partners only. Customers have a different format for self-service documented [Somewhere else LINK].

>[!Important]These values must match the manufacturer values from SMBIOS exactly
- Device manufacturer (example: Microsoft) 
- Device model (example: Surface Laptop)
- Device serial number

## Register devices by by using the Admin Center
Registering by the UI is the same as for self-service, except getting to the portal is slightly different. Instead of using aka.ms/mmdportal, they must instead:
1. Navigate to PArtner Center
2. Click Customers
3. Click the customer they want to manage
4. Click Service Administration
5. Click Intune
6. Search "mmd" in the top search box of the Azure portal
7. click Devices and it's the same from here.

## Register devices by using an API
Registering by API is the same as self-service, except that the Hardware Hash property of the Device collection is optional as described in the CSV section. 