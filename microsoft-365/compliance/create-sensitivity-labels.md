---
title: "Create and publish sensitivity labels"
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection:
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: "Instructions to create, configure, and publish sensitivity labels to classify and protect your organization's documents and emails."
---

# Create and configure sensitivity labels and their policies

To create and publish your [sensitivity labels](sensitivity-labels.md), go to your labeling admin center, such as the [Microsoft 365 compliance center](https://compliance.microsoft.com/). You can also use the Microsoft 365 security center, or the Office 365 Security & Compliance Center.

First, create and configure the sensitivity labels that you want to make available in Office apps and for services. Then, create one or more label policies that contain the labels and policy settings that you configure. It's the label policy that publishes the labels and settings for your chosen users and locations.

## Create and configure sensitivity labels

1. In your labeling admin center, navigate to sensitivity labels:
    
    - Microsoft 365 compliance center: 
        - **Solutions** > **Information protection (preview)** 
        If you don't immediately see this option, first select **Show all**. 
    
    - Microsoft 365 security center: 
        - **Classification** > **Sensitivity labels**
    
    - Office 365 Security & Compliance Center:
        - **Classification** > **Sensitivity labels**

2. On the **Labels** tab, select **+ Create a label** to start the **New sensitivity label** wizard.

3. Follow the prompts for the label settings.
    
    For more information about the label settings, see [What sensitivity labels can do](sensitivity-labels.md#what-sensitivity-labels-can-do) from the overview information.

4. Repeat these steps to create more labels. However, if you want to create a sublabel, first select the parent label and select **...** for **More actions**, and then select **Add sub label**.

5. When you have created all the labels you need, review their order and if necessary, move them up or down. To change the order of a label, select **...** for **More actions**, and then select **Move up** or **Move down**. For more information, see [Label priority (order matters)](sensitivity-labels.md#label-priority-order-matters) from the overview information.

To edit an existing label, select it, and then select **Edit label**. This starts the **Edit sensitivity label** wizard, which lets you change all the label settings in step 3. If the label is already published by using a label policy, no extra steps are needed, but allow up to 24 hours for the changes to replicate to users and locations.

Until you publish your labels, they won't be available to select in apps or for services. To publish the labels, they must be added to a label policy.

### Additional label settings with Office 365 Security & Compliance Center PowerShell

Additional label settings are available with the [Set-Label](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/set-label?view=exchange-ps) cmdlet from [Office 365 Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/office-365-scc/office-365-scc-powershell?view=exchange-ps).

For example, use the the *LocaleSettings* parameter to specify different languages for your label names and tooltips. 

Using this cmdlet, you can also specify [advanced settings](https://docs.microsoft.com/azure/information-protection/rms-client/clientv2-admin-guide-customizations) for the Azure Information Protection unified labeling client. These advanced settings include setting a label color, and applying a custom property when a label is applied. For the full list, see [Available advanced settings for label policies](https://docs.microsoft.com/azure/information-protection/rms-client/clientv2-admin-guide-customizations#available-advanced-settings-for-label-policies). 

## Publish sensitivity labels by creating a label policy

1. In your labeling admin center, navigate to **Classification** > **Sensitivity labels**.

2. Select the **Label policies** tab.

3. Select **Publish labels** to start the **Create policy wizard**.

4. Select **Choose sensitivity labels to publish**. Select the labels that you want to make available in apps and to services, and then select **Add**.

5. Review the selected labels and to make any changes, select **Edit**. Otherwise, select **Next**.

6. Follow the prompts to configure the policy settings.
    
    For more information about the settings, see [What label policies can do](sensitivity-labels.md#what-label-policies-can-do) from the overview information.

7. Repeat these steps if you need different policy settings for different users or locations. For example, you want additional labels for a group of users, or a different default label for a subset of users.

8. If you create more than one label policy that might result in a conflict for a user or location, review the policy order and if necessary, move them up or down. To change the order of a label policy, select **...** for **More actions**, and then select **Move up** or **Move down**. For more information, see [Label policy priority (order matters)](sensitivity-labels.md#label-policy-priority-order-matters) from the overview information.

Completing the wizard automatically publishes the label policy. To make changes to a published policy, simply edit it. There is no specific publish or republish action for you to select.

To edit an existing label policy, select it, and then select **Edit Policy**. This starts the **Create policy** wizard, which lets you edit which labels are included and the label settings. When you complete the wizard, any changes are automatically replicated to the selected users and locations. Allow up to 24 hours for the replication to complete.

### Additional label policy settings with Office 365 Security & Compliance Center PowerShell

Additional label policy settings are available with the [Set-Label](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/set-label?view=exchange-ps) cmdlet from [Office 365 Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/office-365-scc/office-365-scc-powershell?view=exchange-ps).

Using this cmdlet, you can specify [advanced settings](https://docs.microsoft.com/azure/information-protection/rms-client/clientv2-admin-guide-customizations) for the Azure Information Protection unified labeling client. These advanced settings include setting a different default label for Outlook, and implement pop-up messages in Outlook that warn, justify, or block emails being sent. For the full list, see [Available advanced settings for labels](https://docs.microsoft.com/azure/information-protection/rms-client/clientv2-admin-guide-customizations#available-advanced-settings-for-labels). 

You can also use this cmdlet to add and remove labels to and from a label policy.


## Next steps

To configure and use your sensitivity labels for specific scenarios, see the following articles:

- [Restrict access to content by using encryption in sensitivity labels](encryption-sensitivity-labels.md)

- [Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md)

- [Use sensitivity labels with teams, groups, and sites](sensitivity-labels-teams-groups-sites.md)

- [Enable sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md)

To monitor how your labels are being used, see [View label usage with label analytics](label-analytics.md).