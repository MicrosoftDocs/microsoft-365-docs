---
title: "How Exchange Online uses TLS to secure email connections"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 8/2/2018
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid:
- MET150
- MOE150
ms.assetid: 4cde0cda-3430-4dc0-b489-f2c0736c929f
ms.collection:
- M365-security-compliance
- Strat_O365_IP
description: "Learn how Exchange Online and Microsoft 365 use Transport Layer Security (TLS) and Forward Secrecy (FS) to secure email communications. Also get information about the certificate issued by Microsoft for Exchange Online."
---


# How Exchange Online uses TLS to secure email connections

Learn how Exchange Online and Microsoft 365 use Transport Layer Security (TLS) and Forward Secrecy (FS) to secure email communications. Also provides information about the certificate issued by Microsoft for Exchange Online.
  
## TLS basics for Microsoft 365 and Exchange Online

Transport Layer Security (TLS), and SSL that came before TLS, are cryptographic protocols that secure communication over a network by using security certificates to encrypt a connection between computers. TLS supersedes Secure Sockets Layer (SSL) and is often referred to as SSL 3.1. For Exchange Online, we use TLS to encrypt the connections between our Exchange servers and the connections between our Exchange servers and other servers such as your on-premises Exchange servers or your recipients' mail servers. Once the connection is encrypted, all data sent through that connection is sent through the encrypted channel. However, if you forward a message that was sent through a TLS-encrypted connection, that message isn't necessarily encrypted. This is because, in simple terms, TLS doesn't encrypt the message, just the connection.
  
If you want to encrypt the message you need to use an encryption technology that encrypts the message contents, for example, something like Office Message Encryption. See [Email encryption in Office 365](email-encryption.md) and [Office 365 Message Encryption (OME)](ome.md) for information on message encryption options in Office 365. 
  
We recommend using TLS in situations where you want to set up a secure channel of correspondence between Microsoft and your on-premises organization or another organization, such as a partner. Exchange Online always attempts to use TLS first to secure your email but cannot always do this if the other party does not offer TLS security. Keep reading to find out how you can secure all mail to your on-premises servers or important partners by using  *connectors*. 

To provide the best-in-class encryption to our customers, Microsoft has deprecated Transport Layer Security (TLS) versions 1.0 and 1.1 in [Office 365](tls-1.0-and-1.1-deprecation-for-office-365.md) and [Office 365 GCC](tls-1-2-in-office-365-gcc.md). However, you can continue to use an unencrypted SMTP connection without any TLS. We don't recommend email transmission without any encryption.  
  
## How Exchange Online uses TLS between Exchange Online customers

Exchange Online servers always encrypt connections to other Exchange Online servers in our datacenters with TLS 1.2. When you send mail to a recipient that is within your organization, that email is automatically sent over a connection that is encrypted using TLS. Also, all email that you send to other customers is sent over connections that are encrypted using TLS and are secured using Forward Secrecy.
  
## How Microsoft 365 uses TLS between Microsoft 365 and external, trusted partners

By default, Exchange Online always uses opportunistic TLS. This means Exchange Online always tries to encrypt connections with the most secure version of TLS first, then works its way down the list of TLS ciphers until it finds one on which both parties can agree. Unless you have configured Exchange Online to ensure that messages to that recipient are only sent through secure connections, then by default the message will be sent unencrypted if the recipient organization doesn't support TLS encryption. Opportunistic TLS is sufficient for most businesses. However, for business that have compliance requirements such as medical, banking, or government organizations, you can configure Exchange Online to require, or force, TLS. For instructions, see [Configure mail flow using connectors in Office 365](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow).
  
If you decide to configure TLS between your organization and a trusted partner organization, Exchange Online can use forced TLS to create trusted channels of communication. Forced TLS requires your partner organization to authenticate to Exchange Online with a security certificate in order to send mail to you. Your partner will need to manage their own certificates in order to do this. In Exchange Online, we use connectors to protect messages that you send from unauthorized access before they arrive at the recipient's email provider. For information on using connectors to configure mail flow, see [Configure mail flow using connectors in Office 365](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow).
  
## TLS and hybrid Exchange Server deployments

If you are managing a hybrid Exchange deployment, your on-premises Exchange server needs to authenticate to Microsoft 365 using a security certificate in order to send mail to recipients whose mailboxes are only in Office 365. As a result, you need to manage your own security certificates for your on-premises Exchange servers. You must also securely store and maintain these server certificates. For more information about managing certificates in hybrid deployments, see [Certificate requirements for hybrid deployments](/exchange/certificate-requirements).
  
## How to set up forced TLS for Exchange Online in Office 365

For Exchange Online customers, in order for forced TLS to work to secure all of your sent and received email, you need to set up more than one connector that requires TLS. You'll need one connector for email sent to your user mailboxes and another connector for email sent from your user mailboxes. Create these connectors in the Exchange admin center in Office 365. For instructions, see [Configure mail flow using connectors in Office 365](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/use-connectors-to-configure-mail-flow).
  
## Get more information about TLS and Microsoft 365

For a list of supported cipher suites, see [Technical reference details about encryption](technical-reference-details-about-encryption.md).
  
[Set up connectors for secure mail flow with a partner organization](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/set-up-connectors-for-secure-mail-flow-with-a-partner)
  
[Connectors with enhanced email security](/previous-versions/exchange-server/exchange-150/dn942516(v=exchg.150))
  
[Encryption in Microsoft 365](encryption.md)
