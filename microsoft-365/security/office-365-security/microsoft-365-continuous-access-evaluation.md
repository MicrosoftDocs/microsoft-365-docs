---
title: Continuous access evaluation for Microsoft 365 - Microsoft 365 for enterprise
description: Describes how conditional access evaluation for Microsoft 365 and Azure AD proactively terminates active user sessions and enforces tenant policy changes in near real time.
ms.author: dansimp
author: dansimp
manager: dansimp
ms.service: microsoft-365-security
ms.topic: conceptual
audience: Admin
f1.keywords:
  - NOCSH
ms.custom:
  - it-pro
  - goldenconfig
ms.collection:
  - M365-identity-device-management
  - m365-security
  - m365solution-identitydevice
  - m365solution-scenario
  - highpri
  - tier1
ms.subservice: mdo
search.appverid: met150
ms.date: 1/31/2023
---

# Continuous access evaluation for Microsoft 365

Modern cloud services that use OAuth 2.0 for authentication traditionally rely on access token expiration to revoke a user account's access. In practice, this means even if an administrator revokes a user account's access, the user will still have access until the access token expires, which for Microsoft 365 by default, used to be up to an hour after the initial revocation event took place.

Continuous access evaluation for Microsoft 365 and Azure Active Directory (Azure AD) proactively terminates active user sessions and enforces tenant policy changes in near real time instead of relying on access token expiration. Azure AD notifies continuous access evaluation-enabled Microsoft 365 services (such as SharePoint, Teams, and Exchange) when the user account or tenant has changed in a way that requires reevaluation of the user account's authentication state.

When a continuous access evaluation-enabled client such as Outlook tries to access Exchange with an existing access token, the token is rejected by the service, prompting a new Azure AD authentication. The result is near real time enforcement of user account and policy changes.

Here are some additional benefits:

- For a malicious insider who copies and exports a valid access token outside of your organization, continuous access evaluation prevents usage of this token through Azure AD IP address location policy. With continuous access evaluation, Azure AD synchronizes policies down to supported Microsoft 365 services so when an access token attempts to access the service from outside of the IP address range in the policy, the service rejects the token.

- Continuous access evaluation improves resiliency by requiring less token refreshes. Because supporting services receive proactive notifications about requiring reauthentication, Azure AD can issue longer-lived tokens, for example, beyond one hour. With longer-lived tokens, clients don't have to request a token refresh from Azure AD as often, so the user experience is more resilient.

Here are some examples of situations where continuous access evaluation improves user access control security:

- A user account's password has been compromised so an administrator invalidates all existing sessions and resets their password from the Microsoft 365 admin center. In near real time, all existing user sessions with Microsoft 365 services are invalidated.

- A user working on a document in Word takes their tablet to a public coffee shop that is not in an administrator-defined and approved IP address range. At the coffee shop, the user's access to the document is blocked immediately.

For Microsoft 365, continuous access evaluation is currently supported by the:

- Exchange, SharePoint, and Teams services.
- Outlook, Teams, Office, and OneDrive in a web browser and for the Win32, iOS, Android, and Mac clients.

Microsoft is working on additional Microsoft 365 services and clients to support continuous access evaluation.

Continuous access evaluation will be included in all versions of Office 365 and Microsoft 365. Configuring Conditional Access policies requires Azure AD Premium P1, which is included in all Microsoft 365 versions.

> [!NOTE]
> See [this article](/azure/active-directory/conditional-access/concept-continuous-access-evaluation#limitations) for the limitations of continuous access evaluation.

## Scenarios supported by Microsoft 365

Continuous access evaluation supports two types of events:

- Critical events are those in which a user should lose access.
- Conditional Access policy evaluation occurs when a user should lose access to a resource based on an administrator-defined policy.

Critical events include:

- User account is disabled
- Password is changed
- User sessions are revoked
- Multifactor authentication is enabled for the user
- Account risk increased based on the evaluation of the access from [Azure AD Identity Protection](/azure/active-directory/identity-protection/overview-identity-protection)

Conditional Access policy evaluation occurs when the user account is no longer connecting from a trusted network.

The following Microsoft 365 services currently support continuous access evaluation by listening to events from Azure AD.

|Enforcement type|Exchange|SharePoint|Teams|
|---|---|---|---|
|**Critical events:**||||
|User revocation|Supported|Supported|Supported|
|User risk|Supported|Not supported|Supported|
|**Conditional Access policy evaluation:**||||
|IP address location policy|Supported|Supported\*|Supported\**|

\* SharePoint Office web browser access supports instant IP policy enforcement by enabling strict mode. Without strict mode, access token lifetime is one hour.

\** Calls, meetings, and chat in Teams do not conform to IP-based Conditional Access policies.

For more information about how to set up a Conditional Access policy, see [this article](/azure/active-directory/conditional-access/overview).

## Microsoft 365 clients supporting continuous access evaluation

Continuous access evaluation-enabled clients for Microsoft 365 support a claim challenge, which is a redirect of a user session to Azure AD for reauthentication, when a cached user token is rejected by a continuous access evaluation-enabled Microsoft 365 service.

The following clients support continuous access evaluation on web, Win32, iOS, Android, and Mac:

- Outlook
- Teams
- Office\*
- SharePoint
- OneDrive

\* Claim challenge is not supported on Office for web.

For clients that don't support continuous access evaluation, the access token lifetime  to Microsoft 365 remains as one hour by default.

## See also

- [Continuous access evaluation](/azure/active-directory/conditional-access/concept-continuous-access-evaluation)
- [Conditional Access documentation](/azure/active-directory/conditional-access/overview)
- [Azure AD Identity Protection documentation](/azure/active-directory/identity-protection/overview-identity-protection)
