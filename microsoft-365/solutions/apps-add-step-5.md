---
title: "Step 5. Manage apps and licenses"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Step 5. Manage apps and licenses.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 5. Manage apps and licenses

Microsoft Intune makes it easy to manage both apps and app licenses used by each member of your organization.  

## Manage app licenses

There are two areas of Intune used to manage app licenses:
- Connector status is used to keep your app license in sync with the app license provider.
- Monitor app licenses is used to keep your app instances in sync with Intune.

### Connector status

Connectors are connections you configure from Intune to external services, such as Apple Volume Purchase Program service. **Connector status** is provided as part of the tenant status in Intune. When you view the **Connector status** in Intune, you are provided with connectors that are unhealthy, connectors with warnings, and connectors that are healthy. In addition, Intune lists connectors that are **Not Enabled**.

> [!TIP]
> A tenant is an instance of Azure Active Directory (Azure AD). Your subscription to Intune is hosted by an Azure AD Tenant. For more information, see [Set up a tenant](/azure/active-directory/develop/quickstart-create-new-tenant) in the Azure AD documentation.

Use the following steps to add in-volume apps to Intune:
1. Confirm that the connectors your Intune tenant is using are healthy.

### Monitor app licenses

Using Intune, you can view the licenses in-use, the available licenses, and the total number of licenses for each app.

## Manage apps

You can view a list of all apps that have been added to Intune. This list provides details about each apps, such as the type, status, and verision. Also, the list shows whether the app has been assigned to members of your organization.

### App reports

Microsoft Intune reports allow you to more effectively and proactively monitor the health and activity of endpoints across your organization, and also provides other reporting data across Intune. For example, you'll be able to see reports about device compliance, device health, and device trends. In addition, you can create custom reports to obtain more specific data.

The following list provides Intune reports that are specific to apps:

- [Managed Apps report (Organizational)](/mem/intune/fundamentals/reports#managed-apps-report-organizational)
- [Reporting tiles](/mem/intune/fundamentals/reports#reporting-tiles)
- [App Install Status report (Operational)](/mem/intune/fundamentals/reports#app-install-status-report-operational)
- [Device Install Status report for apps (Operational)](/mem/intune/fundamentals/reports#device-install-status-report-for-apps-operational)
- [User Install Status for apps report (Operational)](/mem/intune/fundamentals/reports#user-install-status-for-apps-report-operational)

For additional app information, see [Manage apps](/mem/intune/apps/).