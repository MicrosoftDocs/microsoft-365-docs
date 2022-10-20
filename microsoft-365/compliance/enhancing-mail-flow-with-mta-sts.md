---
title: "Enhancing mail flow with MTA-STS "
f1.keywords:
- NOCSH
ms.author: v-bshilpa
author: Benny-54
manager: serdars
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
ms.localizationpriority: high 
ms.assetid: 
ms.collection:
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
description: Learn how to enhance mail flow with MTA-STS.
---

# Enhancing mail flow with MTA-STS

Support for the [SMTP MTA Strict Transport Security](https://datatracker.ietf.org/doc/html/rfc8461) (MTA-STS) standard is added to Exchange Online. The standard was developed to ensure that TLS is always used for connections between email servers. It also provides a way for sending servers to validate that the receiving server has a trusted certificate. If either TLS isn't offered or the certificate isn't valid, the sender refuses to deliver messages. These new checks improve the overall security of SMTP and protect against man-in-the-middle attacks.

MTA-STS can be broken down into two scenarios: Inbound and Outbound Protection. Inbound covers the protection of domains hosted in Exchange Online with MTA-STS and Outbound covers the MTA-STS validations performed by Exchange Online when sending emails to MTA-STS protected domains.

## Outbound Protection

All messages sent outbound from Exchange Online to MTA-STS protected recipients are being validated with these extra security checks set out by the MTA-STS standard. There's nothing admins need to do to apply it. Our outbound implementation respects the wishes of the recipient domain owners via their MTA-STS policy. MTA-STS forms part of the security infrastructure of Exchange Online, and it's therefore always on (like other core SMTP features).

## Inbound Protection

Domain owners can take action to protect emails sent to their domains with MTA-STS, if their MX record points to Exchange Online. If your MX record points to an intermediary third-party service, you'll need to check that MTA-STS requirements are met by them and follow their instructions.

Once MTA-STS is set up for your domain, any messages sent from senders who support MTA-STS will perform the validations laid out by the standard to ensure a secure connection. If you're receiving an email from a sender who doesn't support MTA-STS, the email will still be delivered without the extra protection. Likewise, there's no disruption to messages if you aren't using MTA-STS yet but the sender supports it. The only scenario where messages aren't delivered is when both sides are using MTA-STS and MTA-STS validation fails.

## How To Adopt MTA-STS

MTA-STS allows a domain to declare support for TLS and communicate the MX record and destination certificate to expect. It also indicates what a sending server should do if there's a problem. This is done through a combination of a DNS TXT record and a policy file that's published as an HTTPS web page. The HTTPS-protected policy introduces another security protection that attackers must overcome.

A domain's MTA-STS TXT record indicates MTA-STS support to a sender, after which the domain's HTTPS-based MTA-STS policy is retrieved by the sender. The following TXT record is an example that declares support for MTA-STS:

`_mta-sts.contoso.com. 3600 IN TXT v=STSv1; id=20220101000000Z;`

A domain's MTA-STS policy needs to be located at a predefined URL that's hosted by the domain's web infrastructure. The URL syntax is `https://mta-sts.<domain name>/.well-known/mta-sts.txt`. For example, Microsoft.com's policy is found at: <https://mta-sts.microsoft.com/.well-known/mta-sts.txt>.

```text
version: STSv1
mode: enforce
mx: *.mail.protection.outlook.com
max_age: 604800
```

Any customer whose MX records point directly to Exchange Online can specify in their own policy with the same values that are shown above in the microsoft.com policy. The unique required information in the policy is the MX record that points to Exchange Online (`*`.mail.protection.outlook.com) and the same certificate is shared by all Exchange Online customers. Exchange Online only allows one organization to receive emails for a given domain so using a wildcard doesn't weaken security, however that may not be the case for other email services. It's possible to publish your policy in *testing* mode to ensure it's valid before changing it to *enforce* mode. There are third-party validation tools out there that can check your configuration.

These policies aren't something that Exchange Online can host on behalf of customers and customers should make use of the web hosting service they use. The policy needs to be protected by HTTPS with a certificate for the subdomain `mta-sts.<domain name>`. There are alternatives to hosting a policy including [this solution](https://github.com/jpawlowski/mta-sts.template) that uses GitHub Pages to host it.

Once the DNS TXT domain record is created and the policy file is available at the required HTTPS URL, the domain will be protected by MTA-STS. Details about MTA-STS are available in [RFC 8461](https://datatracker.ietf.org/doc/html/rfc8461).
