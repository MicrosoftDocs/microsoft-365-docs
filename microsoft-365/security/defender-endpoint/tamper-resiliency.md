# Protecting organizations from the impact of tampering

Tampering is the general term used to describe attackers attempts to impair the effectiveness of Microsoft Defender for Endpoint. The ultimate goal of attackers, is not to impact a single device, but rather to achieve their objective such as launching a ransomware attack.  As such, the anti-tampering capabilities of Microsoft Defender extend beyond preventing tampering of a single device, but detecting attacks and minimizing their impact. 

## Preventing tampering on a single device - Windows
The foundation of defense against tampering on a single device is having that device on-boarded to EDR, anti-virus signatures up to date, and having the device managed centrally via Intune or Security Settings Management. 

Beyond basic hygiene, attackers use a varierty of tampering techniques to disable Microsoft Defender for Endpoint on a single device.  Different techniques are preventing by different controls.

| Control | Technique Families |
|--- |---|
| Tamper protection | <ul><li>Terminating/suspending processes</li><li>Stopping/pausing/suspending services</li><li>Modifying registry settings including exclusions</li><li>Manipulating/hijacking DLLs</li><li>Manipulation/modification of the file system</li></ul> |
| Attack surface reduction rules | <ul><li>Kernel drivers - [Block abuse of exploted vulnerable signed drivers](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference?view=o365-worldwide#block-abuse-of-exploited-vulnerable-signed-drivers)</li></ul>|
| Windows Defender Application Control (WDAC) | <ul><li>Kernel drivers - [Microsoft recommended driver block rules](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules)</li></ul>|
| Windows operation system |<ul><li>Kernel drivers - [Microsoft vulnerable drivers block list](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules#microsoft-vulnerable-driver-blocklist)</li></ul>|

### Understanding the different ways to prevent driver based tampering

One of the most common techniques is for an attacker to use a driver that has a vulnerability, exploit it, and to gain access to the kernel.  This makes chosing which drivers to block complicated as they often are still used legitimately in many customer environment. To that end, Microsoft provides mechanisms for blocking drivers.


A known set of malicious drivers can be blocked from being loaded by Windows using the [Microsoft recommended driver blocklist](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules#microsoft-vulnerable-driver-blocklist).  This functionality in on by default. It is updated as part of operating system releases.  

Vulnerable drivers can be blocked from being loaded by Windows Defender Application Control (WDAC) using the [Vulnerable Driver blocklist XML](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-driver-block-rules#microsoft-vulnerable-driver-blocklist).  This list is updated more frequently.  WDAC provides an audit mode to help understand the impact of applying the policy in block mode to avoid accidentally impacting legitimate use.

Other malicious drivers can be blocked by using [WDAC to create a policy to block other drivers](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control-operational-guide). 

Exploited vulnerable and signed drivers can be blocked from being written to disk by Attack surface reduction rules (ASR) using the [Block abuse of exploited vulnerable signed drivers rule](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference?view=o365-worldwide#block-abuse-of-exploited-vulnerable-signed-drivers).  This list is updated more frequently, and like WDAC has an audit mode to avoid accidentally impacting legitimate use.

### Preventing tampering via exclusions

A common technique used by attackers is to make unauthorized changes to anti-virus exclusions.  Tamper protection prevents this from happening when

<ul><li>The device is being managed by Intune</li><li>The device has Disable Local Admin Merge enabled</li></ul>

Attackers can be thwarted from using an existing anti-virus exclusion by enabling HideLocalAdminExclusions.  

## Detecting tampering 

When tamper protection is enabled, and a tampering attempt is blocked, an alert is raised in [Microsoft 365 Defender portal](https://review.learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/faqs-tamper-protection?view=o365-worldwide&branch=tamper-protect-exclusions#if-the-status-of-tamper-protection-changes-are-alerts-shown-in-the-microsoft-365-defender-portal).

When the abuse of exploited vulnerable or signed driver ASR rule is triggered, this can be seen in the [ASR Report](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-report?view=o365-worldwide) as well as in [Advanced Hunting](https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-deployment-operationalize?view=o365-worldwide#asr-rules-advanced-hunting)

When WDAC is enabled, the [block and audit activity can be seen in Advanced Hunting](https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/querying-application-control-events-centrally-using-advanced-hunting)


