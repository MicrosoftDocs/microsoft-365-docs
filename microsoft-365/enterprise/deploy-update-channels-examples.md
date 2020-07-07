---
title: "Deployment and update channel example configurations"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 07/07/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- Strat_O365_Enterprise
- M365-subscription-management
ms.custom:

description: How example organizations deploy and update using channels.
---

# Deployment and update channel example configurations

Choosing which update channels to use for Office, Windows, and Edge can depend on your type of organization and where on the development cycle you want to be deploying and using new features and capabilities. Find the pre-release and production channels that best fit your needs.

## Pre-release channels

| Customer/Channel Offering | Windows | Microsoft 365 Apps for Windows | Edge | Teams |
|:-------|:-------|:-----|:-------|:-------|
| 1. Right for highly technical users and developers. ​<br><br> Be the first to access the latest builds earliest in the development cycle with the newest code. ​<br><br> There will be rough edges and some instability. ​  | Dev | N/A | [Canary Channel](https://docs.microsoft.com/deployedge/microsoft-edge-channels#canary-channel) | N/A |
| 2. Right for early adopters and IT Pros who want more reliable builds that are still in development. ​<br><br> See what’s coming up next and help validate new features.  | Beta Channel | Beta Channel | [Dev Channel](https://docs.microsoft.com/deployedge/microsoft-edge-channels#dev-channel) | Beta Channel |
| 3. Right for those who want early access to upcoming releases. ​<br><br> Where companies preview and validate upcoming releases before broad deployment. ​<br><br> These are supported. <br>  | Release Preview | Current Channel (Preview) <br><br> Semi-Annual Enterprise Channel (Preview)| [Beta Channel](https://docs.microsoft.com/deployedge/microsoft-edge-channels#beta-channel) | Private Preview <br> <br> Public Preview (can also be used by Teams developers) |
||||||

## Production channels for broad deployment

Click the link in the **Example** column to step through deployment stages and groups for an example organization.

| Customer/Channel Offering | Windows | Microsoft 365 Apps for Windows | Edge | Teams | Example |
|:-------|:-------|:-----|:-------|:-------|:-------|
| 1. Right for customers who want the latest releases as soon as they are ready. | Semi-Annual Channel | [Current Channel](https://docs.microsoft.com/deployoffice/overview-update-channels#current-channel-overview) | [Stable Channel](https://docs.microsoft.com/deployedge/microsoft-edge-channels#stable-channel) | ? | [Latest releases](deploy-update-channels-examples-rapid-deploy.md) |
| 2. Right for enterprises who want the latest release with additional predictability. | Semi-Annual Channel | [Monthly Enterprise Channel](https://docs.microsoft.com/deployoffice/overview-update-channels#monthly-enterprise-channel-overview) | N/A | N/A | Regular schedule (article to be written) |
| 3. Right for enterprises with need for extensive IT testing before each update. | Semi-Annual Channel | [Semi-Annual Enterprise Channel](https://docs.microsoft.com/deployoffice/overview-update-channels#semi-annual-enterprise-channel-overview) | N/A | N/A | Highly vetted (article to be written) |
|||||||


## See also

[Deployment guide](deploy-microsoft-365-enterprise.md)

[Test lab guides](m365-enterprise-test-lab-guides.md)

<!--


## Table 1: Scenario framing

Follow the **I am** and **who wants** columns to determine the set of channels that best fits your needs, and then click the link in the **How to** column for more details.

| I am... | who wants... | Windows | Microsoft 365 Apps for Windows | Edge | Teams | How to |
|:-------|:-----|:-------|:-----|:-------|:-------|:-------|
| 1. A highly technical user or developer | To be the first to access the latest builds earliest in the development cycle with the newest code. | Dev | N/A | [Canary Channel](https://docs.microsoft.com/deployedge/microsoft-edge-channels#canary-channel)? | N/A |  |
| 2. An early adopter or IT Pro  | More reliable builds that are still in development. <br><br>  To see what’s coming up next and help validate new features. | Beta Channel | Beta Channel | [Dev Channel](https://docs.microsoft.com/deployedge/microsoft-edge-channels#dev-channel)? | Beta Channel |  |
| 3. An early adopter or IT Pro | Early access to upcoming releases. | Preview (Release) Channel | Office Preview (Current Channel) | [Beta Channel](https://docs.microsoft.com/deployedge/microsoft-edge-channels#beta-channel)? | Preview  Channel (Private/Public) | |
| 4. An enterprise IT Pro | To broadly deploy the latest releases as soon as they are available. | Semi-annual Channel | Current Channel | [Stable Channel](https://docs.microsoft.com/deployedge/microsoft-edge-channels#beta-channel)? | ? | [Latest release](deploy-update-channels-examples-rapid-deploy.md) |
| 5. An enterprise IT Pro | To broadly deploy the latest release on a predictable schedule. | Semi-annual Channel | Monthly Enterprise Channel | N/A | N/A | Regular schedule |
| 6. An enterprise IT Pro | To broadly deploy after extensive internal testing. | Semi-annual Channel | Semi-Annual Enterprise Channel | N/A | N/A | Highly vetted |
||||||||

## Table 2: From spec document



Follow the **I am** and **who wants** columns to determine the set of channels that best matches your needs, and then click the link in the **How to** column for more details.

| I am... | who wants... | Windows channel | Office channel | Teams channel | Edge channel | How to |
|:-------|:-----|:-------|:-------|:-----|:-------|:-------|
| A Microsoft Edge app developer | to see what I was working on yesterday. | N/A | N/A | N/A | Canary | [Edge Carnary channel](https://docs.microsoft.com/deployedge/microsoft-edge-channels#canary-channel)  |
| A highly technical user or Edge app developer | early access to the latest build. | Dev | N/A  | N/A | Dev |   |
| An end user, an early adopter, a fan, or an IT professional  | early access to a build for functionality testing. | Beta | Beta | N/A | Beta |   |
| An enterprise IT department | to evaluate the latest preview before broad deployment. | Preview (Release)  | Preview (Current or Semi-Annual Enterprise)  | Ring 4 | N/A  |
| A consumer, small to medium business, or an enterprise organization | a broad and rapid deployment. |  Semi-Annual | Current | N/A | Stable | [Rapid deployment example](deploy-update-channels-examples-rapid-deploy.md) |
| An enterprise organization | a broad deployment with additional predictability. | Semi-Annual | Monthly Enterprise | N/A | N/A |   |
| An enterprise organization | a broad deployment with extensive IT testing before each update. | Semi-Annual | Semi-Annual Enterprise | N/A | N/A |   |
||||||||


Here are the latest channel names.

| New channel name | Previous channel name |
|:-------|:-----|
| Beta | Insider |
| Preview (Release)) | Monthly Channel (Targeted) |
| Semi-Annual Enterprise Channel | Semi-Annual Channel |
| Semi-Annual Enterprise Channel (Preview) | Semi-Annual Channel (Targeted) |
| Monthly Enterprise Channel | N/A |
| Current Channel | Monthly Channel |
|||

See if your organization matches one of these customer types, then follow the link to the example for more details.

Follow the **I am** and **who wants** columns to determine the set of channels that best matches your needs, and then click the link in the **How to** column for more details.

| I am... | who wants... | Windows channel | Office channel | Edge channel | How to |
|:-------|:-----|:-------|:-------|:-----|:-------|
| A Microsoft Edge app developer | to see what I was working on yesterday | N/A | N/A | Canary | [Edge Carnary channel](https://docs.microsoft.com/deployedge/microsoft-edge-channels#canary-channel)  |
| A highly technical user or Edge app developer | early access to the latest build. | Dev | N/A  | Dev |   |
| An end user, an early adopter, a fan, or an IT professional  | early access to a build for functionality testing. | Beta | Beta | Beta |   |
| An enterprise IT department | to evaluate the latest preview before broad deployment. | Preview (Release)  | Preview (Current or Semi-Annual Enterprise)  | N/A |   |
| A consumer, small to medium business, or an enterprise organization | a broad and rapid deployment. |  Semi-Annual | Current | Stable | [Rapid deployment example](deploy-update-channels-examples-rapid-deploy.md) |
| An enterprise organization | a broad deployment with additional predictability. | Semi-Annual | Monthly Enterprise | N/A |   |
| An enterprise organization | a broad deployment with extensive IT testing before each update. | Semi-Annual | Semi-Annual | N/A |   |
|||||||

--> 

<!--

| Customer type | Description | Products and their channels |
|:-------|:-----|:-------|
| Early adopter or insider <br> <br> See the insider deployment example.  | These organizations are eager to try out new capabilities early in the release cycle and report their early adoption feedback to Microsoft. | **Office:** <br><ul><li>Beta</li><li>Current Channel (Preview)</li></ul>  **Windows:** <br><ul><li>Dev</li><li>Beta</li></ul> **Edge:** <ul><li>Dev</li><li>Beta</li></ul>|
| Consumer fans, small and medium businesses, and some enterprises who want rapid deployment of the newest supported features <br> <br> See the [rapid deployment example](deploy-update-channels-examples-rapid-deploy.md). | These organizations want the latest supported changes and to take advantage of the  new capabilities for their users and to report their feedback to Microsoft. | **Office:** <ul><li> Current Channel </li></ul> **Windows:** <ul><li> N/A </li></ul> **Edge:** <ul><li> Stable </li></ul>|
| Enterprises who need a stable and predictable cadence to their updates <br><br> See the broad deployment example.  | These organizations want to ensure that the changes they roll out to customers are fully supported and whose deployment will have minimaly impact to their employees. |  **Office:** <ul><li> Monthly Enterprise Channel </li><li> Semi-Annual Enterprise Channel (Preview) </li><li> Semi-Annual Enterprise Channel </li></ul> **Windows:** <br><ul><li> Release Preview </li><li> Semi-Annual Channel </li></ul> **Edge:** <ul><li>Stable (deferred) </li></ul> |
||||

--> 
