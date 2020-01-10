---
title: Insider risk management notice templates (preview)
description: Learn about insider risk management notice templates in Microsoft 365
keywords: Microsoft 365, insider risk management, risk management, compliance
localization_priority: Normal
ms.prod: Microsoft-365-enterprise
ms.topic: article
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: m365-security-compliance
---

# Insider risk management notice templates (preview)

Insider risk management notice templates allow you to send email messages to employees when their activities generate a policy match and alert. In most cases, employee actions that generate alerts are the result of mistakes or inadvertent activities without ill intent. Notices serve as simple reminders to employees to be more careful or to provide links or information for refresher training or corporate policy resources. Notices can be an important part of your internal compliance training program and can help create a documented audit trail for employees with recurring risk activities.

Create notice templates if you want to send users an email reminder notice for policy matches as part of the issue resolution process. Notices can only be sent to the employee email address associated with the specific alert being reviewed. When selecting a notice template to apply to a policy match, you can choose to accept the field values defined in the template or overwrite the fields as needed.

## Notice template dashboard

The Notices dashboard displays a list of configured notice templates and allows you to create new notice templates. The notice templates are listed in reverse date order with the most recent notice template listed first.

## HTML for notices

If you'd like to create more than a simple text-based email message for notifications, you can create a more detailed message by using HTML in the message body field of a notice template. The following example provides the message body format for a basic HTML-based email notification template:

```HTML
<!DOCTYPE html>
<html>
<body>
<h2>Action Required: Contoso Employee Code of Conduct Policy Training</h2>
<p>A recent activity you've performed has generated a risk alert for the Contoso Employee <a href='https://www.contoso.com'>Code of Conduct Policy</a>.</p>
<p>You are required to attend the Contoso Employee Code of Conduct <a href='https://www.contoso.com'>training</a> within the next 14 days. Please contact <a href='mailto:hr@contoso.com'>Human Resources</a> with any questions about this training request.</p>
<p>Thank you,</p>
<p><em>Human Resources</em></p>
</body>
</html>
```

> [!NOTE]
> HTML href attribute implementation in the insider risk management notice templates currently support only single quotation marks instead of double quotation marks for URL references.

## Create a new notice template

To create a new insider risk management notice template, you'll use the notice wizard in **Insider risk management** solution in the Microsoft 365 compliance center.

Complete the following steps to create a new insider risk management notice template:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select the **Notices** tab.
2. Select **Add notice** to open the notice wizard.
3. On the **Create a new notice template** page, complete the following fields:
    - **Template name (required)**: Enter a friendly name for the notice. This name appears on the list of notices on the notice dashboard and in the notice selection list when sending notices from a case.
    - **Send from (required)**: Enter the sender email address for the notice. This address will appear in the **From:** field in all notices sent to employees unless changed when sending a notice from a case.
    - **Cc and Bcc (optional)**: Optional users or groups to be notified of the policy match, selected from the Active Directory for your subscription.
    - **Subject (required)**: Information that appears in the subject line of the message, supports text characters.
    - **Message body (required)**: Information that appears in the message body, supports text or HTML values.
4. Select **Save** to create and save the notice.

## Update a notice template

To update an existing insider risk management notice template, complete the following steps:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select the **Notices** tab.
2. On the notice dashboard, select the notice you want to manage.
3. On the notice details page, select **Edit**
4. On the **Create a new notice template** page, you can edit the following fields:
    - **Template name (required)**: Enter a new friendly name for the notice. This name appears on the list of notices on the notice dashboard and in the notice selection list when sending notices from a case.
    - **Send from (required)**: Update the sender email address for the notice. This address will appear in the **From:** field in all notices sent to employees unless changed when sending a notice from a case.
    - **Cc and Bcc (optional)**: Update optional users or groups to be notified of the policy match, selected from the Active Directory for your subscription.
    - **Subject (required)**: Update information that appears in the subject line of the message, supports text characters.
    - **Message body (required)**: Update information that appears in the message body, supports text or HTML values.
5. Select **Save** to update and save the notice.

## Delete a notice template

To delete an existing insider risk management notice template, complete the following steps:

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com), go to **Insider risk management** and select the **Notices** tab.
2. On the notice dashboard, select the notice you want to manage.
3. Select the **Delete** icon on the toolbar.
4. To delete the notice template, select **Yes** in the delete dialog. To cancel the deletion, select **Cancel**.
