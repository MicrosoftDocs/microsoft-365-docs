---
title: Admin support for Microsoft Managed Desktop
description:  How admins can get help with the service
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Admin support for Microsoft Managed Desktop

You can submit support tickets or feedback requests to Microsoft using the Microsoft Managed Desktop Admin portal. Support requests are always prioritized over feedback submissions. Support requests are triaged and managed according to severity as outlined in the [severity definition table](#sev). Feedback is reviewed and a response provided where requested. 


## Open a new support request

1. Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Tenant administration** menu.
2. Look for the Microsoft Managed Desktop section, and then select **Service request**.
3. On **Support requests**, select **+ New Support ticket**.
4. Select the **Support request type** that matches the help you need. The following table outlines the options. 
5. Select the **Severity level**. For more information, see [Support request severity definitions](#sev).
6. Provide as much information about the request as possible to help the team respond quickly. Depending on the type of request, you may be required to provide different details.
7. Review all the information you provided for accuracy. 
8. When you’re ready, select **Create**.
 

Support request type | When to use
--- | ---
Incident | You require the Microsoft Managed Desktop Operations team to investigate, for example, a widespread impact of a change or service outage.
Request for information | You're planning a change in networking, proxy configuration, VPN systems, certificate expiration, or just need some information about the service. A response from the Microsoft Managed Desktop Operations team is advised when communicating a change within your organization.
Change request | You require the Microsoft Managed Desktop Operations team to make a change, such as moving devices between update groups.

> [!IMPORTANT]
> When you create a support request you will need to list a Primary contact, responsible for working with our Service Engineers to resolve the issue or answer any questions about a requested change. We also require that you have previously [set up an Admin contact](../get-started/add-admin-contacts.md) who will be copied on all case notifications for their relevant area of focus and be asked to take over a case if the primary contact for a case is unreachable.

## Manage an active support request
The primary contact for a case (and any [Admin contact](../get-started/add-admin-contacts.md) for that area of focus) will receive email notifications when a case is **Created**, **Assigned** to a Service Engineer to investigate, and **Resolved**. If at any point you have a question about the case, the best way to get in touch with our team is to reply directly to one of those emails. If we have questions about your request or need more details to take action, we will email the Primary contact listed on the support requests (copying all the relevant Admin contacts).

### View all your active cases
While email is the recommended approach to interact with our team, you may want to see the summary status of all your support requests. At any time, you can use the portal to see all support requests Active during the last six months.

1.	Sign in to [Microsoft Endpoint Manager](https://endpoint.microsoft.com/) and navigate to the **Tenant Administration** menu.
2.	Look for the *Microsoft Managed Desktop* section, select **Service request**.
3.	From this view, you can export the summary view or click on any case to see the details

### Edit case details
If you need to edit the details of a case, for example updating the primary case contact, you will need to follow these steps:
1.	From the **Service request** blade, in **Tenant Administration** menu of [Microsoft Endpoint Manager](https://endpoint.microsoft.com/), use the search bar or filters to find the case you’re interested in editing.
2.	Select the case to open up the request’s details 
3.	Scroll to the bottom of the request details and select **Edit**.
4.	Update the editable information, add attachments to the case, or add a note for the Service Engineering team, then select **Save**.

### Provide feedback

We appreciate your feedback and use it to improve the admin support experience.

When you are the primary contact on for a support request, you will receive an email from Microsoft Managed Desktop Operations asking about your experience after your issue has been resolved. Feedback is actively monitored and shared with engineering to improve the service and prioritize future features. Be sure to focus on your experience and not include personal information in the feedback form. For more information about privacy, see the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement).

<span id="sev" />

## Support request severity definitions

The initial response time is the period from when you submit your support request to when a Microsoft Managed Desktop engineer contacts you and starts working on your support request. The initial response time varies with the business impact of the request, based on the severity of the request.

> [!NOTE]
> In this table, "admin support hours" means, that Microsoft Managed Desktop support for admins is available, for most countries, 24 hours a day **Monday through Friday**. Severity A can be worked 24 hours a day all seven days of the week.

Severity level | Situation | Initial response time | Expected response from you
--- | --- | --- | ---
**Severity A – Critical Impact** | **Critical business impact**<br><br>Your business has significant loss or degradation of services and require immediate attention.<br><br>**Major application compatibility impact**<br><br>Your entire business is experiencing financial impact due to devices not responding or loss of critical functionality | Initial: < 1 hour<br>Update: 60 minutes<br>24-hour support every day is available | When you select Severity A, you confirm that the issue has critical business impact, with severe loss and degradation of services. <br><br>The issue demands an immediate response, and you commit to continuous engagement every day with the Microsoft team until resolution. Otherwise, Microsoft can at its discretion decrease the Severity to level B.<br><br> You also ensure that Microsoft has your accurate contact information. 
**Severity B – Moderate Impact** | **Moderate business impact**<br><br>Your business has moderate loss or degradation of services, but work can reasonably continue in an impaired manner.<br><br>**Moderate application compatibility impact**<br><br>A specific business group is no longer productive, due to devices not responding or loss of critical functionality. | Initial: < 4 hours<br>Update: 12 hours<br>24 hours a day during admin support hours (Monday through Friday). | When you select Severity B, you confirm that the issue has moderate impact to your business with loss and degradation of services, but workarounds enable reasonable, albeit temporary, business continuity. <br><br>The issue demands an urgent response. If you chose all day every day support when you submit the support request, you commit to a continuous engagement every day with the Microsoft team until resolution. Otherwise, Microsoft might at its discretion decrease the severity to level C. If you chose admin support-hours support when you submit a Severity B incident, Microsoft will contact you during admin support hours only.<br><br>You also ensure that Microsoft has your accurate contact information.
**Severity C – Minimal Impact** | **Minimum business impact**<br><br> Your business is functioning with minor impediments of services.<br><br>**Minor application compatibility impact**<br><br>Potentially unrelated users experience minor compatibility issues that do not prevent productivity | Initial: < 8 hours<br>Update: 24 hours<br>Support 24 hours a day during admin support hours (Monday through Friday)  | When you select Severity C, you confirm that the issue has minimum impact to your business with minor impediment of service.<br><br>For a Severity C incident, Microsoft will contact you during admin support hours only.<br><br>You also ensure that Microsoft has your accurate contact information.

- **Support languages** - All support is provided in English.
- **Severity level changes** - Microsoft might downgrade the severity level if you aren't able to provide adequate resources or responses to enable us to continue with problem resolution efforts. 
- **Application compatibility** - For an application compatibility issue to be considered, there must be a reproducible error, of the same version of the application, between the previous and current version of Windows or Microsoft 365 Apps for enterprise. To resolve application compatibility issues, we requires a point of contact in your org to work with. The contact must work directly with our Fast Track team to investigate and resolve the issue.
- **Customer response time** If you aren't able to meet the expected response requirements, we'll downgrade the request by one severity level, to a minimum of Severity C. If you're unresponsive to requests for action, we'll mitigate and close the support request within 48 hours of the last request.


## More resources

- [User support for Microsoft Managed Desktop](end-user-support.md). 
- [Support for Microsoft Managed Desktop](../service-description/support.md). 
- If you already subscribe to Microsoft Managed Desktop, you can find detailed procedures, process flows, work instructions, and FAQs in the Microsoft Managed Desktop Admin Guide in the **Online resources** page under the **Microsoft Managed Desktop** section of the **Tenant administration** menu in [Microsoft Endpoint Manager](https://endpoint.microsoft.com/).
