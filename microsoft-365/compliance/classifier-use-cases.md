---
title: "Three use case scenarios for trainable classifiers (preview)"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: None
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Trainable classifiers can be used with sensitivity labels, retention labels and communication compliance scenarios."
---

# Three use case scenarios for trainable classifiers (preview)

You can use trainable classifiers as a condition for 

- [auto-labeling for Office apps](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps)
- [retention label policies](labels.md#applying-a-retention-label-automatically-based-on-conditions)
- [communication compliance](communication-compliance-configure.md)

## Licensing requirements

Trainable classifiers are a Microsoft 365 E5, or E5 Compliance feature. You must have one of these subscriptions to make use of them.

## pre-requisites

For trainable classifiers
- Global admin needs to opt in for the tenant
- Compliance admin role or Compliance Data Administrator is required to train a classifier

For the use case scenarios
- **Retention label policy scenario**: RecordManagement and Retention Management roles 
- **Sensitivity label policy scenario**: Security Administrator, Compliance Administrator, Compliance Data Administrator
- **Communication compliance policy scenario**: Insider Risk Management Admin, Supervisory Review Administrator 


For more information on trainable classifiers, see [Getting started with trainable classifiers (preview)](classifier-getting-started-with.md).



## Use a trainable classifier as a condition in retention label policies

1. Sign in to Microsoft 365 compliance center with compliance admin or security admin role access and open **Microsoft 365 compliance center** > **Records management (preview)** > **Label policies** tab.

4. Choose `Auto-apply a label`.

5. Choose `Choose a label to auto-apply`.

6. Choose `Create new labels` and create a label for use. Set `Retention` to your desired setting`off`. For example, you can create a retention label named "SourceCode classifier test" with no actions, and then auto-apply that retention label to content that has Source code classifier as a condition. To learn more about creating retention labels, see [Overview of retention labels](labels.md).
  
7. Choose `Auto-apply a label` and then `Choose a label to auto-apply`. To learn more about using condition based auto-apply a label see, [auto-apply retention label policy based on a condition](labels.md#applying-a-retention-label-automatically-based-on-conditions).

8. Choose your test label from the list and choose `Next`.

9. Choose `Apply label to content that matches a trainable classifier`.

![selecting classifier as a condition](../media/classifier-pre-trained-apply-label-match-trainable-classifier.png).

10. Choose your classifier from the list, in this case `Source Code`

11. Name the policy, for example "Source code built-in classifier test".

12. Choose `Let me choose specific locations`.

13. Turn off all locations except `SharePoint sites` and choose `Choose sites`.

14. Enter the URL for the site for the site.

15. Finish the wizard and choose `Auto-apply`

16. Place the test items into the dedicated SharePoint Online folder.

17. Allow an hour for the label to be applied.

18. Check the properties of the documents for the label to see if the classifier included and excluded the content as you expected.

19. Review the items that were labeled.

## Use trainable classifiers as a condition in sensitivity label polices

This scenario is fully documented in [auto-labeling for Office apps](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps).

## Use trainable classifiers as a condition in  communication compliance policies 



See also:

- [Getting started with trainable classifiers (preview)](classifier-getting-started-with.md)
- [Overview of retention labels](labels.md)
- [Auto-apply retention label policy based on a condition](labels.md#applying-a-retention-label-automatically-based-on-conditions)
