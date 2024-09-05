---
title: "Best practices for using Shared Bookings"
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 07/24/2024
audience: Admin
ms.topic: article
ms.service: bookings
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
description: "Understand and implement best practices for using Shared Booking features."
---

# Best practices for using Shared Bookings

Microsoft Bookings allows you to create and manage online appointments with your customers. By setting up multiple booking pages, offering different services, and assigning staff members, you can optimize your scheduling process. In this article, we'll cover best practices for using Bookings to help you get the most out of Shared Bookings.

## Use a custom domain for shared booking pages

By default, shared booking pages have a domain name in this format: "@.onmicrosoft.com". Domain admins can change the domain name to match their organization's name, creating a more professional and consistent brand for customers. For example, you can use "@bookings.contoso.com" instead.

> [!NOTE]
> We highly recommend configuring a custom domain for your Bookings pages. Using the default domain may cause Bookings email notifications to land in recipients' spam/junk folders.

For more information about custom domain support in Bookings, see [Custom domain support in Shared Bookings](custom-domain-support.md).

## Enable granular admin controls for Shared Bookings

Admins can configure granular controls to ensure additional control over shared booking pages in the organization. This allows you to define how Shared Bookings will be used in your organization.

See [Manage granular controls for Shared Bookings](granular-controls-shared-bookings.md) for more details.

## Use Power Automate connectors to build Bookings workflows

With Power Automate, Bookings admins can create workflows that automate tasks and processes in Bookings. For example, posting messages in a Teams channel when an appointment is created or syncing data with other apps. Power Automate provides a set of connectors for Bookings that let you access and control data from your booking pages, services, staff members, and customers.

To get started with Power Automate and Bookings, use the templates available in the Power Automate gallery or create your own flows. You can also customize the connectors for your organization's needs.

For more information about Power Automate and Bookings, see [Use Power Automate connectors to build Bookings workflows](power-automate-integration.md).

## Bulk creation of shared booking pages and reporting

You can use the Bookings Graph API (shared bookings) to create, read, update, and delete various entities like services, staff members, customers, and appointments. You can also use the Bookings API to integrate shared bookings with other apps and systems, such as a CRM, ERP, or business intelligence tools.

You can use the Graph APIs for bulk creation of shared booking pages in the organization based on specific needs. Additionally, you can cater to reporting and governance purposes, such as an overview of all shared booking pages in the organization or managing staff and services for booking pages.

To learn more about the Bookings API in Microsoft Graph, see [Use the Bookings API](/graph/api/resources/booking-api-overview?view=graph-rest-1.0&preserve-view=true).
