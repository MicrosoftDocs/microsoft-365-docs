---
title: Integrate ServiceNow tickets into the Microsoft 365 security center and compliance center
description: Learn how to create and track tickets in ServiceNow from the Microsoft 365 security center and compliance center.
keywords: security, Microsoft 365, M365, compliance, compliance center, security center, ServiceNow, tickets, tasks, SNOW, connection
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: ellevin
author: levinec
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance  
ms.topic: article
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
---
# Integrate ServiceNow tickets into the Microsoft 365 security center and compliance center

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

>[!CAUTION]
>**The preview period for the ServiceNow connector is ending**<br>
>This capability will no longer available by the end of November 2020. Thank you for your feedback and continued support while we determine next steps.

ServiceNow is a popular cloud computing platform that helps companies manage digital workflows for enterprise operations. Their Now platform has IT workflows, employee workflows, and customer workflows. [Learn more about ServiceNow](https://www.servicenow.com/)

Microsoft has partnered with ServiceNow to make it easier for IT admins to manage their tickets and tasks in both platforms. [Microsoft 365 security center](overview-security-center.md) and the [Microsoft 365 compliance center](https://docs.microsoft.com/microsoft-365/compliance/microsoft-365-compliance-center) are being enhanced with the ability to natively create and track tickets in ServiceNow.

- [**Manage ServiceNow tickets in the security center**](tickets-security-center.md)
- **Manage ServiceNow tickets in the compliance center** (coming soon)

## Prerequisites

Have access to the Microsoft 365 security center or compliance center and a ServiceNow instance with:  

* Kingston or higher version
* Have admin HI credentials
* Have admin privileges on your target vendor instance

ServiceNow recommends that users keep default settings in your ServiceNow instance. Having customizations could cause errors when completing the installation checklist and integration with the Microsoft 365 security center.

## Data exchange

When you connect the Microsoft 365 security center or compliance center to ServiceNow, Microsoft receives the following additional data:

* ServiceNow instance name
* ServiceNow client ID
* ServiceNow client secret
* ServiceNow access & refresh tokens

When you create a ServiceNow ticket from the Microsoft 365 security center or compliance center, the following data is sent to ServiceNow:

* User ID that initiates the ticket creation
* Task name
* Task description
* Priority
* Due date
* Recommendation source (User recommendation or Microsoft recommendation)
* Recommendation category (Devices, Data, Apps, Identity, Infrastructure)

## Connect to ServiceNow

Go to [Create and track ServiceNow tickets in the Microsoft 365 security center](tickets-security-center.md) to learn how to connect to ServiceNow. Connecting from the Microsoft 365 compliance center is coming soon.

## Troubleshooting

### You receive an error in the first step of the installation checklist (OAuth creation)

**Error Message**: Read operation against 'oauth_entity' from scope 'x_mioms_m365ticket' has been refused because of the table's cross-scope access policy

The app assumes any admin on the ServiceNow instance can create and read OAuth entities. This error could be caused by a customization in your instance of ServiceNow that restricts who can create or read OAuth entities.

**ServiceNow recommends that users keep default functionality.**

Set the "application registries" table configurations to default:

* Label = Application Registeries
* Name = oauth_entity
* Accessible from = All application scopes
* Can read = check box selected

### How to validate the OAuth entity created for Microsoft 365 Security & Compliance connector

Go to application registries table (**Menu > System OAuth > Application Registry**) in ServiceNow. Find the OAuth entity created by you, with the name that you assigned it.

### Signing in as the integration user

Before you authorize the connection between Microsoft 365 security center and ServiceNow, make sure you use the integration user sign in and password you created in the installation steps. Don't use your personal credentials.

1. Go the authorization page in ServiceNow.
2. If you're signed in with your personal credentials, select the **Not You** link in the upper right-hand corner.
3. Sign in to ServiceNow as the integration user you created previously from the installation checklist.  
4. Select **Allow** in the ServiceNow page that asks whether the Security + Compliance Connector can connect to your ServiceNow account.
5. Continue with the setup steps.

### How to validate the Integration User created with the installation checklist for Microsoft 365 Security & Compliance connector

Go to Users Table **(Menu > User Administration > Users**) in ServiceNow and find the Integration user created by you, with the name that you assigned it.

### Your company has single sign-on enabled which prevents you from connecting to ServiceNow through the Microsoft 365 security center

If your company has enabled single sign-on and you receive an error or sign in is unsuccessful, follow one of the two solutions.

#### Sign in to ServiceNow as the integration user

1. Navigate back to the authorization page in ServiceNow.
2. Select the **Not You** link in the upper right-hand corner.
3. Sign in to ServiceNow as the integration user you created previously from the installation checklist.  
4. Select **Allow** in the ServiceNow page that asks whether the Security + Compliance Connector can connect to your ServiceNow account.
5. Continue with the setup steps.

#### Create a security admin user

1. Create a user with security admin privileges in Azure Active Directory. The user needs to have the same name and email address as the integration user you created from the Installation Checklist. You can remove the security admin role once sign-in and connection has been completed.
2. Sign in to the Microsoft 365 security center as this user and follow the setup steps.

### IP filtering

If you have enabled IP filtering, you may need to explicitly allow IP addresses. See [IP Address Access Control](https://docs.servicenow.com/bundle/orlando-platform-administration/page/administer/login/task/t_AccessControl.html) for information on how to allow IP ranges in ServiceNow. See [Azure IP Ranges and Service Tags - Public Cloud](https://www.microsoft.com/en-us/download/details.aspx?id=56519) for a list of IP addresses to allow.

### Installation is complete but don't see tickets and can't share

If the installation and setup steps have been completed, but you don't see the ServiceNow cards on the home page and can't share to ServiceNow from Microsoft Secure Score, check the status of the provisioning page at https://security.microsoft.com/ticketProvisioning. Select **Authorize** and return to the home page. The cards should appear.

## Resources

- [Manage ServiceNow tickets in the security center](tickets-security-center.md)
