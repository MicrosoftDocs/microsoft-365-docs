---
title: Workforce Insights agent
description: This article details how to use the Workforce Insights agent
ms.date: 12/08/2025
ms.service: microsoft-365-copilot
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: scotv
ms.collection:
- m365copilot
- magic-ai-copilot
---

# Workforce Insights agent

> [!IMPORTANT]
> Copilot personalization and memory are in preview and subject to change. For more information about the Frontier program, see [What is Frontier?](https://support.microsoft.com/topic/what-is-frontier-17c671e0-1906-4d9d-892c-68e11fbff4c7)

The Workforce Insights agent helps organizational leaders and their specified delegates:

- Understand organization composition and landscape of users of key attributes within their organizations.  
- Perform and summarize guidance and best practices for workforce planning based on skills.  
- Identify skills and suggest improvements to organizational structure.
- Find team members in your organization and filter by attributes such as level, location, title, etc.  

The Workforce Insights agent uses information from:

- [Organizational Data](/viva/organizational-data)
    - Organizational data describes the users in your organization.
- [Custom attributes](#data-available-in-the-workforce-insights-agent) sent to Workforce Insights  
- [People Skills data](/copilot/microsoft-365/people-skills-overview)

> [!IMPORTANT]
> You can only search for information that's available to you about your team. Responses are based on your role, and policies set by your admin and organization.

## Licensing and tenant requirements

> [!IMPORTANT]
> Workforce Insights is only available if your organization has at least 50 paid and enabled Copilot licenses. For more information, see [Which Copilot is right for me?](/copilot/microsoft-365/which-copilot-for-your-organization)

Workforce Insights is only available to users with paid Microsoft 365 Copilot licenses. In addition:

- Delegates also require a paid Microsoft 365 Copilot license.
- People Skills data also require appropriate licensing.  

After you have at least 50 paid and enabled Copilot licenses with the required People Skills license, the entire organizational hierarchy is available. The organization hierarchy doesn't require a license to be included in responses.  

Once you have the appropriate licenses, you can start using the Workforce Insights agent.

## Responsible AI, data privacy, and security

For information on responsible AI principles and usage, see the following articles:

- [Responsible AI Principles and Approach](https://www.microsoft.com/ai/principles-and-approach?msockid=3be31cda99b962db1b5a0a8398f063ed)
- [Responsible AI: Ethical policies and practices](https://www.microsoft.com/ai/responsible-ai)
- [Data privacy and security for Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-privacy)
- [People Skills data and AI guidelines](/copilot/microsoft-365/people-skills-data-and-ai-guidelines)

## Start using the Workforce Insights agent

**To start using the Workforce Insights agent:**

1. Upload organizational data. For more information on best practices when using organizational data, see [Organizational Data in Microsoft 365](/viva/organizational-data).
1. Understand data access policies and delegation.
    1. [Use admin controls to manage access to Workforce Insights](#use-admin-controls-to-manage-access-to-the-workforce-insights-agent-in-your-organization)
    2. Manage delegation policies  
1. Download the Workforce Insights agent from the Agent Store in Microsoft 365 Copilot.
1. Set up People Skills.

## Use admin controls to manage access to the Workforce Insights agent in your organization

You have several controls to deploy the Workforce Insights agent in their organization. You should review the controls to manage Workforce Insights agent deployment and access in their tenant.

The following controls are available:

| Control | Description |
| --- | --- |
| Pilot by restricting access to some users | Restrict access to the agent to only specified users or groups. You can choose which users the agent is deployed to, and to whom it's available to install. Use this control for piloting. |
| Deploy the agent (recommended) | Install the agent on behalf of users in your organization. This action makes the agent active and usable for specific users or groups without them having to install it themselves. |
| Remove/block the agent | You can completely block access to the Workforce Insights agent for all users or remove a previously deployed agent from your inventory. |

For more information on how to manage agents, see [Manage agents for Microsoft 365 Copilot in the Microsoft 365 admin center](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps?toc=%2Fcopilot%2Fmicrosoft-365%2Ftoc.json&bc=%2Fcopilot%2Fmicrosoft-365%2Fagent-framework%2Fbread%2Ftoc.json).

## Manage delegation policies

As a manager or leader using the Workforce Insights agent, you can assign a delegate, or multiple delegates, to access the organizational data that's available to you about your team.  

For example, if you're a manager, you might have access to confidential attributes about your team. This custom attribute could be called `salary`. If you assign a delegate to access this attribute, the delegate can query data within this column. When you enable delegates, it helps managers and leaders conduct analysis with the support of their team.

### Delegation admin controls

| Control | Description |
| --- | --- |
| Disable the ability for a user to assign delegates | As the admin, you can restrict users from assigning a delegate to view their organizational insights. Use the Microsoft 365 control access to features with PowerShell under the module name WorkforceInsights. |
| Assign delegates or revoke delegates on behalf of a user | Starting in January 2026, as the admin, you can use PowerShell commandlets to assign or revoke delegates access on behalf of a user. |

### Assign delegates

**To assign delegates:**

1. Go to the Workforce Insights landing page.  
2. On the Workforce Insights landing page, navigate to the Manage data access dropdown. In this page, you can:  
    1. View all your delegates.
    2. Request delegation from another manager or leader in your organization.
3. Once you assign access, the delegate receives a notification in Teams to use the Workforce Insights agent.

## Request data access

Delegates can request access through a similar workflow.

> [!NOTE]
> If the user is without a team, that user can't delegate.

**To request access:**

1. Go to the Workforce Insights landing page.  
2. On the Workforce Insights landing page, navigate to the Request data access dropdown.  
3. Enter the following information:
    1. The person you're requesting access from.
    2. Optional. You can add a message to provide context or reasons behind the request for access.  
4. When the request is received, the manager or leader grants or denies access.

## Data available in the Workforce Insights Agent

The following explains:  

- How the Workforce Insights agent uses different types of data that can be supported when made available in your organization
- How you can configure data for the Workforce Insights agent to use

| Data type | Description |
| --- | --- |
| Public attributes | Public attributes include general information seen by all users in the tenant, such as work email, name, job title, and department.<p>The attributes uploaded by the tenant are available to the Microsoft 365 profile. The tenant's users and Microsoft 365 apps have access to the attributes. The data used for public attributes used by Workforce Insights depends on the precedence of the data used in Microsoft 365 User Profile. For more information, see [Understand how organizational data is used and retained in Microsoft 365](/viva/orgdata-data-usage#data-usage).</p><p>You can find the complete list of public attributes available to Workforce Insights in the [Organizational Data in Microsoft 365 - Attribute reference](/viva/orgdata-attributes).</p> |
| People skills | The Workforce Insights Agent can use the People Skills data that's available in your organization. Before you can use People Skills data, you must [set up People Skills](/copilot/microsoft-365/people-skills-setup) in your tenant first. |
| Custom attributes | Custom attributes are attributes that you might want to add to the public attributes to enhance the usefulness of the Workforce Insights agent. These attributes need to be explicitly uploaded and made available to the Workforce Insights service.<p>Use the information in [Map attributes and set access for Microsoft 365, Copilot, and Viva apps](/viva/map-attributes-set-access#4-choose-attribute-access-for-apps) to make data available to the Workforce Insights service.</p><p>In addition to making custom attributes available for the service, you must:</p><ol><li>Configure the use of the custom attributes by [assigning access policies](/viva/set-access-policies).</li><li>Add the attribute metadata for the agent to use. You can use the [Custom column best practices](#custom-column-best-practices) section to help you attribute the metadata.</li></ol><p>Other helpful resources:<ul><li>To upload public and custom attributes, see [Import your organizational data with a `.csv` file](/viva/import-orgdata)</li><li>[Manage delegation access policies](#manage-delegation-policies)</li></ul></p> |

## Custom column best practices

When creating custom columns, it's important to ensure that names and descriptions are clear, consistent, and meaningful. The following table explains a specific input you must provide, such as the column name, description, data type, and data quality. The table offers guidance on how to define custom columns effectively.  

After reviewing these guidelines, see the [custom column examples](#custom-column-examples) that bring all these elements together to illustrate what an ideal column configuration looks like in practice.

| Input | Guidance |
| --- | --- |
| Column Name | Choose a column name that's concise and descriptive of its purpose. Avoid abbreviations or ambiguous terms that could lead to confusion. Think of column names like labels on a form or headings in a spreadsheet. The column name should clearly tell someone what information belongs in that column without needing extra explanation. Don't include detailed usage instructions or data definitions in the name. Usage instructions and data definitions belong in the description. |
| Data Type | Select the correct data type for the column. The options are:<ul><li>String</li><li>Boolean</li><li>DateTime</li><li>Double</li><li>Integer</li></ul><p>Using an incorrect type can lead to poor performance and inaccurate results.</p><p>Clean and normalize data before uploading by ensuring consistent spelling and capitalization. Avoid inconsistent values such as:<ul><li>`Software Eng` versus `Software Engineer`</li><li>`Washington` versus `WASHINGTON`</li><li>Use full terms instead of acronyms. `Product Manager` instead of `PM`</li></ul><p>The number of unique values per column is limited to `100` for string data types. There's no hard limit on the number of values, but performance is better if the number of unique values is constrained. These limits don't apply to numbers or dates.</p> |
| Semantic Overlap | Avoid creating multiple columns that represent similar concepts. Significant overlap between columns can lead to inconsistent or unpredictable results. If two columns serve nearly the same purpose, consider consolidating them. |
| Column Description | After the **Organizational Data Admin** completes the **MODIS (Microsoft Organizational Data Ingestion System) process** where they ingest [organizational data](/viva/organizational-data) and select which columns to send to Workforce Insights agent, there might be a short latency period, typically a couple of hours, before the data becomes available for configuration.<p>Once available, you must add column descriptions to ensure each column is clearly defined and usable. This step is critical because without descriptions, the Workforce Insights agent can't interpret the column effectively and might ignore it in responses.</p><p>The column description should provide a clear explanation of what the column represents. Include details such as:<ul><li>The data that the column contains</li><li>The intended usage of the column</li><li>Any other requirements when using the column. Such as:<ul><li>If the meaning of the data isn't obvious from the values themselves, document the meaning in the description.</li><li>If data in a column is built from multiple parts, mention that the data is built from multiple parts.</li><li>If data in a column is limited to certain values, consider adding this information to the description.</li></ul></ul> |

## Custom column examples

### Example 1: `JobTitle`

| Input | Value |
| --- | --- |
| Column Name | `JobTitle` |
| Column Description | Represents the internal classification of an employee's job title. It contains the employee's level (Junior or Senior) and role (Project Manager or Software Engineer). Possible values are:<ul><li>Junior Project Manager</li><li>Senior Project Manager</li><li>Junior Software Engineer</li><li>Senior Software Engineer</li></ul> |
| Data Type | String |
| Data | `["Junior Project Manager", "Senior Project Manager", "Junior Software Engineer", "Senior Software Engineer"]` |
| Explanation | The data in the column being built from the employee's level and role is specified in the description. In addition, since the number of candidate values is small, we can list all possible values in the description. While it isn't necessary, listing all possible values can help increase accuracy. The data is also clear on the roles, using `Project Manager` instead of the acronym `PM`. |

### Example 2: `ManagerSpanBand`

| Input | Value |
| --- | --- |
| Column Name | `ManagerSpanBand` |
| Column Description | Categorizes a manager's number of direct reports into defined bands used for workforce planning and load balancing. Direct reports calculated weekly from the latest employee to manager relationships and excludes vendor or contingent workers. Band definitions are:<ul><li>S (Small) for one to five directs</li><li>M (Medium) for six to 10 directs</li><li>L (Large) for 11 to 15 directs </li><li>XL (Very Large) for 16 or more directs</li><li>Managers with zero directs and managers with invalid relationship data show up as "Not Applicable"</li></ul> |
| Data Type | String |
| Data | `["S","M","L","XL","Not Applicable"]` |
| Explanation | The name alone doesn't reveal thresholds, refresh cadence, or exclusions. The description must define these rules and edge cases. Without explicit bands and exception handling, interpretations could vary across queries. |

### Example 3: `WorkAnniversaryDate`

| Input | Value |
| --- | --- |
| Column Name | `WorkAnniversaryDate` |
| Column Description | Indicates the official date used to determine an employee's continuous service tenure for organizational purposes such as milestone recognition, service awards, and vacation accrual eligibility. Values are in `DD/MM/YYYY` format.<p>This date should always be used to calculate work anniversaries rather than HireDate, as it reflects continuous service and accounts for breaks or adjustments in employment history.</p> |
| Data Type | DateTIme |
| Explanation | The description must specify that this date is used for tenure-related calculations rather than HireDate, as this distinction isn't evident from the column name alone. Including the format (`DD/MM/YYYY`) helps ensure clarity. |

For additional data guidance, see [Import your organizational data with a .csv file](/viva/import-orgdata).

## Workforce Insights agent experiences and prompt examples

### Experiences

In the Workforce Insights agent, the following experiences can appear:  

- Landing page with dynamic prompts and chat history.
- Responses can include inline visualizations such as graphs.
- Dynamically generated reports based on prompts.
- Share a report with another employee in your company. **You can only share the report via the provided link is only available to users with Copilot licenses.**

### Prompt examples you can use with the Workforce Insights agent

- Summarize my organization's distribution, my direct reports, and propose recommendations
- What is the individual contributor (IC) to manager ratio in my team?
- Surface top skills across the org and summarize strengths
- What is my team's level mix? Provide counts and percentage per level and highlight how this compares to other teams in my organization.
- Which roles benefit most from adopting AI tools?
- How did exits and hires change team sizes for my direct reports?
- How can I get the most from this Workforce Insights agent?
- Who has a work anniversary this quarter?

## FAQ

### What languages does the Workforce Insights agent support?

Being in the Frontier program, the Workforce Insights agent is optimized for English. Features like the landing page and chat work in all Microsoft 365 Copilot languages but experiences like delegation, reports, and admin experiences are limited to English until Early 2026.

### How can I provide feedback on the Workforce Insights agent?

You can provide feedback in line after every prompt using the thumbs up/thumbs down option. Providing feedback can help the Workforce Insights team diagnose issues and receive feedback on response quality. You can also provide feedback by going opening **Microsoft 365 Copilot** > select the **horizontal (...) ellipsis** > select **Send feedback** > follow the prompts to submit feedback.
