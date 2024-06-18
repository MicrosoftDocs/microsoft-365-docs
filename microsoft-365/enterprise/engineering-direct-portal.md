---  
<<<<<<< Updated upstream
title: "Overview of the Engineering Direct Portal in the Microsoft 365 Admin Center"  
=======
title: "Engineering Direct Portal in the Microsoft 365 Admin Center"  
>>>>>>> Stashed changes
description:  
author: kwekuako
ms.author: kwekua  
manager: scotv
ms.date: 06/07/2024  
ms.topic: article
ms.service: microsoft-365-business  
ms.subservice: m365-admin-center  
ms.localizationpriority:  
ms.collection:  
ms.custom: QuickDraft  
ms.reviewer: kwekua; holliep  
search.appverid: MET150  
f1.keywords:  
audience:  
description: Understand the new Engineering Direct Portal in the Microsoft 365 admin center and learn how to access and use its features
ai-usage:  
- ai-assisted  
---  

<<<<<<< Updated upstream
# Overview of the Engineering Direct Portal in the Microsoft 365 Admin Center
=======
# Engineering Direct Portal in the Microsoft 365 Admin Center
>>>>>>> Stashed changes

The Engineering Direct Portal is a new feature within the Microsoft 365 admin center designed to provide Office Engineering Direct (OED) customers with an enhanced engineering experience. This article provides an overview of the portal's features, how to access it, and its functionality.

The Engineering Direct Portal offers:

- Delivery metrics to help highlight what OED provides and how you use the service
- Direct access to request OED deliverables that today require manual engagements
- Additional service health diagnostics and reports

## Accessing the Engineering Direct Portal

The Engineering Direct Portal is located under **Support** within the Microsoft 365 admin center. To access the portal, follow these steps:

1. Navigate to the Microsoft 365 admin center.
1. Click on **Support**.
1. Click on **Engineering Direct** to enter the portal.

## Overview Page

Once in the portal, you will see the **Overview** page. This page contains several key elements:

- **ACE Contact**: Displays the primary contact information for your assigned ACE (if applicable).
- **Insights: Key Metrics**: Lists your engineering escalations for the last six months, including total and active escalations.
- **Customer Advisory Board (CAB)**: Provides information on past and upcoming CAB events and community calls.
- **Insights: Escalation Trend Per Week by Status**: Shows a monthly view of open and closed escalations for the last six months.
- **Request A Feature**: Allows you to submit feedback or request new features related to the Engineering Direct Portal.

## Insights Page

The **Insights** page provides detailed metrics, visuals, and lists on all tickets escalated to engineering. This page includes:

- **Total escalations**: Cumulative total of engineering escalations.
- **Escalation by product**: Engineering escalations categorized by service product.
- **Escalation trend per week by type**: Monthly view of open or closed engineering escalations.
- **Support vs. Escalate to Engineering**: Visual representation of tickets escalated via support or directly to engineering.
- **Percentage of Non-Critical vs. Critical Escalations**: Visual representation of tickets by criticality (non-critical or critical).
- **Escalated Service Requests**: List view with filters for tickets escalated to engineering, including details such as request title, customer contact, request number, escalation date, status, and product.

## Diagnostics Page

The **Diagnostics** page hosts diagnostic tools for self-service issue resolution within your environment. One notable tool is **Visual Mail Flow**, which helps investigate email-related issues.

### Using Visual Mail Flow

Visual Mail Flow enables you to examine issues related to mail flow, including:

- Delivery status of recipients
- Reasons for non-receipt of emails by certain recipients
- Variations in email delivery between recipients
- Transport Rules applied to an email and their actions
- Data Loss Prevention Rules applied to an email and their actions

### Input Requirements

<<<<<<< Updated upstream
To use Visual Mail Flow, you need the email's Message ID or Network Message ID. Ensure the submitted messages are within the age range of 1 to 90 days.
=======
To use Visual Mail Flow, you need either the email's Message ID *or* the Network Message ID. Ensure the submitted messages are within the age range of 1 to 90 days.
>>>>>>> Stashed changes

- **Message ID**: Found in the email header with the "Message-ID:" token. Users can provide this information to help investigate specific messages. Be sure to include the full message ID. This may include angle brackets (<>). Although the form varies depending on the email system, here's an example of what a message ID would look like: `<08f1e0f806a47b4ac109109ae6ef@server.domain>`.
- **Network Message ID**: Found in the email header with the "X-MS-Exchange-Organization-Network-Message-Id:" token. An example of a network message ID is `4d4c1224-7398-4e8e-949f-ce1932c4ab9d`.

### Running the Diagnostic

Enter either the Message ID or Network Message ID, then click **Troubleshoot** to start the diagnosis. Results are generated in approximately 10 seconds.

### Understanding the Results

The Visual Mail Flow diagnostic result includes:

- **Summary**: General conclusion on the mail flow.
- **Highlights**: List of outstanding info and detected issues.
- **Recommendations**: Intelligent recommendations for resolving detected issues.

The **Visual Mail Flow Tree** is an interactive display showing the stages an email went through, with the ability to zoom, drag, and view detailed node information. By examining the tree, you can gain a detailed understanding of how Exchange Online processed the email. In some cases, you may notice that the tree node is split into multiple child nodes. This is due to Exchange Online's bifurcation feature, which separates recipients into multiple sets to process them separately during mail flow.

### Investigating Further

Click a tree node to view a flyout with additional details, including recipients processed and node-specific properties for troubleshooting mail flow issues. The flyout contains additional details for you to review and investigate. It contains a common “Recipients” property to show which recipients this node processed, and more node-specific properties that vary between nodes to help better troubleshoot mail flow issues.

Emails sent to many recipients or large groups will take a longer time to query or could time out.  Querying emails with fewer recipients would improve your experience.

If Visual Mail Flow can’t help you resolve the issue, contact Microsoft Support for further help.

## Private Preview and Feedback

We value open communication with your organizations. Your feedback helps us prioritize features, address pain points, and innovate. During the private preview, we encourage you to:

- Use the portal and its features, review the data, and report any issues.
- Share your feedback on the portal and suggest additional features.
- Participate in scheduled calls to discuss experiences, gather feedback, and review the roadmap.

As we roll out new features, your experience may change. Check for updates via Teams.

## Eligibility and Permissions

The portal is available to all Office Engineering Direct (OED) customers and their in-scope tenants at no additional charge. Permissions are currently granted to anyone within your tenant with a **support** role for RBAC (role-based access control).
