---
title: Microsoft Secure Score for Devices
description: Your score for devices shows the collective security configuration state of your devices across application, operating system, network, accounts, and security controls.
keywords: Microsoft Secure Score for Devices, Microsoft Defender for Endpoint Microsoft Secure Score for Devices, secure score, configuration score, threat and vulnerability management, security controls, improvement opportunities, security configuration score over time, security posture, baseline
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---
# Microsoft Secure Score for Devices

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-pullalerts-abovefoldlink) 


>[!NOTE]
> Configuration score is now part of threat and vulnerability management as Microsoft Secure Score for Devices.

Your score for devices is visible in the [threat and vulnerability management dashboard](tvm-dashboard-insights.md) of the Microsoft Defender Security Center. A higher Microsoft Secure Score for Devices means your endpoints are more resilient from cybersecurity threat attacks. It reflects the collective security configuration state of your devices across the following categories:

- Application
- Operating system
- Network
- Accounts
- Security controls

Select a category to go to the [**Security recommendations**](tvm-security-recommendation.md) page and view the relevant recommendations.

## Turn on the Microsoft Secure Score connector

Forward Microsoft Defender for Endpoint signals, giving Microsoft Secure Score visibility into the device security posture. Forwarded data is stored and processed in the same location as your Microsoft Secure Score data.

Changes might take up to a few hours to reflect in the dashboard.

1. In the navigation pane, go to **Settings** > **Advanced features** 

2. Scroll down to **Microsoft Secure Score** and toggle the setting to **On**.

3. Select **Save preferences**.

## How it works

>[!NOTE]
> Microsoft Secure Score for Devices currently supports configurations set via Group Policy. Due to the current partial Intune support, configurations which might have been set through Intune might show up as misconfigured. Contact your IT Administrator to verify the actual configuration status in case your organization is using Intune for secure configuration management.

The data in the Microsoft Secure Score for Devices card is the product of meticulous and ongoing vulnerability discovery process. It is aggregated with configuration discovery assessments that continuously:

- Compare collected configurations to the collected benchmarks to discover misconfigured assets
- Map configurations to vulnerabilities that can be remediated or partially remediated (risk reduction)
- Collect and maintain best practice configuration benchmarks (vendors, security feeds, internal research teams)
- Collect and monitor changes of security control configuration state from all assets

## Improve your security configuration

Improve your security configuration by remediating issues from the security recommendations list. As you do so, your Microsoft Secure Score for Devices improves and your organization becomes more resilient against cybersecurity threats and vulnerabilities.

1. From the Microsoft Secure Score for Devices card in the threat and vulnerability management dashboard, select the one of the categories. You'll view the list of recommendations related to that category. It will take you to the [**Security recommendations**](tvm-security-recommendation.md) page. If you want to see all security recommendations, once you get to the Security recommendations page, clear the search field.

2. Select an item on the list. The flyout panel will open with details related to the recommendation. Select **Remediation options**.

   ![Security controls related security recommendations](images/tvm_security_controls.png)

3. Read the description to understand the context of the issue and what to do next. Select a due date, add notes, and select **Export all remediation activity data to CSV** so you can attach it to an email for follow-up.

4. **Submit request**. You'll see a confirmation message that the remediation task has been created.
   ![Remediation task creation confirmation](images/tvm_remediation_task_created.png)

5. Save your CSV file.
   ![Save csv file](images/tvm_save_csv_file.png)

6. Send a follow-up email to your IT Administrator and allow the time that you've allotted for the remediation to propagate in the system.

7. Review the **Microsoft Secure Score for Devices** card again on the dashboard. The number of security controls recommendations will decrease. When you select **Security controls** to go back to the **Security recommendations** page, the item that you've addressed won't be listed there anymore. Your Microsoft Secure Score for Devices should increase.

>[!IMPORTANT]
>To boost your vulnerability assessment detection rates, download the following mandatory security updates and deploy them in your network:
>- 19H1 customers | [KB 4512941](https://support.microsoft.com/help/4512941/windows-10-update-kb4512941)
>- RS5 customers | [KB 4516077](https://support.microsoft.com/help/4516077/windows-10-update-kb4516077)
>- RS4 customers | [KB 4516045](https://support.microsoft.com/help/4516045/windows-10-update-kb4516045)
>- RS3 customers | [KB 4516071](https://support.microsoft.com/help/4516071/windows-10-update-kb4516071)
>
>To download the security updates:
>1. Go to [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/home.aspx).
>2. Key-in the security update KB number that you need to download, then click **Search**.  

## Related topics

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Dashboard](tvm-dashboard-insights.md)
- [Exposure score](tvm-exposure-score.md)
- [Security recommendations](tvm-security-recommendation.md)
