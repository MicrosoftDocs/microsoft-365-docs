---
title: Automate insider risk management actions with Microsoft Power Automate flows (preview)
description: Learn how to automate Microsoft Purview Insider Risk Management actions with Microsoft Power Automate flows (preview).
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 05/03/2023
audience: itpro
ms.collection:
- highpri 
- tier1
- purview-compliance
- m365solution-insiderrisk
- m365initiative-compliance
- highpri
ms.custom: admindeeplinkCOMPLIANCE
---

# Automate insider risk management actions with Microsoft Power Automate flows (preview)

> [!IMPORTANT]
> Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage, and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

[Microsoft Power Automate](/power-automate/getting-started) is a workflow service that automates actions across applications and services. By using flows from templates or created manually, you can automate common tasks associated with these applications and services. When you enable Power Automate flows for Microsoft Purview Insider Risk Management, you can automate important tasks for cases and users. You can configure Power Automate flows to retrieve user, alert, and case information and share this information with stakeholders and other applications, as well as automate actions in insider risk management, such as posting to case notes. Power Automate flows are applicable for cases and any user in scope for a policy.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

Customers with Microsoft 365 subscriptions that include insider risk management don't need additional Power Automate licenses to use the recommended insider risk management Power Automate templates. These templates can be customized to support your organization and cover core insider risk management scenarios. If you choose to use premium Power Automate features in these templates, create a custom template using the Microsoft Purview connector, or use Power Automate templates for other compliance areas in Microsoft 365, you may need more Power Automate licenses.

The following Power Automate templates are provided to customers to support process automation for insider risk management users and cases:

- **Notify users when they're added to an insider risk policy**: This template is for organizations that have internal policies, privacy, or regulatory requirements that users must be notified when they're subject to insider risk management policies. When this flow is configured and selected for a user in the **Users** page, users and their managers are sent an email message when the user is added to an insider risk management policy. This template also supports updating a SharePoint list hosted on a SharePoint site to help track notification message details like date/time and the message recipient. If you have chosen to anonymize users through the **Privacy** setting, flows created from this template won't function as intended so that user privacy is maintained. 

   Power Automate flows using this template are available on the **Users dashboard**.
- **Request information from HR or business about a user in an insider risk case**: When acting on a case, insider risk analysts and investigators may need to consult with HR or other stakeholders to understand the context of the case activities. When this flow is configured and selected for a case, analysts and investigators send an email message to HR and business stakeholders configured for this flow. Each recipient is sent a message with pre-configured or customizable response options. When recipients select a response option, the response is recorded as a case note and includes recipient and date/time information. If you have chosen to anonymize users through the **Privacy** setting, flows created from this template won't function as intended so that user privacy is maintained. 

   Power Automate flows using this template are available on the **Cases dashboard**.
- **Notify manager when a user has an insider risk alert**: Some organizations may need to have immediate management notification when a user has an insider risk management alert. When this flow is configured and selected, the manager for the case user is sent an email message with the following information about all case alerts:

    - Applicable policy for the alert
    - Date/time of the alert
    - Severity level of the alert

    The flow automatically updates the case notes that the message was sent and that the flow was activated. If you've chosen to anonymize users through the **Privacy** setting, flows created from this template won't function as intended so that user privacy is maintained. 
    
    Power Automate flows using this template are available on the **Cases dashboard**.
- **Create record for insider risk case in ServiceNow**: This template is for organizations that want to use their ServiceNow solution to track insider risk management cases.  When in a case, insider risk analysts and investigators can create a record for the case in ServiceNow. You can customize this template to populate selected fields in ServiceNow based on your organization's requirements. For more information on available ServiceNow fields, see the [ServiceNow Connector reference](/connectors/service-now/) article.

   Power Automate flows using this template are available on the **Cases dashboard**. 

## Create a Power Automate flow from an insider risk management template

To create a Power Automate flow in the settings area, you must be a member of the *Insider Risk Management* or *Insider Risk Management Admins* role group. To create a Power Automate flow with the **Manage Power Automate flows** option, you must be a member of at least one insider risk management role group.

1. Do one of the following:
   - In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management**, select the **Settings** button, and then select **Power Automate flows (preview)**. 
   - In the **Cases dashboard** or the **Users dashboards**, select **Automate** > **Manage Power Automate flows**.
2. On the **Power Automate flows** page, select a recommended template from the **Insider risk management templates you may like** section.
3. The flow lists the embedded connections needed for the flow and notes if the connection statuses are available. If needed, update any connections that aren't displayed as available. Select **Continue**.
4. By default, the recommended flows are pre-configured with the recommended insider risk management and Microsoft 365 service data fields required to complete the assigned task for the flow. If needed, customize the flow components by using the **Show advanced options** control and configuring the available properties for the flow component.
5. If needed, add any other steps to the flow by selecting the **New step** button. In most cases, this shouldn't be needed for the recommended default templates.
6. Select **Save draft** to save the flow for further configuration or select **Save** to complete the configuration for the flow.
7. Select **Close** to return to the **Power Automate flow** page. The new template is listed as a flow on the **My flows** tabs and is automatically available from the **Automate** dropdown control when working with insider risk management cases for the user creating the flow.

> [!IMPORTANT]
> If other users in your organization need access to the flow, the flow must be shared.

## Create a custom Power Automate flow for insider risk management

Some processes and workflows for your organization may be outside of the recommended insider risk management flow templates, in which case you may need to create custom Power Automate flows for insider risk management areas. Power Automate flows are flexible and support extensive customization, but have required steps to integrate with insider risk management features.

To create a custom Power Automate template for insider risk management:

1. **Check your Power Automate flow license**: To create customized Power Automate flows that use insider risk management triggers, you'll need a Power Automate license. The recommended insider risk management flow templates don't require extra licensing and are included as part of your insider risk management license.
2. **Create an automated flow**: Create a flow that performs one or more tasks after it's triggered by an insider risk management event. For details on how to create an automated flow, see [Create a flow in Power Automate](/power-automate/get-started-logic-flow).
3. **Select the Microsoft Purview connector**: Search for and select the Microsoft Purview connector. This connector enables insider risk management triggers and actions. For more information on connectors, see the [Connector reference overview](/connectors/connector-reference/) article.
4. **Choose insider risk management triggers for your flow**: Insider risk management has two triggers available for custom Power Automate flows:
    - **For a selected insider risk management case**: Flows with this trigger can be selected from the insider risk management **Cases dashboard**.
    - **For a selected insider risk management user**: Flows with this trigger can be selected from the insider risk management **Users dashboard**.
5. **Choose insider risk management actions for your flow:** You can choose from several actions for insider risk management to include in your custom flow:
    - Get insider risk management alert
    - Get insider risk management case
    - Get insider risk management user
    - Get insider risk management alerts for a case
    - Add insider risk management case note

## Share a Power Automate flow

By default, Power Automate flows created by a user are only available to that user. For other insider risk management users to have access and use a flow, the flow must be shared by the flow creator. To share a flow, use the settings controls in the insider risk management solution or the **Manage Power Automate flows** option from the **Automate** control when working directly in the **Cases dashboard** or **Users dashboard**. Once you've shared a flow, everyone who it's shared with can access the flow in the **Automate** control dropdown in the **Cases dashboard** and **Users dashboard**.

To share a Power Automate flow in the settings area, you must be a member of the *Insider Risk Management* or *Insider Risk Management Admins* role group. To share a Power Automate flow with the **Manage Power Automate flows** option, you must be a member of at least one insider risk management role group.

To share a Power Automate flow:

1. Do one of the following:
   - In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management**, select the **Settings** button, and then select **Power Automate flows (preview)**. 
   - In the **Cases dashboard** or **Users dashboard**, select **Automate** > **Manage Power Automate flows**.
2. On the **Power Automate flows** page, select the **My flows** or **Team flows** tab.
3. Select the flow to share, and then select **Share** from the flow options menu.
4. On the flow sharing page, enter the name of the user or group you want to add as an owner for the flow.
5. In the **Connection Used** dialog box, select **OK** to acknowledge that the added user or group will have full access to the flow.

## Edit a Power Automate flow

To edit a Power Automate flow in the settings area, you must be a member of the *Insider Risk Management* or *Insider Risk Management Admins* role group. To edit a Power Automate flow with the **Manage Power Automate flows** option, you must be a member of at least one insider risk management role group.

1. Do one of the following:
   - In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management**, select the **Settings** button, and then select **Power Automate flows (preview)**.
   - In the **Cases dashboard** or **Users dashboard**, select **Automate** > **Manage Power Automate flows**.
2. On the **Power Automate flows** page, select a flow to edit, and then select **Edit** from the flow control menu.
3. Select **ellipsis** > **Settings** to change a flow component setting or **ellipsis** > **Delete** to delete a flow component.
4. Select **Save** and then **Close** to complete editing the flow.

## Delete a Power Automate flow

> [!NOTE]
> When a flow is deleted, it's removed as an option for all users.

To delete a Power Automate flow in the settings area, you must be a member of the *Insider Risk Management* or *Insider Risk Management Admins* role group. To delete a Power Automate flow with the **Manage Power Automate flows** option, you must be a member of at least one insider risk management role group.

1. Do one of the following:
   - In the [Microsoft Purview compliance portal](https://compliance.microsoft.com), go to **Insider risk management**, select the **Settings** button, and then select **Power Automate flows (preview)**. 
   - In the **Cases dashboard** or **Users dashboard**, select **Automate** > **Manage Power Automate flows**.
2. On the **Power Automate flows** page, select a flow to delete, and then select **Delete** from the flow control menu.
3. In the deletion confirmation dialog box, select **Delete**.
