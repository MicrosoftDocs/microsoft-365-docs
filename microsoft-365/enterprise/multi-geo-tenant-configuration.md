---
title: Microsoft 365 Multi-Geo tenant configuration
ms.reviewer: adwood
ms.date: 08/10/2020
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.collection:
- SPO_Content
- Strat_SP_gtc
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.localizationpriority: medium
description: In this article, learn how to add satellite locations and configure your tenant for Microsoft 365 Multi-Geo.
---

# Microsoft 365 Multi-Geo _Tenant_ configuration

Before you configure your _Tenant_ for Microsoft 365 Multi-Geo, be sure you have read [Plan for Microsoft 365 Multi-Geo](plan-for-multi-geo.md).

To follow the steps in this article, you'll need a list of the _Geography_ locations that you want to enable as _Satellite Geography_ locations, and the test users that you want to provision for those locations.

Not all Multi-Geo workloads require customer driven configuration.

## Configuring Exchange Online for Multi-Geo

There is no customer driven configuration required to prepare Exchange Online in a Multi-Geo enabled _Tenant_. A customer may use all Geographies with Exchange Online as soon as Multi-Geo has been enabled within Exchange Online for their _Tenant_.

## Configuring Microsoft Teams for Multi-Geo

There is no customer driven configuration required to prepare Microsoft Teams in a Multi-Geo enabled tenant. A customer may use all Geographies with Microsoft Teams as soon as Multi-Geo has been enabled within Microsoft Teams for their _Tenant_.

## Configuring SharePoint Online and OneDrive for Business for Multi-Geo

If you want to store data in a particular Geography, then that Geography must be configured for SharePoint Online and OneDrive ahead of time.

Once Multi-Geo has been enabled for your _Tenant_ in SharePoint Online and OneDrive for Business, the **Geo Locations** tab will become available in the OneDrive for Business and SharePoint Online admin centers. If you do not see the **Geo Locations** tab, then your _Tenant_ has not yet finished being enabled for Multi-Geo.

To add each Satellite Geography location for SharePoint and OneDrive where you want to store data:

1. Open the SharePoint admin center. and go to **Geo locations**.
1. Select **Add location**.
1. Select the location that you want to add, and then select **Next**.
1. Type the domain that you want to use with the geo location, and then select **Add**.
1. Select **Close**.

Provisioning may take from a few hours up to 72 hours, depending on the size of your _Tenant_. Once provisioning of a _Satellite Geography_ location has completed, you will receive an email confirmation. When the new _Geography_ location appears in blue on the map on the Geo locations tab in the OneDrive and SharePoint admin center, then you can proceed to set users' preferred data location to that _Geography_ location.

> [!IMPORTANT]
> Your new _Satellite Geography_ location will be set up with default settings. This will allow you to configure that _Satellite Geography_ location as appropriate for your local compliance needs.
