---
title: "Step 4: Deploying Office 365 ProPlus"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 01/29/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Understand the process of deploying Office 365 ProPlus.
---

# Step 4: Deploying Office 365 ProPlus

In your physical deployment of Office 365 ProPlus, no matter which deployment methodology you use, make sure to follow these best practices.

## Lab Testing

Before you deploy any software package on an enterprise scale, lab testing is a must. Start with the generic procedures that Microsoft has provided and then, through repeated test runs, modify them so that they are customized for your production environment. This is also the environment in which you should perform your application compatibility testing. Refer to the [Readiness Toolkit](https://docs.microsoft.com/DeployOffice/use-the-readiness-toolkit-to-assess-application-compatibility-for-office-365-pro) for more information.

A good rule of thumb that you can use to test whether you are ready to move to a pilot deployment is if you can complete multiple deployments to each type of device following the procedures you have developed and not have to make any additional changes. Don't dismantle your lab, as any anomalies or issues that you discover in the pilot phase may be best tested in the lab.

Reproduce the relevant portions of the configuration of your production environment as closely as possible. You don't have to reproduce capacity.  Remember to include these aspects: 

- Networking: IP addressing scheme, Internet connectivity, firewalls, and ports
- Address and name infrastructure: DHCP, DNS, Windows Server AD
- File and cloud storage
- Identity/security: Accounts, groups, group policy, permissions, any other access controls to resources that will be used during the deployment
- Deployment tools: System Center Configuration Manager 2012 R2 or Configuration Manager (current branch) (if you have these in your existing production environment), other third-party software deployment tools
- Target Device Hardware: Ideally one of each type with the identical hardware and software configuration as in your production environment
- Installed client applications: This is critical for doing application compatibility testing

## Pilot Testing

In pilot testing, you take the deployment procedures that you've developed in your lab and use them to perform targeted and limited deployments in your production environment. It is inevitable that you will encounter issues in your production environment that could not be anticipated in your lab environment. You'll need to make changes to your procedures based on the issues and workarounds you discovered during your pilot testing phase. You've probably already done many software deployment pilots and have your own well-established criteria and procedures. If you don't here are some general guidelines that you can use for planning your pilot testing.

## Define what success looks like

In addition to getting the Office 365 ProPlus applications deployed, one of the main goals of a software deployment pilot is to build expertise and confidence in the administrators who are doing the deployment, the IT staff who will be supporting it, and the end users who will be using the Office 365 ProPlus applications to do their daily jobs. Keep these three job roles in mind as you plan your pilot deployment success criteria and get feedback from them frequently. If any of these three job roles lacks the expertise and confidence that is needed to play their role in the deployment, your pilot will not be successful, and broader adoption may be delayed.

## Identify job roles and users for the pilot

When you're selecting users for your pilot groups, make sure you get representatives from all of the job roles in your organization. This ensures that your deployment procedures will be thoroughly vetted against the landscape of your organization before you move to a broader deployment.

For the very first users in your pilot, look for people who are eager to participate and who are not afraid to try new things. These people don't need to have deep technical experience, in fact, you might be better off if they don't. You'll probably learn more and make more improvements to your deployment procedures by listening to this group.

## Train end-users, helpdesk staff, and administrators

Evaluate how much training is needed for each of the groups. The greater the change or the delta between their current production environment and what you are moving them to, the more training they are likely to need. Look for training in different modalities and that take up differing amounts of time. Some people may prefer to read, others watch a video, and still others might need instructor-led training. For some training options, see the [Office 365 Training Center](https://support.office.com/office-training-center).

Consider additional training as an investment for the very first group so that later they can act as trainers for those who follow.

## Feedback and revisions

As you progress through and complete the pilot tasks for each of your target groups. Be sure to get feedback from the participants and update your deployment procedures. Accordingly. Also, be sure to record any changes to the procedures that were necessary in order to successfully deploy.

## Next step

[Office 365 ProPlus infrastructure exit criteria](office365proplus-exit-criteria.md)
