# Protecting organizations from the impact of tampering

Tampering is the general term used to describe attackers attempts to impair the effectiveness of Microsoft Defender for Endpoint. The ultimate goal of attackers, is not to impact a single device, but rather to achieve their objective such as launching a ransomware attack.  As such, the anti-tampering capabilities of Microsoft Defender for Endpoint extend beyond preventing tampering of a single device, but detecting attacks and minimizing their impact. 

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://learn.microsoft.com/en-us/microsoft-365/security/defender/microsoft-365-defender?view=o365-worldwide)
- [Microsoft Defender for Business](https://learn.microsoft.com/en-us/microsoft-365/security/defender-business/mdb-overview?view=o365-worldwide)


## Organization wide tamper resiliency is built on Zero Trust

The foundation for defending against tampering is following a [Zero Trust](https://learn.microsoft.com/en-us/windows/security/zero-trust-windows-device-health) model.   

<ul>
<li>Follow the best practice of least privlege. See <a href="https://learn.microsoft.com/en-us/windows/security/identity-protection/access-control/access-control">Access Control Overview for Windows</a></li>
<li>Configure <a href="https://learn.microsoft.com/en-us/azure/active-directory/conditional-access/overview">conditional access</a> to keep untrusted users and devices isolated.
</li>
</ul>

In order to provide an effective defense against tampering, devices needs to be healthy:

<ul>
<li><a herf="https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/onboard-configure?view=o365-worldwide">On boarded to Microsoft Defender for Endpoint</a></li>
<li><a hre="https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-updates?view=o365-worldwide">Have up-to-date anti-virus signatures</a></li>
<li>Centrally managed preferably by <a href="https://learn.microsoft.com/en-us/mem/intune/protect/advanced-threat-protection-configure">Intune</a>, <a href="https://learn.microsoft.com/en-us/mem/intune/protect/mde-security-integration?view=o365-worldwide">Microsoft Defender for Endpoint Security Configuration Management</a>, or <a href="https://learn.microsoft.com/en-us/mem/configmgr/protect/deploy-use/endpoint-protection-configure">Security Configuration Manager</a></li>
</ul>

> [!NOTE]
> On Windows, Microsoft Defender Antivirus can be also be managed via Group Policy, WMI, and PowerShell cmdlets. These methods are more susceptible to tampering than using Microsoft Intune or Microsoft Configuration Manager or Microsoft Defender for Endpoint Security Configuration Management. 

>[!NOTE]
> When using GPO, please consider [disabling local overrides for Microsoft Defender Antivirus settings](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/configure-local-policy-overrides-microsoft-defender-antivirus?view=o365-worldwide#configure-local-overrides-for-microsoft-defender-antivirus-settings) and [disabling local list merging](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/configure-local-policy-overrides-microsoft-defender-antivirus?view=o365-worldwide#configure-how-locally-and-globally-defined-threat-remediation-and-exclusions-lists-are-merged)


The health of [anti-virus](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/device-health-microsoft-defender-antivirus-health?view=o365-worldwide) and [sensor](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/device-health-sensor-health-os?view=o365-worldwide) are avaialable in the [device health reports in Microsoft Defender for Endpoint](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/device-health-reports?view=o365-worldwide). 


## Preventing tampering on a single device

Beyond basic hygiene, attackers use a varierty of tampering techniques to disable Microsoft Defender for Endpoint on a single device.  Different techniques are preventing by different controls on different operating systems.

| Control | OS | Technique Families |
|--- |---| ---|
| [Tamper protection](https://review.learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection?view=o365-worldwide&branch=tamper-protect-exclusions) | Windows | <ul><li>Terminating/suspending processes</li><li>Stopping/pausing/suspending services</li><li>Modifying registry settings including exclusions</li><li>Manipulating/hijacking DLLs</li><li>Manipulation/modification of the file system</li><li>Agent integrity</li></ul> |
| [Tamper protection](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/tamperprotection-macos?view=o365-worldwide) | Mac | <ul><li>Terminating/suspending processes</li><li>Manipulation/modification of the file system</li><li>Agent integrity</a></ul>|
|Attack surface reduction rules | Windows | <ul><li>Kernel drivers - [Block abuse of exploted vulnerable signed drivers](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference?view=o365-worldwide#block-abuse-of-exploited-vulnerable-signed-drivers)</li></ul>|
| Windows Defender Application Control (WDAC) | Windows |<ul><li>Kernel drivers - [Microsoft recommended driver block rules](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules)</li></ul>|
| Windows operating system | - | <ul><li>Kernel drivers - [Microsoft vulnerable drivers block list](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules#microsoft-vulnerable-driver-blocklist)</li></ul>|


## Understanding the different ways to prevent driver based tampering on Windows

One of the most common techniques is for an attacker to use a driver that has a vulnerability, exploit it, and to gain access to the kernel.  This makes chosing which drivers to block complicated as they often are still used legitimately in many customer environment. To that end, Microsoft provides mechanisms for blocking drivers.


A known set of malicious drivers can be blocked from being loaded by Windows using the [Microsoft recommended driver blocklist](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules#microsoft-vulnerable-driver-blocklist).  This functionality in on by default. It is updated as part of operating system releases.  

Vulnerable drivers can be blocked from being loaded by Windows Defender Application Control (WDAC) using the [Vulnerable Driver blocklist XML](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules#microsoft-vulnerable-driver-blocklist).  This list is updated more frequently.  WDAC provides an audit mode to help understand the impact of applying the policy in block mode to avoid accidentally impacting legitimate use.

Other malicious drivers can be blocked by using [WDAC to create a policy to block other drivers](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-operational-guide). 

Exploited vulnerable and signed drivers can be blocked from being written to disk by Attack surface reduction rules (ASR) using the [Block abuse of exploited vulnerable signed drivers rule](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference?view=o365-worldwide#block-abuse-of-exploited-vulnerable-signed-drivers).  This list is updated more frequently, and like WDAC has an audit mode to avoid accidentally impacting legitimate use.

## Preventing tampering via exclusions - Windows

A common technique used by attackers is to make unauthorized changes to anti-virus exclusions.  Tamper protection prevents this from happening when

<ul><li>The device is being managed by Intune</li><li>The device has <a href="https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/configure-local-policy-overrides-microsoft-defender-antivirus?view=o365-worldwide#use-microsoft-intune-to-disable-local-list-merging">Disable Local Admin Merge enabled</a></li></ul>

For more details see - [Tamper protection for anti-virus exclusions](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/manage-tamper-protection-intune?view=o365-worldwide#tamper-protection-for-antivirus-exclusions)

<li>Attackers can be preventing from discovering existing anti-virus exclusion by enabling <a href="https://learn.microsoft.com/en-us/windows/client-management/mdm/defender-csp#configurationhideexclusionsfromlocaladmins">HideExclusionsFromLocalAdmin</a></li></ul>  



## Detecting potential tampering activity is the Microsoft 365 Defender portal 

When tampering is detected, an alert is raised with one one the following titles:

<ul>
<li>Possible Antimalware Scan Interface (AMSI) tampering</li>
<li>Potential attempt to tamper with MDE via drivers</li>
<li>Tamper Protection bypass</li>
</ul>

If the abuse of exploited vulnerable or signed driver ASR rule is triggered, this can be seen in the [ASR Report](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-report?view=o365-worldwide) as well as in [Advanced Hunting](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-deployment-operationalize?view=o365-worldwide#asr-rules-advanced-hunting)

If WDAC is enabled, the [block and audit activity can be seen in Advanced Hunting](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/querying-application-control-events-centrally-using-advanced-hunting)




