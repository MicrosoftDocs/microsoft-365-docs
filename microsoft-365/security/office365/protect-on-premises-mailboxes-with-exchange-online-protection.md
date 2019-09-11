---
title: "Protect on-premises mailboxes with Exchange Online Protection"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 6/1/2017
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- GEU150
- GMA150
- GPA150
- MET150
ms.assetid: c5e95951-da67-4ec7-92c5-982abd477e69
ms.collection:
- M365-security-compliance
description: "Even if you plan to host some or all of your mailboxes on-premises, you can still protect the mailboxes with Exchange Online Protection (EOP). To configure connectors, your account must be an Office 365 Global Admin, or an Exchange Company Administrator (the Organization Management role group). For information about how Office 365 permissions relate to Exchange permissions, see Assigning admin roles in Office 365 operated by 21Vianet. If all of your Exchange mailboxes are on-premise, follow these steps to set up your EOP service."
---

# Protect on-premises mailboxes with Exchange Online Protection

> [!NOTE]
> This article applies only to Office 365 operated by 21Vianet in China. 
  
Even if you plan to host some or all of your mailboxes on-premises, you can still protect the mailboxes with Exchange Online Protection (EOP). To configure connectors, your account must be an Office 365 Global Admin, or an Exchange Company Administrator (the Organization Management role group). For information about how Office 365 permissions relate to Exchange permissions, see [Assigning admin roles in Office 365 operated by 21Vianet](https://support.office.com/article/d58b8089-cbfd-41ec-b64c-9cfcbef495ac). If all of your Exchange mailboxes are on-premise, follow these steps to set up your EOP service. 
  
## Step 1: Use the Microsoft 365 admin center to add and verify your domain

1. In the Microsoft 365 admin center, navigate to Setup to add your domain to the service.
    
2.  Follow the steps in the portal to add the applicable DNS records to your DNS-hosting provider in order to verify domain ownership. 
    
> [!TIP]
> [Add your domain and users to Office 365 operated by 21Vianet](https://support.office.com/article/1cd4839b-d051-46b8-ab9b-bc7752024e78) and [Create DNS records for Office 365 when you manage your DNS records](https://support.office.com/article/0669bf14-414d-4f51-8231-6b710ce7980b) are helpful resources to reference as you add your domain to the service and configure DNS. 
  
### Step 2: Add recipients and configure the domain type

Before configuring your mail to flow to and from the EOP service, we recommend adding your recipients to the service. There are several ways in which you can do this, as documented in [Manage mail users in EOP](https://go.microsoft.com/fwlink/?LinkId=506782). Also, if you want to enable Directory Based Edge Blocking (DBEB) in order to enforce recipient verification within the service after adding your recipients, you need to set your domain type to Authoritative. For more information about DBEB, see [Use Directory Based Edge Blocking to Reject Messages Sent to Invalid Recipients](https://go.microsoft.com/fwlink/?LinkId=506781).
  
## Step 3: Use the EAC to set up mail flow

Create connectors in the Exchange admin center (EAC) that enable mail flow between EOP and your on-premises mail servers. For detailed instructions, see [Create required connectors to set up basic email flow through EOP](https://go.microsoft.com/fwlink/?LinkId=506780).
  
 How do you know this task worked? 
  
 Use the Remote Connectivity Analyzer to run a test that checks mail flow between the service and your environment. For more information, see the "Use the Remote Connectivity Analyzer to test email delivery" section in [Test mail flow with the Remote Connectivity Analyzer](https://go.microsoft.com/fwlink/?LinkId=506784).
  
## Step 4: Allow inbound port 25 SMTP access

After you configured connectors, wait 72 hours to allow propagation of your DNS-record updates. Following this, restrict inbound port-25 SMTP traffic on your firewall or mail servers to accept mail only from the EOP datacenters, specifically from the IP addresses listed at [URLs and IP address ranges for Office 365 operated by 21Vianet](https://support.office.com/article/5c47c07d-f9b6-4b78-a329-bfdc1b6da7a0#__exchange_online_protection). This protects your on-premises environment by limiting the scope of inbound messages you can receive. Additionally, if you have settings on your mail server that control the IP addresses allowed to connect for mail relay, update those settings as well.
  
> [!TIP]
> Configure settings on the SMTP server with a connection time out of 60 seconds. This setting is acceptable for most situations, allowing for some delay in the case of a message sent with a large attachment, for instance. 
  
## Step 5: Use the Shell to ensure that spam is routed to each user's junk email folder

To ensure that spam (junk) email is routed correctly to each user's Junk Email folder, you must perform a couple of configuration steps. The steps are provided in [Ensure that spam is routed to each user's Junk Email folder](https://go.microsoft.com/fwlink/?LinkId=506804). If you don't want to move messages to each user's Junk Email folder, you may choose another action by editing your content filter policies in the Exchange admin center. For more information, see [Configure Content Filter Policies](https://go.microsoft.com/fwlink/?LinkId=506805). 
  
## Step 6: Use the Microsoft 365 admin center to point your MX record to EOP

Follow the Office 365 domain configuration steps to update your MX record for your domain, so that your inbound email flows through EOP. For more information, you can again reference [Create DNS records for Office 365 when you manage your DNS records](https://support.office.com/article/0669bf14-414d-4f51-8231-6b710ce7980b).
  
How do you know this task worked?
  
 Use the Remote Connectivity Analyzer to run a test that verifies your MX record. For more information, see the "Use the Remote Connectivity Analyzer to test your MX record and Outbound connector" section in [Test mail flow with the Remote Connectivity Analyzer](https://go.microsoft.com/fwlink/?LinkId=506784). 
  
At this point, you've verified service delivery for a properly configured Outbound on-premises connector, and you've verified that your MX record is pointing to EOP. You can now choose to run the following additional tests to verify that an email will be successfully delivered by the service to your on-premises environment:
  
- In the Remote Connectivity Analyzer, click the **Office 365** tab, and then run the **Inbound SMTP Email** test located under **Internet Email Tests**.
    
- Send an email message from any web-based email account to a mail recipient in your organization whose domain matches the domain you added to the service. Confirm delivery of the message to the on-premises mailbox using Microsoft Outlook or another email client.
    
- If you want to run an outbound email test, you can send an email message from a user in your organization to a web-based email account and confirm that the message is received.
    
## Less common: A hybrid setup with mailboxes on-premises and in the cloud

If you have Exchange mailboxes on-premises and one or more mailboxes in the cloud in Exchange Online, you have a  *hybrid*  setup. In a hybrid setup, features such as free/busy calendar sharing and mail routing work together in your on-premises and cloud environments. You might have a hybrid setup in place while you transition mailboxes to Exchange Online. A hybrid environment is set up differently than EOP standalone protection. 
  
You might choose a hybrid scenario to take advantage of cloud-based email for most of your employees. You can do this while also hosting some mailboxes on-premises; for example, for your legal department. 
  
A hybrid setup can be complex, but it has many benefits. To learn more about setting up hybrid scenarios with Exchange, see [Configuring Exchange hybrid deployment features with Office 365 operated by 21Vianet](https://support.office.com/article/26e7cc26-c980-4cc5-a082-c333de544b6d).
  

