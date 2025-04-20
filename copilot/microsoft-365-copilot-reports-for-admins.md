---  
title: Microsoft 365 Copilot reports for IT admins
description: Learn about the different Microsoft 365 Copilot reporting options available for enterprise admins. Get an overview of the Copilot readiness and usage reports, enable the Copilot Dashboard in Viva Insights, get advanced insights and Power BI templates with Microsoft Viva, view agent reports in Power Platform and Copilot Studio, and access the Microsoft Purview audit logs.
author: MandiOhlinger
ms.author: mandia
manager: laurawi
ms.date: 04/16/2025
ms.topic: overview
ms.service: microsoft-365-copilot
ms.subservice: 
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
ms.custom:  
ms.reviewer: alejanl, camillepack
search.appverid: MET150
f1.keywords: Copilot reporting options, Copilot usage reports, Microsoft 365 Copilot reports, Power BI templates, Purview audit logs
audience: Admin
ai-usage: ai-assisted
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Microsoft 365 Copilot reporting options for admins

[Microsoft 365 Copilot](microsoft-365-copilot-overview.md) provides several reporting options that help administrators monitor usage, performance, and compliance. These reports provide insights into how Copilot is being used within your organization.

Microsoft 365 Copilot offers four main sources for usage reports. Use these reports to make informed decisions about your Copilot adoption, deployment, and governance:

- **Microsoft 365 admin center**: Provides readiness and usage reports focused on license eligibility, adoption, and basic usage metrics.
- **Viva Insights Copilot Analytics**: Offers comprehensive Copilot analytics through the Copilot Dashboard and Advanced Insights Analyst workbench for detailed metrics and custom reporting.
- **Microsoft Purview audit logs**: Delivers detailed audit logs of all Copilot activities for compliance tracking and security auditing.
- **Power Platform & Copilot Studio Analytics**: Provides consumption metrics for Copilot agents and detailed analytics on agent performance.

This article provides an overview of the different Microsoft 365 Copilot reporting options available to IT administrators, including access requirements and the insights each report provides.

This article applies to:

- Microsoft 365 Copilot

## Access requirements

To use the reporting features described in this article, you need to sign into different portals with the appropriate permissions.

| Reporting option | Required roles & access |
|------------------|-------------------------|
| **[Microsoft 365 admin center](https://admin.microsoft.com)** | - **Microsoft 365 Global Administrator**: Assigns the **AI Administrator** role. <br/> - **AI Administrator**: Accesses the Copilot reports. |
| **Copilot Analytics, powered by Viva Insights** | - **Microsoft 365 Global Administrator**: Enables the Copilot Dashboard and delegates access to the dashboard and organizational insights. Senior leaders [might automatically get access](/viva/insights/org-team-insights/copilot-dashboard#how-automatic-access-to-the-copilot-dashboard-is-determined). <br/>- **Microsoft 365 Global Administrator**: Sets up Viva Insights and assigns the **Insights Analyst** and **Insights Administrator** roles. <br/>- **Insights Analyst**: Uses the Advanced Insights Analyst Workbench to build Copilot Power BI Templates. <br/> - **Insights Administrator**: Manages settings in the Advanced Insights Analyst Workbench, like security, privacy, and uploading organization data files. |
| **[Microsoft Purview portal](https://purview.microsoft.com)** | - **Audit Reader**: Searches the audit logs. |
| **[Power Platform admin center](https://admin.powerplatform.microsoft.com)** | - **System Administrator**: Assigns the **Copilot Studio authors** role. <br/> - **License admin** in [Microsoft 365 admin center](https://admin.microsoft.com): Assigns Copilot Studio licenses. |
| **[Copilot Studio](https://copilotstudio.microsoft.com)** | - **Copilot Studio Author**: Accesses analytics for agents they create. |

## Microsoft 365 admin center reports

The Microsoft 365 admin center provides Copilot readiness and usage reports:

- **[Readiness report](/microsoft-365/admin/activity-reports/microsoft-365-copilot-readiness)** - This report shows how ready your organization is to adopt Microsoft 365 Copilot, including:

  - **License eligibility**: Shows the users that meet the prerequisites for Copilot licensing
  - **App readiness**: Indicates usage levels of Microsoft 365 apps that Copilot integrates with
  - **Technical requirements**: Highlights potential technical blockers for deployment

- **[Usage report](/microsoft-365/admin/activity-reports/microsoft-365-copilot-usage)** - This report shows how Microsoft 365 Copilot is used in your organization, including:

  - **Adoption metrics**: Shows the number of users who accessed Copilot
  - **User activity**: Displays active usage trends over time
  - **App integration**: Reveals the Microsoft 365 applications that are being used with Copilot
  - **Top agents**: Identifies the most frequently used Copilot agents

### View the reports

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/) as the **Microsoft 365 Global Administrator** and assign the **AI Administrator** role to the users who need to access these reports.
1. The AI Admins can start using the reports:

    1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/) as the **AI Administrator**.
    1. Select **Reports** > **Usage**.

        :::image type="content" source="media/microsoft-365-copilot-reports-for-admins/microsoft-365-admin-center-reports.png" alt-text="In Microsoft 365 admin center, select reports and then select usage.":::

    1. Select **Microsoft 365 Copilot** > **Readiness** or **Usage**:

        :::image type="content" source="media/microsoft-365-copilot-reports-for-admins/microsoft-365-admin-center-usage.png" alt-text="In Microsoft 365 admin center reports, select Microsoft 365 Copilot and then readiness or usage." lightbox="media/microsoft-365-copilot-reports-for-admins/microsoft-365-admin-center-usage.png":::

To learn more about these reports, see:

- [Microsoft 365 Copilot readiness report](/microsoft-365/admin/activity-reports/microsoft-365-copilot-readiness)
- [Microsoft 365 Copilot usage report](/microsoft-365/admin/activity-reports/microsoft-365-copilot-usage)

## Viva Insights Copilot Analytics

Microsoft Viva Insights provides deeper analytical capabilities for Microsoft 365 Copilot through two main features - **Copilot Dashboard** and **Advanced Insights Analyst tools**.

### Copilot Dashboard

The **Copilot Dashboard** offers a comprehensive view of Copilot's usage metrics and actionable insights, including:

- **Adoption metrics**: Tracks user adoption rates and growth trends
- **Usage patterns**: Analyzes when and how users interact with Copilot
- **Productivity impact**: Measures the effect of Copilot on productivity metrics
- **ROI indicators**: Provides data points to help assess return on investment
- **Actionable insights**: Suggests ways to improve Copilot adoption and effectiveness

#### Open the Copilot Dashboard

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com) as the **Microsoft 365 Global Administrator** and:

    1. [Enable the Copilot Dashboard](/viva/insights/advanced/admin/manage-settings-copilot-dashboard).
    1. [Delegate access](/viva/insights/org-team-insights/delegate-access) to the users who need it.

1. The users can start using the Copilot Dashboard:

    1. In Microsoft Teams, users search for and open the **Viva Insights** app.
    1. In **Viva Insights**, select **Copilot Dashboard**.

To learn more, see:

- [Manage settings for the Microsoft Copilot Dashboard](/viva/insights/advanced/admin/manage-settings-copilot-dashboard)
- [Delegate access to organizational insights and Copilot Dashboard](/viva/insights/org-team-insights/delegate-access)
- [Connect the Microsoft Copilot Dashboard to Microsoft 365 customers](/viva/insights/org-team-insights/copilot-dashboard)

### Advanced Insights Analyst tools

For organizations requiring deeper analysis, Viva Insights provides advanced analytical capabilities, including:

- **Custom Copilot queries**: Create specialized queries focused on Copilot usage
- **Power BI templates**: Use prebuilt templates to visualize Copilot data
- **Cross-data analysis**: Combine Copilot metrics with other workplace analytics
- **Detailed reporting**: Generate comprehensive reports for executives and stakeholders

#### Open the Insights Analyst tools

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com/) as the **Microsoft 365 Global Administrator** and:

    1. [Set up Viva Insights](/viva/insights/advanced/setup-maint/setup-overview).
    1. Add users to the **Insights Analyst** role.
    1. Add users to the **Insights Administrator** role.

    For the complete steps, see [Viva Insights setup checklist](/viva/insights/advanced/setup-maint/setup-overview).

1. The **Insights Analyst** can go to **Viva Insights** > **Analysis**. Then, use the templates and [set up Copilot queries](/viva/insights/advanced/analyst/copilot-query).

    To learn more about some of the reports and view any prerequisites, see:

    - [Microsoft 365 Copilot adoption report](/viva/insights/advanced/analyst/templates/microsoft-365-copilot-adoption)
    - [Microsoft 365 Copilot impact report](/viva/insights/advanced/analyst/templates/microsoft-365-copilot-impact)

1. The **Insights Administrator** can sign into the [Analyst Workbench](https://analysis.insights.cloud.microsoft) > select **Copilot** to filter reports > select the report.

To learn more, see:

- [Advanced insights introduction](/viva/insights/advanced/introduction-to-advanced-insights)
- [Power BI report templates](/viva/insights/advanced/analyst/templates/introduction-to-templates)
- [Set up your queries using Microsoft 365 Copilot in Viva Insights](/viva/insights/advanced/analyst/copilot-query)

## Microsoft Purview audit logs

Microsoft Purview provides detailed audit logs of all Copilot activities, including:

- **Complete activity tracking**: Logs all user interactions with Copilot
- **Prompt auditing**: Records the actual prompts entered by users
- **Compliance monitoring**: Helps ensure adherence to organizational policies
- **Security analysis**: Identifies potential security concerns in Copilot usage
- **Detailed filtering**: Allows filtering by user, date, action type, and more

### Open the audit logs

1. Sign in to the [Microsoft Purview portal](https://purview.microsoft.com) with a role that can search audit logs, like **Audit Reader**.

    There are other roles that can also search the audit logs. For a list of roles and what they can do, see [Roles and role groups in Microsoft Defender for Office 365 and Microsoft Purview](/defender-office-365/scc-permissions).

1. Select **Solutions** > **Audit**.

    :::image type="content" source="media/microsoft-365-copilot-reports-for-admins/microsoft-purview-portal-solutions-audit.png" alt-text="In the Microsoft Purview portal, select solutions and then select audit.":::

1. In **Search** > **Workloads**, select **AIApp** and **Copilot**. Select **Search**. This step searches the audit log search results to only show activities related to Microsoft 365 Copilot. You can also get granular and set a date range and more.

   :::image type="content" source="media/microsoft-365-copilot-reports-for-admins/microsoft-purview-portal-audit-search.png" alt-text="In the Microsoft Purview portal audit feature, go to workloads and select some search options."lightbox="media/microsoft-365-copilot-reports-for-admins/microsoft-purview-portal-audit-search.png":::

To learn more, see:

- [Microsoft Purview auditing solutions](/purview/audit-get-started)
- [Microsoft Purview audit logs for Copilot and AI activities](/purview/audit-copilot).
- [Considerations for Data Security Posture Management (DSPM) for AI & data security and compliance protections for Copilot](/purview/ai-microsoft-purview-considerations)

## Power Platform reports and Copilot Studio Analytics

For organizations using Copilot agents, there are some options for specialized analytics:

- Power Platform admin center for consumption-based agents
- Copilot Studio Analytics for individual agents
- Copilot Studio Kit for testing and tracking custom agents

To learn more, see:

- [Key concepts – Analytics in Copilot Studio](/microsoft-copilot-studio/analytics-overview)
- [Set up your development environment for Microsoft 365 Copilot](/microsoft-365-copilot/extensibility/ecosystem)

### Power Platform admin center

The **Power Platform admin center** is for consumption-based agents, like [pay-as-you-go](./pay-as-you-go/overview.md) or pre-purchased message packs.

The Power Platform admin center includes the following analytics:

- **Message consumption**: Tracks the number of messages processed by agents
- **Session metrics**: Monitors agent session counts and durations
- **Capacity management**: Helps manage consumption-based billing
- **Tenant-wide visibility**: Provides an overview of all agents across the tenant

#### Open the Power Platform reports

To view the analytics for consumption-based agents, use the Power Platform admin center.

1. Sign into the [Power Platform admin center](https://admin.powerplatform.microsoft.com) as the **System Administrator** and:

    1. Select **Manage** > **Tenant settings**.
    1. Add users to the **Copilot Studio authors** role. Users with this role can create agents in Copilot Studio and view the analytics for the agents they create.

    To learn more, see [Assign a security role to a user](/power-platform/admin/assign-security-roles).

    > [!TIP]
    > Users with the **Power Platform Administrators** role can view the analytics for all agents in the tenant. To add users to this role, use the [Microsoft Azure portal](https://portal.azure.com) > **Microsoft Entra ID** > **Manage** > **Roles and administrators**.

2. The **Copilot Studio authors** can start using the reports:

    1. Sign into the [Power Platform admin center](https://admin.powerplatform.microsoft.com) as the **Copilot Studio author**.
    1. Select **Licensing** > **Copilot Studio** > **Summary**.
    1. View the reports.

### Copilot Studio Analytics

**Copilot Studio Analytics** is for individual agents that are included in your Microsoft 365 Copilot license.

Copilot Studio includes the following analytics:

- **Agent performance**: Measures how effectively agents respond to queries
- **User satisfaction**: Tracks satisfaction ratings from users
- **Session metrics**: Analyzes session duration, completion rates, and abandonment
- **Topic effectiveness**: Identifies which topics are handled well or need improvement
- **Trace data**: Offers detailed logs for troubleshooting

#### Open Copilot Studio Analytics

To assign Copilot Studio licenses, use the Microsoft 365 admin center. To view the analytics for the agents, use Copilot Studio.

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com/) as the **License admin**. Assign Copilot Studio licenses to the users who need to create agents.

    To learn more, see:

    - [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles)
    - [Assign licenses and manage access to Copilot Studio](/microsoft-copilot-studio/requirements-licensing)

1. The Copilot Studio users can start using the reports:

    1. Sign into [Copilot Studio](https://copilotstudio.microsoft.com) as a licensed Copilot Studio user.
    1. Select **Agents** > select your agent > **Analytics** tab.

        To learn more, see [Review and improve agent effectiveness in Copilot Studio](/microsoft-copilot-studio/analytics-improve-agent-effectiveness).

### Copilot Studio Kit

The **Copilot Studio Kit** is a set of tools and resources that helps you test custom agents, track key performance indicators of your custom agents, and more.

To learn more, see:

- [Copilot Studio Kit - AppSource](https://appsource.microsoft.com/product/dynamics-365/microsoftpowercatarch.copilotstudiokit2)
- [Power CAT Copilot Studio Kit - GitHub](https://github.com/microsoft/Power-CAT-Copilot-Studio-Kit/blob/main/README.md)

## Related articles

- [Microsoft 365 Copilot license plans](microsoft-365-copilot-licensing.md)
- [Microsoft 365 Copilot setup](microsoft-365-copilot-setup.md)
- [Activity Reports in Microsoft 365](/microsoft-365/admin/activity-reports/activity-reports)
