---
title: Configure your Event Hub
description: Learn how to configure your Event Hub
keywords: event hub, configure, insights
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
localization_priority: normal
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: article
MS.technology: mde
---

# Configure your Event Hub

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


Learn how to configure your Event Hub so that you can ingest events from Microsoft 365 Defender.


Setup the required Resource Provider in the Event Hub subscription
--------------------------------------------------------------------

1. Sign in to the [Azure portal](https://portal.azure.com).
1. Select **Subscriptions \> {***Select the subscription the event hub will be deployed
to***} \> Resource providers**.
1. Verify that the **Microsoft.Insights** Provider is registered. Otherwise, register it.

![Image of resource providers in Microsoft Azure](../../media/f893db7a7b1f7aa520e8b9257cc72562.png)

Setup Azure Active Directory App Registration
--------------------------

>![NOTE]
>You must have Administrator role or Azure Active Directory (AAD) must be
set to allow non-Administrators to register apps. You must also have an Owner or
User Access Administrator role to assign the service principal a role.  
For more information, see [Create an Azure AD app & service principal in the
portal - Microsoft identity platform \| Microsoft
Docs](/azure/active-directory/develop/howto-create-service-principal-portal).

1. Create a new registration (which inherently creates a service principal) in
**Azure Active Directory \> App registrations \> New registration.**

1. Fill out the form with just the Name (no Redirect URI is required).

    ![Image of register an application](../../media/336bc84e6be23900c43232b4ef0c253c.png)

    ![Image of Overview information](../../media/06ac04c4ff713c2065cec2ef2f99a294.png)

1. Create a secret by clicking on **Certificates & secrets \> New client secret**:

    ![Image of certificates and secrets](../../media/d2ef88d3d2310d2c60c294b569cdf02e.png)

>[!WARNING]
>**You won't be able to access the client secret again so make sure
to save it**.

Setup Event Hub namespace
-------------------------

1. Create an Event Hub Namespace:

    Go **to Event Hubs \> Add** and select the pricing tier, throughput units and
    Auto-Inflate (requires standard pricing and under features) appropriate for the
    load you are expecting.  
    For more information, see [Pricing - Event Hubs \| Microsoft
    Azure](https://azure.microsoft.com/en-us/pricing/details/event-hubs/)

    >[!NOTE]
    > You can use an existing event hub, but the throughput and scaling are set at the namespace level so it is recommended to place an event hub in itsown namespace.

   ![Image of Event Hub name space](../../media/ebc4ca37c342ad1da75c4aee4018e51a.png)

1. You will also need the Resource ID of this Event Hub Namespace. Go to your Azure Event Hubs namespace page \> Properties. Copy the text under Resource ID and record it for use during the M365 Configuration section below. 

    ![Image of properties](../../media/759498162a4e93cbf17c4130d704d164.png)

1. Once the Event Hub Namespace is created you will need to add the App Registration Service Principal as Reader, Azure Event Hubs Data Receiver, and the user who will be logging into Microsoft 365 Defender as Contributor (this can also be done at Resource Group or Subscription level).

    This is done in **Event Hubs Namespace \> Access Control (IAM) \> Add** and
verify under **Role assignments**:

    ![Image of access control](../../media/9c9c29137b90d5858920202d87680d16.png)

Setup Event Hub
---------------

**Option 1:**

You can create an Event Hub within your Namespace and **all** the Event Types
(Tables) you select to export will be written into this **one** Event Hub.

**Option 2:**

Instead of exporting all the Event Types (Tables) into one Event Hub, you can
export each table into a different Event Hub inside your Event Hub Namespace
(one Event Hub per Event Type).  

In this option, Microsoft 365 Defender will create Event Hubs for you.  
>[!NOTE]
> If you are using an Event Hub Namespace that is **not** part of an Event Hub Cluster, you will only be able to choose up to 10 Event Types (Tables) to export in each Export Settings you define, due to an Azure limitation of 10 Event Hubs per Event Hub Namespace.

For example:

![Image of example Event Hub](../../media/005c1f6c10c34420d387f594987f9ffe.png)

If you choose this option, you can skip to the [Configure Microsoft 365
Defender to send email tables](#configure-microsoft-365-defender-to-send-email-tables) section.

Create an Event Hub within your Namespace by selecting **Event Hubs \> + Event
Hub**.

The Partition Count allows for additional throughput via parallelism, so it is
recommended to increase this number based on the load you are expecting.  
Default Message Retention and Capture values of 1 and Off are recommended.

![Image of create Event Hub](../../media/1db04b8ec02a6298d7cc70419ac6e6a9.png)

For this Event Hub (not namespace) you will need to configure a Shared Access
Policy with Send, Listen Claims. Click on your **Event Hub \> Shared access
policies \> + Add** and then give it a Policy name (not used elsewhere) and
check **Send** and **Listen**.

![Image of shared access policies](../../media/1867d13f46dc6a0f4cdae6cf00df24db.png)

Configure Microsoft 365 Defender to send email tables
================================

Setup Microsoft 365 Defender send Email tables to Splunk via Event Hub:
-----------------------------------------------------------------------

1. Login to Microsoft 365 Defender at <https://security.microsoft.com> with an
account that meets all the following role requirements:

    - Contributor role at the Event Hub *Namespace* Resource level or higher for
    the Event Hub that you will be exporting to. Without this you will get an
    export error when you try to save the settings.

    - Global Admin or Security Admin Role on the tenant tied to Microsoft 365
    Defender and Azure.

    ![Image of security portal](../../media/55d5b1c21dd58692fb12a6c1c35bd4fa.png)

1. Click on **Raw Data Export \> +Add**.

    You will now use the data that your recorded above.

    **Name**: This is local and should be whatever works in your environment.

    **Forward events to event hub**: Select this checkbox.

    **Event-Hub Resource ID**: This is the Event Hub Namespace Resource ID you
    recorded above when you setup the Event Hub.

    **Event-Hub name**:  If you created an Event Hub inside your Event Hub Namespace, paste the Event Hub  name you recorded above.

    If you choose to let Microsoft 365 Defender to create Event Hubs per Event Types
    (Tables) for you, leave this field empty.

    **Event Types**: Select the Advanced Hunting tables that you want to forward to
    the Event Hub and then on to your custom app. Alert tables are from Microsoft
    365 Defender, Devices tables are from Microsoft Defender for Endpoint (EDR), and
    Email tables are from Microsoft Defender for Office 365. Email Events records
    all Email Transactions. The URL (SafeLinks), Attachment (Safe Attachments) and
    Post Delivery Events (ZAP) are also recorded and can be joined to the Email
    Events on the NetworkMessageId field.

    ![Image of streaming API settings](../../media/3b2ad64b6ef0f88cf0175f8d57ef8b97.png)

1. Make sure to click **Submit**.

Verify that the events are being exported to the Event Hub
==========================================================

You can verify that events are being sent to the Event Hub by running a basic
Advanced Hunting query. Select **Hunting \> Advanced Hunting \> Query** and
enter the following query:

```
EmailEvents
|joinkind=fullouterEmailAttachmentInfoonNetworkMessageId
|joinkind=fullouterEmailUrlInfoonNetworkMessageId
|joinkind=fullouterEmailPostDeliveryEventsonNetworkMessageId
|whereTimestamp\>ago(1h)
|count
```

This will show you how many emails were received in the last hour joined across
all the other tables. It will also show you if you are seeing events that could
be exported to the event hub. If this count shows 0 then you won't see any data
going out to the Event Hub.

![Image of advanced hunting](../../media/c305e57dc6f72fa9eb035943f244738e.png)

Once you have verified there is data to export, you can view the Event Hub to
verify that messages are incoming. This can take up to one hour. 
 
1. In Azure, go to **Event Hubs \> Click on the Namespace \> Event Hubs \> Click on
the Event Hub**.  
1. Under **Overview**, scroll down and in the Messages graph you should see
Incoming Messages. If you don't see any results, then there will be no messages
for your custom app to ingest.

    ![Image of the overview tab with messages](../../media/e88060e315d76e74269a3fc866df047f.png)
