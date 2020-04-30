---
title: Prepare Microsoft Threat Protection evaluation lab setup
description: Prepare stakeholder sign-off, timelines, environment considerations, and adoption order when setting up your Microsoft Threat Protection evaluation lab
keywords: MTP trial prep, deploy, prepare, stakeholder, timeline, environment, endpoint, server, management, adoption
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article 
---

# Prepare Microsoft Defender ATP deployment

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)




Deploying Microsoft Defender ATP is a three-phase process:

<br>
<table border="0" width="100%" align="center">
  <tr style="text-align:center;">
    <td align="center" style="width:25%; border:0;" bgcolor="#d5f5e3">
      <a href= "https://docs.microsoft.com/microsoft-365/security/mtp/prepare-mtpeval"> 
        <img src="../media/prepare.png" alt="Prepare your Microsoft Threat Protection evaluation lab" title="Prepare your Microsoft Threat Protection evaluation lab" />
      <br/>Phase 1: Prepare </a><br>
    </td>
     <td align="center"  >
      <a href="https://docs.microsoft.com/microsoft-365/security/mtp/setup-mtpeval">
        <img src="../media/setup.png" alt="Set up your Microsoft Threat Protection evaluation lab" title="Setup the Microsoft Threat Protection evaluation lab" />
      <br/>Phase 2: Set up </a><br>
        </td>
    <td align="center">
      <a href="https://docs.microsoft.com/microsoft-365/security/mtp/config-mtpeval">
        <img src="../media/onboard.png" alt="Configure each Microsoft Threat Protection pillar" title="Configure each Microsoft Threat Protection pillar" />
      <br/>Phase 3: Onboard</a><br>
</td>
  </tr>
  <tr>
    <td style="width:25%; border:0;">
   
    </td>
    <td valign="top" style="width:25%; border:0;">
    
</td>
    <td valign="top" style="width:25%; border:0;">

</td>    
  </tr>
</table>

You are currently in the preparation phase.


Preparation is key to any successful deployment. This section will guide you through what you need to consider as you prepare to create an evaluation lab for your Microsoft Threat Protection deployment.

## Prerequisites
Learn about the licensing, hardware and software requirements, and other configuration settings to provision and use Microsoft Threat Protection. See the minimum requirements for [Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/prerequisites?view=o365-worldwide), [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/minimum-requirements), [Office 365 ATP](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description), [Azure ATP](https://docs.microsoft.com/azure-advanced-threat-protection/atp-prerequisites), [Microsoft Cloud App Security](https://docs.microsoft.com/azure-advanced-threat-protection/atp-prerequisites).

## Stakeholders and sign-off
The following section serves to identify all the stakeholders that are involved in the project and who may need to sign-off, review, or stay informed, even for an evaluation or proof of concept dry-run.

>[!NOTE]
>Not all organizations might have the security organization maturity to have such roles. In such case, consult with your leadership team on review and approval accountabilities.

Add stakeholders
to the table below as appropriate for your organization.

-   SO = Sign-off on this project

-   R = Review this project and provide input

-   I = Informed of this project

| Name                 | Role                                                                                                                                                                                                          | Action |
|----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------|
| Enter name and email | **Chief Information Security Officer (CISO)** *An executive representative who serves as sponsor inside the organization for the new technology deployment.*                                                  | SO     |
| Enter name and email | **Head of Cyber Defense Operations Center (CDOC)** *A representative from the CDOC team in charge of defining how this change is aligned with the processes in the customers security operations team.*       | SO     |
| Enter name and email | **Security Architect** *A representative from the Security team in charge of defining how this change is aligned with the core Security architecture in the organization.*                         | R      |
| Enter name and email | **Workplace Architect** *A representative from the IT team in charge of defining how this change is aligned with the core workplace architecture in the organization.*                             | R      |
| Enter name and email | **Security Analyst** *A representative from the CDOC team who can provide input on the detection capabilities, user experience and overall usefulness of this change from a security operations perspective.* | I      |


## Configuration order
The table below indicates the order Microsoft recommends for configuring your Microsoft Threat Protection pillars for your evaluation lab deployment.

| Component                               | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Adoption Order Rank |
|-----------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
| Endpoint Detection & Response (EDR)     | Microsoft Defender ATP endpoint detection and response capabilities provide advanced attack detections that are near real-time and actionable. Security analysts can prioritize alerts effectively, gain visibility into the full scope of a breach, and take response actions to remediate threats. <br> [Learn more.](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/overview-endpoint-detection-response)                                                                                                                                                                                                                                             | 1                   |
|Threat & Vulnerability Management (TVM)|Threat & Vulnerability Management is a component of Microsoft Defender ATP, and provides both security administrators and security operations teams with unique value, including: <br> - Real-time endpoint detection and response (EDR) insights correlated with endpoint vulnerabilities <br> - Invaluable machine vulnerability context during incident investigations <br> -  Built-in remediation processes through Microsoft Intune and Microsoft System Center Configuration Manager <br> [Learn more](https://techcommunity.microsoft.com/t5/Windows-Defender-ATP/Introducing-a-risk-based-approach-to-threat-and-vulnerability/ba-p/377845).| 2 |
| Next Generation Protection (NGP)        | Microsoft Defender Antivirus is a built-in antimalware solution that provides next generation protection for desktops, portable computers, and servers. Windows Defender Antivirus includes: <br> -Cloud-delivered protection for near-instant detection and blocking of new and emerging threats. Along with machine learning and the Intelligent Security Graph, cloud-delivered protection is part of the next-gen technologies that power Windows Defender Antivirus.   <br> -  Always-on scanning using advanced file and process behavior monitoring and other heuristics (also known as "real-time protection"). <br> - Dedicated protection updates based on machine-learning, human and automated big-data analysis, and in-depth threat resistance research. <br> [Learn more](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10).                                                                                                                                                                                                                                                                                                                                                                       |3                   |
| Attack Surface Reduction (ASR)          | Attack surface reduction capabilities in Microsoft Defender ATP helps protect the devices and applications in the organization from new and emerging threats. <br> [Learn more.](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/overview-attack-surface-reduction)                                                                                                                                                                                                                                                                                                                                                                                       | 4                   |
| Auto Investigation & Remediation (AIR)  | Microsoft Defender ATP uses Automated investigations to significantly reduce the volume of alerts that need to be investigated individually. The Automated investigation feature leverages various inspection algorithms, and processes used by analysts (such as playbooks) to examine alerts and take immediate remediation action to resolve breaches. This significantly reduces alert volume, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. <br>[Learn more.](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection) | Not applicable      |
| Microsoft Threat Experts (MTE)          | Microsoft Threat Experts is a managed hunting service that provides Security Operation Centers (SOCs) with expert level monitoring and analysis to help them ensure that critical threats in their unique environments don't get missed. <br>[Learn more.](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/microsoft-threat-experts)                                                                                                                                                                                                                                                                                                                     | Not applicable      |

## Next step
|||
|:-------|:-----|
|![Phase 2: Setup & Onboard](../media/setup.png) <br>[Phase 2: Setup & Onboard](setup-mtpeval.md) | Set up Microsoft Threat Protection lab environment

