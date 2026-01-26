---
title: "Engagements in the Microsoft 365 Admin Center Enhanced engagements section"
f1.keywords:
- NOCSH
ms.author: vpattnaik
author: vpattnai
manager: dansimp
ms.date: 11/19/2025
audience: Admin
ms.reviewer: dansimp
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection: 
- m365admin
description: The Engagements pivot in Enhanced engagements offers a centralized overview of all customer-specific engagements with Microsoft.
ai-usage: ai-assisted  
---

# Engagements in Enhanced Engagements

The Engagements pivot in Enhanced engagements offers a centralized overview of all customer-specific engagements with Microsoft. This section allows users to request and track engineering-led escalations, post-incident analyses, and Customer Advisory Board (CAB) discussions. Each engagement type provides detailed insights, status updates, and filtering options to help manage support efficiently.

:::image type="content" source="../enterprise/media/enhanced-engagements/enhanced-engagements-mcs.png" alt-text="Screenshot of engagements landing page in enhanced engagements portal." lightbox="../enterprise/media/enhanced-engagements/enhanced-engagements-mcs.png":::

## Service Requests

The Service Requests view under Engagements provides visibility into all service requests raised for your tenant. This view helps monitor escalation activity, review trends, and gain insights into how issues are distributed across products, severity levels, and sources. You can also use the Nudge feature to gain additional traction from Microsoft.

**Nudge**: This option allows you to request additional support for an active service request when urgency, clarity, or escalation is needed. Use it when the issue affects business operations, impacting key users, requires more attention, or the current progress isn't meeting expectations.
 
To submit a request, follow these steps:

1. Select a reason using one of the available radio button options.
2. Provide additional context in the description text box to help us understand the urgency, impact, or scenario.
3. Attach any supporting files (optional) to help clarify the request (screenshots, logs, documentation).
4. Choose a primary point of contact who Microsoft can follow up with for additional details or alignment.
5. Once complete, select **Submit** to send the request to our support team for review.
6. Once submitted, the request will be reviewed, and our team will contact you using the email you provide assistance with the issue.

:::image type="content" source="../enterprise/media/enhanced-engagements/nudge-enhanced-engagements.png" alt-text="Screenshot of nudge feedback form in enhanced engagements portal." lightbox="../enterprise/media/enhanced-engagements/nudge-enhanced-engagements.png":::

### Overview of Service Requests

At the top of the page, several visual summaries provide quick insights into your tenant’s escalation activity:

- **Total escalations** – The total number of escalations associated with your tenant.
- **Open escalations** – The number of currently active or unresolved escalations.
- **Escalations by product** – A workload-based view that shows how many escalations relate to services such as Microsoft Exchange, SharePoint, or Teams.
- **Customer raised escalations** – Displays the number of escalations initiated directly by your organization.
- **Distribution by escalation source** – A chart showing whether escalations were raised by your organization or Microsoft Support.
- **Distribution by severity** – Summarizes escalations by severity level (Severity 1, A, B, or C).
- **Escalations per week by status** – A trend chart showing how many escalations were created and closed each week.

> [!NOTE]
> These insights update automatically as new escalations are raised or resolved.

### Service Request report

Below the overview section, the service request report provides a detailed, filterable table of all active and historical escalations for your tenant. You can use this table to review case progress, assigned severity, and escalation sources.

You can:

- **Search** by title, ticket number, or keywords.
- **Filter** by status, product, severity, or escalation source.
- **Refresh** the data to view the most recent updates.
- **Export** the results for reporting or analysis.

| Column | Description |
|---------|---------|
| **Title** | The name or brief summary of the service request.|
| **Created by** | The user who initiated the service request. |
| **Ticket** | The unique service request identifier.|
| **Severity** | Indicates the service request's priority (for example, _A_, _B_, _C_, or _1_).|
| **Escalation date** | When the service request was created.|
| **Status** | The current state of the service request (_Open_, _Closed_, _In Progress_). |
| **Escalation source** | Identifies whether the service request originated from your organization or from Microsoft Support.|

> [!TIP]
> Combine filters and charts to spot recurring service request trends or identify products that require the most attention.

### Benefits of Service Requests

The Service Requests view helps your organization:

- Maintain visibility into engineering-level service requests.
- Understand patterns across products and severity levels.
- Identify and manage high-impact issues efficiently.
- Improve collaboration with Microsoft support and engineering teams.

## Customer Advisory Board (CAB)

The Customer Advisory Board offers you a prioritized voice into the evolution of Microsoft 365 through various virtual and in-person engagements with engineering, designed to facilitate roadmap discussions and feedback loops into all in-scope product teams.

:::image type="content" source="../enterprise/media/enhanced-engagements/customer-advisory-board.png" alt-text="Screenshot of customer advisory board in enhanced engagements portal." lightbox="../enterprise/media/enhanced-engagements/customer-advisory-board.png":::

### CAB overview

The CAB overview section provides quick access to recent and upcoming engagement details.

- **Last completed event** – Displays the most recent in-person CAB event and links to its feedback form.
- **Upcoming CAB event** – Shows the next scheduled in-person CAB session.
- **Last completed community call** – Displays the most recent virtual community call and provides a feedback link.
- **Upcoming community call** – Highlights the next scheduled community call.

If a CAB event or call hasn’t been scheduled yet, the corresponding date and details won't be displayed. These fields automatically update once new schedule information becomes available.
If a CAB event or call hasn’t been scheduled yet, the corresponding date and details won't be displayed. These fields automatically update once new schedule information becomes available.

> [!NOTE]
> CAB event and call details are refreshed periodically. When no upcoming events are listed, it means the schedule is still being finalized and will appear once available.

### Upcoming CAB schedule

The **Upcoming CAB schedule** lists all planned engagements with Microsoft 365 engineering teams. Each entry provides event details, topics, audience, and registration information.
You can:

- **View** upcoming and past CAB sessions.
- **Export** the schedule for tracking and internal coordination.
- **Register** for upcoming sessions directly from the portal.

Each schedule entry includes:

| Column | Description |
|---------|---------|
| **Column** | Start and end dates for the CAB engagement |
| **Dates** | Title of the CAB session or community call |
| **Event** | Microsoft 365 workload impacted |
| **Topic** | Key discussion areas (for example, product roadmap updates, feature deep dives)|
| **Audience** | Recommended participants (for example, CIOs, CTOs, IT Admins) |
| **Registration Info** | Direct registration links or invitation details |

> [!TIP]
> If registration details aren’t available for an upcoming event, check back later. The information will appear automatically once registration links are available.

### Benefits of CAB

The Customer Advisory Board program allows you to:

- Engage directly with Microsoft engineering teams.
- Preview and provide feedback on Microsoft 365 roadmap plans.
- Network with peers across industries facing similar challenges.
- Influence future product and service enhancements.

## Related content

- [Diagnostics pivot in Enhanced Engagements portal](microsoft-365-admin-diagnostics.md)
