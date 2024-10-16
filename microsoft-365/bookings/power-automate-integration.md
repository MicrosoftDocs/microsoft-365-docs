---
title: "Use Power Automate connectors to build Bookings workflows"
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 10/01/2024
audience: Admin
ms.topic: how-to
ms.service: bookings
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
description: "Use Power Automate Bookings Connectors to create custom workflows with appointment triggers."
---

# Use Power Automate connectors to build Bookings workflows

Microsoft Bookings Connector is built to extend Booking appointments with other functionalities that power platform has to offer. If you've ever wanted to build custom workflows for your business customer appointments, for example allowing customers to book a Zoom meeting along with an appointment, uploading customer data to a CRM system, or sending out welcome emails, Bookings Connector is your Bookings solution.

## Before you begin

Customers who want to use the Bookings Connector must have a Bookings license. For more information about Microsoft Bookings licenses and subscriptions, see [Microsoft Bookings Frequently Asked Questions](bookings-faq.yml#is-bookings-available-for-my-subscription-).

Microsoft Bookings uses Microsoft Entra authentication. A valid Microsoft 365 account ensures that you are authenticated to use Bookings Connector. You must be signed in to create appointment-based flows.

To create a custom flow that uses Bookings appointments as triggers, you must provide the Bookings business SMTP address.

:::image type="content" alt-text="Image of an SMTP address." source="media/bookings-teams-smtp.png" lightbox="media/bookings-teams-smtp.png":::

## Get started with connectors

Here are some of the common flows you can build with Microsoft Bookings Connectors:

### Integration with Dynamic 365

Dynamics 365 Sales Insights helps increase sales with the help of Artificial Intelligence (AI)-driven insights that promote personalized engagement and proactive decision making to help build relationships. For more information, see [Dynamics 365 Sales Insights | Microsoft Power Automate](https://powerautomate.microsoft.com/connectors/details/shared_assistantstudio/dynamics-365-sales-insights/).

For all of the available Bookings connectors, see [Supported connectors | Microsoft Power Automate](https://powerautomate.microsoft.com/connectors/).

## Known issues and limitations

- **Only admins can create flows using appointment triggers.** Only Bookings admins can create appointment triggers. If you're a user and not an admin (Team Member, Scheduler, Viewer, Guest), you should ask your admin to create a flow. Alternatively, you can also request for admin access.

- **Only five flows can be created per Bookings mailbox.** This is a Bookings mailbox-level limit and not a per-admin limit. If you want more than one action for an appointment trigger, you can add the action to one of the existing flows with the **Add Action** button. For support, contact other Booking admins.

- **Some Bookings parameters are not populated.** Cancel Reason and Custom Notes for 1:1 Bookings are not populated. The fix for this will be rolled out soon.

- **Error codes during flow creation aren't fully visible.** The errors that might occur during creation of a flow don't appear in the flow portal. The fix for this is in progress and will be available in the next release.

## Common errors and remedies

HTTP Error Codes while creating flows:

- 401: Check for authentication related issues in your connection.
- 403: Only Bookings admins can create appointment flows. See the first issue in "Known issues and limitations" above.
- 403: Notification URL domain isn't part of the allowed list.
- 429: More than the expected number of appointment flows have been created for a business. See the limit of five flows per Bookings mailbox in  "Known issues and limitations" above.
- 500: This is an internal server error. Report this error to your support engineer and include the error details in the flow creation response.

## Frequently Asked Questions

**How do I get the SMTP address for creating an appointment trigger based flow?**

To create appointment trigger-based flows, the creator must get the SMTP address of the Bookings business. This is the same SMTP address used to make graph calls. This is also a part of the Bookings page URL.

**How can I get customer data from the appointment trigger responses?**

For a 1:1 booking, top-level fields like CustomerName, CustomerEmail, and so on, are available. For a group booking, the customers array can use fields like displayName, customers email, customers displayName, and so on with a power automate loop component.

**Why is StaffMembers an array?**

You can assign more than one staff member as host. If your service has only one staff member assigned as host, the staff details are seen in the staff member array.

## Related content

[Microsoft Power Automate Connectors](https://make.preview.powerautomate.com/connectors/shared_microsoftbookings/microsoft-bookings/)\
[Microsoft Bookings (Preview) Reference](/connectors/microsoftbookings/) (article)
