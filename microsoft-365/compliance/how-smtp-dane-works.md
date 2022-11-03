---
title: "How SMTP DNS-based Authentication of Named Entities (DANE) secures email communications"
f1.keywords:
- NOCSH
ms.author: v-mathavale
author: v-mathavale
manager: dansimp
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- purview-compliance
description: "Learn how SMTP DNS-based Authentication of Named Entities (DANE) works to secure email communications between mail servers."
---

# How SMTP DNS-based Authentication of Named Entities (DANE) works

The SMTP protocol is the main protocol used to transfer messages between mail servers and is, by default, not secure. The Transport Layer Security (TLS) protocol was introduced years ago to support encrypted transmission of messages over SMTP. It’s commonly used opportunistically rather than as a requirement, leaving much email traffic in clear text, vulnerable to interception by nefarious actors. Furthermore, SMTP determines the IP addresses of destination servers through the public DNS infrastructure, which is susceptible to spoofing and Man-in-the-Middle (MITM) attacks. This has led to many new standards being created to increase security for sending and receiving email, one of those is DNS-based Authentication of Named Entities (DANE). 

DANE for SMTP [RFC 7672](https://tools.ietf.org/html/rfc7672) uses the presence of a Transport Layer Security Authentication (TLSA) record in a domain's DNS record set to signal a domain and its mail server(s) support DANE. If there is no TLSA record present, DNS resolution for mail flow will work as usual without any DANE checks being attempted. The TLSA record securely signals TLS support and publishes the DANE policy for the domain. So, sending mail servers can successfully authenticate legitimate receiving mail servers using SMTP DANE. This makes it resistant to downgrade and MITM attacks. DANE has direct dependencies on DNSSEC, which works by digitally signing records for DNS lookups using public key cryptography. DNSSEC checks occur on recursive DNS resolvers, the DNS servers that make DNS queries for clients. DNSSEC ensures that DNS records aren't tampered with and are authentic.

Once the MX, A/AAAA and DNSSEC-related resource records for a domain are returned to the DNS recursive resolver as DNSSEC authentic, the sending mail server will ask for the TLSA record corresponding to the MX host entry or entries. If the TLSA record is present and proven authentic using another DNSSEC check, the DNS recursive resolver will return the TLSA record to the sending mail server.

After receiving the authentic TLSA record, the sending mail server establishes an SMTP connection to the MX host associated with the authentic TLSA record. The sending mail server will try to set up TLS and compare the server's TLS certificate with the data in the TLSA record to validate that the destination mail server connected to the sender is the legitimate receiving mail server. The message will be transmitted (using TLS) if authentication succeeds. When authentication fails or if TLS isn't supported by the destination server, Exchange Online will retry the entire validation process beginning with a DNS query for the same destination domain again after 15 minutes, then 15 minutes after that, then every hour for the next 24 hours. If authentication continues to fail after 24 hours of retrying, the message will expire and an NDR with error details will be generated and sent to the sender.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## What are the components of DANE?

### TLSA Resource Record

The TLS Authentication (TLSA) record is used to associate a server's X.509 certificate or public key value with the domain name that contains the record. TLSA records can only be trusted if DNSSEC is enabled on your domain. If you're using a DNS provider to host your domain, this may be a setting offered when configuring a domain with them. To learn more about DNSSEC zone signing, visit this link: [Overview of DNSSEC | Microsoft Docs](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj200221(v=ws.11)).

Example TLSA record:

:::image type="content" source="../media/compliance-trial/example-TLSA-record.png" alt-text="Example TLSA record" lightbox="../media/compliance-trial/example-TLSA-record.png":::

There are four configurable fields unique to the TLSA record type:

**Certificate Usage Field**: Specifies how the sending email server should verify the destination email server's certificate.

|Value|Acronym|Description|
|---|---|---|
|0<sup>1</sup>|PKIX-TA|Certificate used is the trust-anchor Public CA from the X.509 trust-chain.|
|1<sup>1</sup>|PKIX-EE|Certificate checked is the destination server; DNSSEC checks must verify its authenticity.|
|2|DANE-TA|Use server's private key from the X.509 tree that must be validated by a trust anchor in the chain of trust. The TLSA record specifies the trust anchor to be used for validating the TLS certificates for the domain.|
|3|DANE-EE|Only match against the destination server's certificate.|

<sup>1</sup> Exchange Online follows RFC implementation guidance that Certificate Usage Field values of 0 or 1 shouldn't be used when DANE is implemented with SMTP. When a TLSA record that has a Certificate Usage field value of 0 or 1 is returned to Exchange Online, Exchange Online will treat it as not usable. If all TLSA records are found unusable, Exchange Online won't perform the DANE validation steps for 0 or 1 when sending the email. Instead, because of the presence of a TLSA record, Exchange Online will enforce the use of TLS for sending the email, sending the email if the destination email server supports TLS or dropping the email and generating an NDR if the destination email server doesn't support TLS.

In the example TLSA record, the Certificate Usage Field is set to '3', so the Certificate Association Data ('abc123...xyz789') would be matched against the destination server's certificate only.

**Selector field**: Indicates which parts of the destination server's certificate should be checked.

|Value|Acronym|Description|
|---|---|---|
|0|Cert|Use full certificate.|
|1|SPKI (Subject Public Key Info)|Use certificate's public key and the algorithm with which the public key is identified to use.|

In the example TLSA record, the Selector Field is set to '1' so the Certificate Association Data would be matched using the destination server certificate's public key and the algorithm with which the public key is identified to use.

**Matching Type Field**: Indicates the format the certificate will be represented in the TLSA record.

|Value|Acronym|Description|
|---|---|---|
|0|Full|The data in the TSLA record is the full certificate or SPKI.|
|1|SHA-256|The data in the TSLA record is a SHA-256 hash of either the certificate or the SPKI.|
|2|SHA-512|The data in the TSLA record is a SHA-512 hash of either the certificate or the SPKI.|

In the example TLSA record, the Matching Type Field is set to '1' so the Certificate Association Data is a SHA-256 hash of the Subject Public Key Info from the destination server certificate

**Certificate Association Data**: Specifies the certificate data that is used for matching against the destination server certificate. This data depends on the Selector Field value and the Matching Type Value.

In the example TLSA record, the Certificate Association data is set to 'abc123..xyz789'. Since the Selector Field value in the example is set to '1', it would reference the destination server certificate's public key and the algorithm that is identified to be used with it. And since the Matching Type field value in the example is set to '1', it would reference the SHA-256 hash of the Subject Public Key Info from the destination server certificate.

## How can Exchange Online customers use SMTP DANE Outbound?

As an Exchange Online customer, there isn't anything you need to do to configure this enhanced email security for your outbound email. This is something we have built for you and it is on by default for all Exchange Online customers and is used when the destination domain advertises support for DANE. To reap the benefits of sending email with DNSSEC and DANE checks, communicate to your business partners with whom you exchange email that they need to implement DNSSEC and DANE so they can receive email using these standards.

## How can Exchange Online customers use SMTP DANE inbound?

Currently, inbound SMTP DANE isn't supported for Exchange Online. Support is anticipated to be released at the end of 2022.

## What is the recommended TLSA record configuration?

Per RFC implementation guidance for SMTP DANE, a TLSA record composed of the Certificate Usage field set to 3, the Selector field set to 1, and the Matching Type field set to 1 is recommended.

## Exchange Online Mail Flow with SMTP DANE

The mail flow process for Exchange Online with SMTP DANE, shown in the flow chart below, validates domain and resource record security through DNSSEC, TLS support on the destination mail server, and that the destination mail server's certificate matches what is expected based on its associated TLSA record.

There are only two scenarios where an SMTP DANE failure will result in the email being blocked:

- The destination domain signaled DNSSEC support but one or more records were returned as inauthentic.

- All MX records for the destination domain have TLSA records and none of the destination server's certificates match what was expected per the TSLA record data, or a TLS connection isn't supported by the destination server.

:::image type="content" source="../media/compliance-trial/mail-flow-smtp-dane.png" alt-text="Exchange online mail flow with SMTP DANE" lightbox="../media/compliance-trial/mail-flow-smtp-dane.png":::

## Related Technologies

|Technology|Additional Information|
|---|---|
|**Mail Transfer Agent - Strict Transport Security (MTA-STS)** helps thwart downgrade and Man-in-the-Middle attacks by providing a mechanism for setting domain policies that specify whether the destination email server supports TLS and what to do when TLS can't be negotiated, for example stop the transmission.|More information about Exchange Online's upcoming support for inbound and outbound MTA-STS will be published later this year. <br/><br/> [Exchange Online Transport News from Microsoft Ignite 2020 - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/exchange-team-blog/exchange-online-transport-news-from-microsoft-ignite-2020/ba-p/1687699) <br/><br/> [rfc8461 (ietf.org)](https://datatracker.ietf.org/doc/html/rfc8461)|
|**Sender Policy Framework (SPF)** uses IP information to ensure that destination email systems trust messages sent from your custom domain.|[How Sender Policy Framework (SPF) prevents spoofing](/microsoft-365/security/office-365-security/how-office-365-uses-spf-to-prevent-spoofing)|
|**DomainKeys Identified Mail (DKIM)** uses X.509 certificate information to ensure that destination email systems trust messages sent outbound from your custom domain.|[How to use DKIM for email in your custom domain](/microsoft-365/security/office-365-security/use-dkim-to-validate-outbound-email)|
|**Domain-based Message Authentication, Reporting, and Conformance (DMARC)** works with Sender Policy Framework and DomainKeys Identified Mail to authenticate mail senders and ensure that destination email systems trust messages sent from your domain.|[Use DMARC to validate email, setup steps](/microsoft-365/security/office-365-security/use-dmarc-to-validate-email)|

## Troubleshooting Sending Emails with SMTP DANE

Currently, there are four error codes for DANE when sending emails with Exchange Online. Microsoft is actively updating this error code list. The errors will be visible in:

1. The Exchange Admin Center portal through the Message Trace Details view.
2. NDRs generated when a message isn't sent due to a DANE or DNSSEC failure.
3. Remote Connectivity Analyzer tool [Microsoft Remote Connectivity Analyzer](https://testconnectivity.microsoft.com/tests/o365).

|NDR Code|Description|
|---|---|
|4/5.7.321|starttls-not-supported: Destination mail server must support TLS to receive mail.|
|4/5.7.322|certificate-expired: Destination mail server's certificate is expired.|
|4/5.7.323|tlsa-invalid: The domain failed DANE validation.|
|4/5.7.324|dnssec-invalid: Destination domain returned invalid DNSSEC records.|

> [!NOTE]
> Currently, when a domain signals that it supports DNSSEC but fails DNSSEC checks, Exchange Online does not generate the 4/5.7.324 dnssec-invalid error. It generates a generic DNS error:
> 
> `4/5.4.312 DNS query failed`
> 
> We are actively working to remedy this known limitation. If you recieve this error statement,
navigate to the Microsoft Remote Connectivity Analyzer and perform the DANE validation test against
the domain that generated the 4/5.4.312 error. The results will show if it is a DNSSEC issue
or a different DNS issue.

### Troubleshooting 4/5.7.321 starttls-not-supported

This usually indicates an issue with the destination mail server. After receiving the message:

1. Check that the destination email address was entered correctly.
2. Alert the destination email administrator that you received this error code so they can determine if the destination server is configured correctly to receive messages using TLS.
3. Retry sending the email and review the Message Trace Details for the message in the Exchange Admin Center portal.

### Troubleshooting 4/5.7.322 certificate-expired

A valid X.509 certificate that hasn't expired must be presented to the sending email server. X.509 certificates must be renewed after their expiration, commonly annually. After receiving the message:

1. Alert the destination email administrator that you received this error code and provide the error code string.
2. Allow time for the destination server certificate to be renewed and the TLSA record to be updated to reference the new certificate. Then, retry sending the email and review the Message Trace Details for the message in the Exchange Admin Center portal.

### Troubleshooting 4/5.7.323 tlsa-invalid

This error code is related to a TLSA record misconfiguration and can only be generated after a DNSSEC-authentic TLSA record has been returned. There are many scenarios during the DANE validation that occur after the record has been returned that can result in the code being generated. Microsoft is actively working on the scenarios that are covered by this error code, so that each scenario has a specific code. Currently, one or more of these scenarios could cause the generation of the error code:

1. The destination mail server's certificate doesn't match with what is expected per the authentic TLSA record.
2. Authentic TLSA record is misconfigured.
3. The destination domain is being attacked.
4. Any other DANE failure.

After receiving the message:

1. Alert the destination email administrator that you received this error code and provide them the error code string.
2. Allow time for the destination email admin to review their DANE configuration and email server certificate validity. Then, retry sending the email and review the Message Trace Details for the message in the Exchange Admin Center portal.

### Troubleshooting 4/5.7.324 dnssec-invalid

This error code is generated when the destination domain indicated it was DNSSEC-authentic but Exchange Online wasn't able to verify it as DNSSEC-authentic.

After receiving the message:

1. Alert the destination email administrator that you received this error code and provide them the error code string.
2. Allow time for the destination email admin to review their domain's DNSSEC configuration. Then, retry sending the email and review the Message Trace Details for the message in the Exchange Admin Center portal.

## Troubleshooting Receiving Emails with SMTP DANE

Currently, there are two methods an admin of a receiving domain can use to validate and troubleshoot their DNSSEC and DANE configuration to receive email from Exchange Online using these standards.

1. Adopt SMTP TLS-RPT (Transport Layer Security Reporting) introduced in [RFC8460](https://datatracker.ietf.org/doc/html/rfc8460)
2. Use the Remote Connectivity Analyzer tool [Microsoft Remote Connectivity Analyzer](https://testconnectivity.microsoft.com/tests/o365)

TLS-RPT [https://datatracker.ietf.org/doc/html/rfc8460](https://datatracker.ietf.org/doc/html/rfc8460) is a reporting mechanism for senders to provide details to destination domain administrators about DANE and MTA-STS successes and failures with those respective destination domains. To receive TLS-RPT reports, you only need to add a TXT record in your domain's DNS records that includes the email address or URI you would like the reports to be sent to. Exchange Online will send TLS-RPT reports in JSON format.

Example record:

:::image type="content" source="../media/compliance-trial/example-record.png" alt-text="Example record" lightbox="../media/compliance-trial/example-record.png":::

The second method is to use the Remote Connectivity Analyzer [Microsoft Remote Connectivity Analyzer](https://testconnectivity.microsoft.com/tests/o365), which can do the same DNSSEC and DANE checks against your DNS configuration that Exchange Online will do when sending email outside the service. This is the most direct way of troubleshooting errors in your configuration to receive email from Exchange Online using these standards.

When troubleshooting, the below error codes may be generated:

|NDR Code|Description|
|---|---|
|4/5.7.321|starttls-not-supported: Destination mail server must support TLS to receive mail.|
|4/5.7.322|certificate-expired: Destination mail server's certificate has expired.|
|4/5.7.323|tlsa-invalid: The domain failed DANE validation.|
|4/5.7.324|dnssec-invalid: Destination domain returned invalid DNSSEC records.|

> [!NOTE]
> Currently, when a domain signals that it supports DNSSEC but fails DNSSEC checks, Exchange Online does not generate the 4/5.7.324 dnssec-invalid error. It generates a generic DNS error:
> 
> `4/5.4.312 DNS query failed`
> 
> We are actively working to remedy this known limitation. If you recieve this error statement,
navigate to the Microsoft Remote Connectivity Analyzer and perform the DANE validation test against
the domain that generated the 4/5.4.312 error. The results will show if it is a DNSSEC issue
or a different DNS issue.

### Troubleshooting 4/5.7.321 starttls-not-supported

> [!NOTE]
> These steps are for email administrators troubleshooting receiving email from Exchange Online using SMTP DANE.

This usually indicates an issue with the destination mail server. The mail server that the Remote Connectivity Analyzer is testing connecting with. There are generally two scenarios that generate this code:

1. The destination mail server doesn't support secure communication at all, and plain, non-encrypted communication must be used.
2. The destination server is configured improperly and ignores the STARTTLS command.

After receiving the message:

1. Check the email address.
2. Locate the IP address that is associated with the error statement so you can identify the mail server the statement is associated with.
3. Check your mail server's setting to make sure it's configured to listen for SMTP traffic (commonly ports 25 and 587).
4. Wait a few minutes, then retry the test with the Remote Connectivity Analyzer tool.
5. If it still fails, then try removing the TLSA record and run the test with the Remote Connectivity Analyzer tool again.
6. If there are no failures, this may indicate the mail server you're using to receive mail doesn't support STARTTLS and you may need to upgrade to one that does in order to use DANE.

### Troubleshooting 4/5.7.322 certificate-expired

> [!NOTE]
> These steps are for email administrators troubleshooting receiving email from Exchange Online using SMTP DANE.

A valid X.509 certificate that hasn't expired must be presented to the sending email server. X.509 certificates must be renewed after their expiration, commonly annually. After receiving the message:

1. Check the IP that is associated with the error statement, so you can identify the mail server it's associated with. Locate the expired certificate on the email server you identified.
2. Log in to your certificate provider's website.
3. Select the expired certificate and follow the instructions to renew and to pay for the renewal.
4. After your provider has verified the purchase, you may download a new certificate.
5. Install the renewed certificate into its associated mail server.
6. Update the mail server's associated TLSA record with the new certificate's data.
7. After waiting an appropriate amount of time, retry the test with the Remote Connectivity Analyzer tool.

### Troubleshooting 4/5.7.323 tlsa-invalid

> [!NOTE]
> These steps are for email administrators troubleshooting receiving email from Exchange Online using SMTP DANE.

This error code is related to a TLSA record misconfiguration and can only be generated after a DNSSEC-authentic TSLA record has been returned. But, there are many scenarios during the DANE validation that occur after the record has been returned that can result in the code being generated. Microsoft is actively working on the scenarios that are covered by this error code, so that each scenario has a specific code. Currently, one or more of these scenarios could cause the generation of the error code:

1. Authentic TLSA record is misconfigured.
2. The certificate isn't yet time valid/configured for a future time window.
3. Destination domain is being attacked.
4. Any other DANE failure.

After receiving the message:

1. Check the IP that is associated with the error statement to identify the mail server it's associated with.
2. Identify the TLSA record that is associated with the identified mail server.
3. Verify the configuration of the TLSA record to ensure that it signals the sender to perform the preferred DANE checks and that the correct certificate data has been included in the TLSA record.
    1. If you have to make any updates to the record for discrepancies, then wait a few minutes then rerun the test with the Remote Connectivity Analyzer tool.
4. Locate the certificate on the identified mail server.
5. Check the time window for which the certificate is valid. If it's set to start validity at a future date, it needs to be renewed for the current date.
    1. Log in to your certificate provider's website.
    2. Select the expired certificate and follow the instructions to renew and to pay for the renewal.
    3. After your provider has verified the purchase, you may download a new certificate.
    4. Install the renewed certificate into its associated mail server.

### Troubleshooting 4/5.7.324 dnssec-invalid

> [!NOTE]
> These steps are for email administrators troubleshooting receiving email from Exchange Online using SMTP DANE.

This error code is generated when the destination domain indicated it's DNSSEC-authentic but Exchange Online isn't able to verify it as DNSSEC-authentic. This section won't be comprehensive for troubleshooting DNSSEC issues and focuses on scenarios where domains previously passed DNSSEC authentication but not now.

After receiving the message:

1. If you're using a DNS provider, for example GoDaddy, alert your DNS provider of the error so they can work on the troubleshooting and configuration change.
2. If you're managing your own DNSSEC infrastructure, there are many DNSSEC misconfigurations that may generate this error message. Some common problems to check for if your zone was previously passing DNSSEC authentication:
    1. Broken trust chain, when the parent zone holds a set of DS records that point to something that doesn't exist in the child zone. This results in the child zone being marked as bogus by validating resolvers.
        - Resolve by reviewing the child domains RRSIG key IDs and ensuring that they match with the key IDs in the DS records published in the parent zone.
    2. RRSIG resource record for the domain isn't time valid, it has either expired or its validity period hasn't begun.
        - Resolve by generating new signatures for the domain using valid timespans.

> [!NOTE]
> This error code is also generated if Exchange Online receives SERVFAIL response from DNS server on TLSA query for the destination domain.

While sending an outbound email, if the receiving domain has DNSSEC enabled, we query for TLSA records that can be associated with certificates provided by the target server. If no TLSA record is published, the response to the TLSA lookup must be NOERROR (no records of requested type for this domain) or NXDOMAIN (there's no such domain). DNSSEC requires this response if no TLSA is published; otherwise, the domain won't pass the DNSSEC validation and the email won't be sent to the destination domain. If there is no response to the TLSA lookup from the authoritative servers, then Exchange Online considers the lookup result as being SERVFAIL. As a result, the email to the destination domain isn't sent and is deferred with the error: 450 4.7.324 dnssec-invalid: Destination domain returned invalid DNSSEC records.

### If the email sender reports receipt of the message

If you're using a DNS provider, for example GoDaddy, alert your DNS provider of the error so that they can troubleshoot the DNS response. If you're managing your own DNSSEC infrastructure, it could be an issue with the DNS server itself or with the network.

## Frequently Asked Questions

### As an Exchange Online customer, can I opt out of using DNSSEC and/or DANE?

We strongly believe DNSSEC and DANE will significantly increase the security position of our service and benefit all of our customers. We've worked diligently over the last year to reduce the risk and severity of the potential impact this deployment might have for M365 customers. We'll be actively monitoring and tracking the deployment to ensure negative impact is minimized as it rolls out. Because of this, tenant-level exceptions or opt-out won't be available.
If you experience any issues related to the enablement of DNSSEC and/or DANE, the different methods for investigating failures noted in this document will help you identify the source of the error. In most cases, the issue will be with the external destination party and you'll need to communicate to these business partners that they need to correctly configure DNSSEC and DANE in order to receive email from Exchange Online using these standards.

### How does DNSSEC relate to DANE?

DNSSEC adds a layer of trust into DNS resolution by leveraging the public key infrastructure to ensure the records returned in response to a DNS query are authentic. DANE ensures that the receiving mail server is the legitimate and expected mail server for the authentic MX record.

### What is the difference between MTA-STS and DANE for SMTP?

DANE and MTA-STS serve the same purpose, but DANE requires DNSSEC for DNS authentication while MTA-STS relies on certificate authorities.

### Why isn't Opportunistic TLS sufficient?

Opportunistic TLS will encrypt communication between two endpoints if both agree to support it. However, even if TLS encrypts the transmission, a domain could be spoofed during DNS resolution such that it points to a malicious actor's endpoint instead of the real endpoint for the domain. This is a gap in email security that is addressed by implementing MTA-STS and/or SMTP DANE with DNSSEC.

### Why isn't DNSSEC sufficient?

DNSSEC isn't fully resistant to Man-in-the-Middle attacks and downgrade (from TLS to clear text) attacks for mail flow scenarios. The addition of MTA-STS and DANE along with DNSSEC provides a comprehensive security method to thwart both MITM and downgrade attacks.

## Additional Links

[Find and fix issues after adding your domain or DNS records](/microsoft-365/admin/get-help-with-domains/find-and-fix-issues)

[Overview of DNSSEC | Microsoft Docs](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj200221(v=ws.11))

[Use DMARC to validate email, setup steps - Office 365 | Microsoft Docs](/microsoft-365/security/office-365-security/use-dmarc-to-validate-email)

[How to use DKIM for email in your custom domain - Office 365 | Microsoft Docs](/microsoft-365/security/office-365-security/use-dkim-to-validate-outbound-email)

[How Sender Policy Framework (SPF) prevents spoofing - Office 365 | Microsoft Docs](/microsoft-365/security/office-365-security/how-office-365-uses-spf-to-prevent-spoofing)

[Exchange Online Transport News from Microsoft Ignite 2020 - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/exchange-team-blog/exchange-online-transport-news-from-microsoft-ignite-2020/ba-p/1687699)

[rfc8461 (ietf.org)](https://datatracker.ietf.org/doc/html/rfc8461)
