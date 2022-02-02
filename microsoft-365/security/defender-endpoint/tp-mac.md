Pre-requisites 

-   Supported macOS versions: Monterey (12), Big Sur (11), Catalina (10.15+) 

-   Minimum required version for Defender for Endpoint: 101.49.25 

-   Familiarity with Microsoft Defender for Endpoint’s [<u>onboarding process</u>](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint-mac) 

<!-- -->

-   You received our invite to this private preview from the Microsoft Defender for Endpoint team 

 

 

**Highly recommended settings:** 

1.  **System Integrity Protection (SIP) enabled** 

<!-- -->

1.  **Mobile device management (MDM) to configure Microsoft Defender for Endpoint** 

 

Configure Tamper Protection on your test devices: 

 

There are several ways you can configure tamper protection: 

-   Manual configuration 

-   JAMF 

-   Intune 

 

**Before you begin** 

Verify that “tamper_protection” is set to “disabled”.  

(This is a very important step in this process) 

 

 

> <img src="c:\microsoft-365-docs-pr\microsoft-365\security\defender-endpoint/media/image1.png" style="width:5.66181in;height:5.29167in" alt="Text Description automatically generated" /> 
>
>  

 

Page Break 

 

1.  **Manual configuration** 

> Use the following command: 

 

> *sudo mdatp config tamper-protection enforcement-level --value block* 
>
> <img src="c:\microsoft-365-docs-pr\microsoft-365\security\defender-endpoint/media/image2.png" style="width:6.5in;height:0.70486in" /> 
>
> **Note: If you use manual configuration to enable tamper protection, you can also disable tamper protection manually at any time. For example, you can revoke Full Disk Access from Defender in System Preferences manually. You must use MDM instead of manual configuration to prevent a local admin from doing that.** 
>
> **  ** 
>
>  
>
> The result should look like this: 
>
> <img src="c:\microsoft-365-docs-pr\microsoft-365\security\defender-endpoint/media/image3.png" style="width:5.69306in;height:5.34931in" alt="Text Description automatically generated" /> 
>
> Notice that the “tamper_protection” is now set to “block”. 
>
>  

1.  **JAMF** 

<!-- -->

1.  **Configure tamper protection mode in Microsoft Defender’s [<u>configuration profile</u>](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-jamfpro-policies?view=o365-worldwide#legacy-method), by adding the following settings:** 

> \<?xml version="1.0" encoding="UTF-8"?\> 
>
> \<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "[<u>http://www.apple.com/DTDs/PropertyList-1.0.dtd"</u>](http://www.apple.com/DTDs/PropertyList-1.0.dtd%22)\> 
>
> \<plist version="1.0"\> 
>
>   \<dict\> 
>
>     \<key\>tamperProtection\</key\> 
>
>     \<dict\> 
>
>       \<key\>enforcementLevel\</key\> 
>
>       \<string\>block\</string\> 
>
>     \</dict\> 
>
>   \</dict\> 
>
> \</plist\> 

 

> **Note**: If you already have a configuration profile for Microsoft Defender for Endpoint then you need to *add* settings to it. You don’t need to create a second configuration profile. 

 

>  
>
>  

1.  **Intune** 

> **Follow our publicly documented Intune profile example to configure tamper protection via Intune :** [<u>Set preferences for Microsoft Defender for Endpoint on Mac \| Microsoft Docs</u>](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/mac-preferences?view=o365-worldwide#intune-profile) 

**Add the following configuration in your Intune profile: ** 

                 

?xml version="1.0" encoding="utf-8"?\> 

\<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd"\> 

\<plist version="1"\> 

    \<dict\> 

        \<key\>PayloadUUID\</key\> 

        \<string\>C4E6A782-0C8D-44AB-A025-EB893987A295\</string\> 

        \<key\>PayloadType\</key\> 

        \<string\>Configuration\</string\> 

        \<key\>PayloadOrganization\</key\> 

        \<string\>Microsoft\</string\> 

        \<key\>PayloadIdentifier\</key\> 

        \<string\>com.microsoft.wdav\</string\> 

        \<key\>PayloadDisplayName\</key\> 

        \<string\>Microsoft Defender for Endpoint settings\</string\> 

        \<key\>PayloadDescription\</key\> 

        \<string\>Microsoft Defender for Endpoint configuration settings\</string\> 

        \<key\>PayloadVersion\</key\> 

        \<integer\>1\</integer\> 

        \<key\>PayloadEnabled\</key\> 

        \<true/\> 

        \<key\>PayloadRemovalDisallowed\</key\> 

        \<true/\> 

        \<key\>PayloadScope\</key\> 

        \<string\>System\</string\> 

        \<key\>PayloadContent\</key\> 

        \<array\> 

            \<dict\> 

                \<key\>PayloadUUID\</key\> 

                \<string\>99DBC2BC-3B3A-46A2-A413-C8F9BB9A7295\</string\> 

                \<key\>PayloadType\</key\> 

                \<string\>com.microsoft.wdav\</string\> 

                \<key\>PayloadOrganization\</key\> 

                \<string\>Microsoft\</string\> 

                \<key\>PayloadIdentifier\</key\> 

                \<string\>com.microsoft.wdav\</string\> 

                \<key\>PayloadDisplayName\</key\> 

                \<string\>Microsoft Defender for Endpoint configuration settings\</string\> 

                \<key\>PayloadDescription\</key\> 

                \<string/\> 

                \<key\>PayloadVersion\</key\> 

                \<integer\>1\</integer\> 

                \<key\>PayloadEnabled\</key\> 

                \<true/\> 

                \<key\>tamperProtection\</key\> 

                \<dict\> 

                             \<key\>enforcementLevel\</key\> 

                             \<string\>block\</string\> 

                \</dict\> 

            \</dict\> 

        \</array\> 

    \</dict\> 

\</plist\> 

* * 

> * (For Intune configuration, you can create a new profile configuration file to add the Tamper protection configuration, or you can add these parameters to the existing one)* 
>
>  
>
>  

Check the tamper protection status: 

 

Run the following command, it will print “block” if tamper protection is on: 

 

> *mdatp health --field tamper_protection* 
>
>  
>
> <img src="c:\microsoft-365-docs-pr\microsoft-365\security\defender-endpoint/media/image4.gif" style="width:0.25in;height:0.25in" /> 

 

 

 

You can also run full “mdatp health” and look for the “tamper_protection” in the output: 

 

<img src="c:\microsoft-365-docs-pr\microsoft-365\security\defender-endpoint/media/image4.gif" style="width:0.25in;height:0.25in" /> 

 

 

 

Tamper protection modes: 

You can set tamper protection in the following modes: 

 

| **disabled**  | Tamper protection is completely off (this is the default mode after installation)  |
|---------------|------------------------------------------------------------------------------------|
| **audit**     | Tampering operations are logged, but not blocked                                   |
| **block**     | Tamper protection is on, tampering operations are blocked                          |

 

You can change tamper protection *mode* by providing mode name as enforcement-level, as described above, in Configure Tamper Protection on your test devices, part a**. ** 

 

NOTE: The mode change will apply immediately. You don’t need to change the feature flag nor restart Microsoft Defender for Endpoint.  

**Note:** If you used JAMF for initial configuration, then you need to update configuration via JAMF as well. 

 

Troubleshooting 

 

Issue: Tamper protection is reported as disabled 

For the private preview your OrgId must be explicitly added to the private preview group to enable the tamper protection feature. If you received an invite to the private preview from the Microsoft Defender for Endpoint team, then your OrgId has been included. All client machines for this OrgId will receive an updated cloud configuration after less than 1 hour since it was enabled for the OrgId for the private preview, or since a new machine was onboarded. 

 

If ‘mdatp health’ reports that the tamper protection is disabled, even if you enabled it and more than an hour has passed since the onboarding, then you can check if you have the right configuration by running the following command: 

 

> $ sudo grep -F '\[{tamperProtection}\]: Feature state:' /Library/Logs/Microsoft/mdatp/microsoft_defender_core.log \| tail -n 1 
>
> \[85246\]\[2021-12-08 15:45:34.184781 UTC\]\[info\]: \[{tamperProtection}\]: Feature state: enabled, mode: "block" 
>
>  

-   The feature state must be “enabled”. Contact us with your Org_ID, if it still reports as “disabled” even after an hour after the installation. 

-   The mode must be “block” (or “audit”). If it is not, then you haven’t set the tamper protection mode either via “mdatp config” or via MDM. 

 

What to expect on a device when tamper protection policy is applied:  

 

“Block” mode: 

-   Defender for Endpoint agent uninstall is blocked  

-   Editing/modification of Defender for Endpoint files are blocked 

-   Creation of new files under Defender for Endpoint location is blocked 

<!-- -->

-   Deletion of Defender for Endpoint files is blocked 

-   Renaming of Defender for Endpoint files is blocked 

-   Commands to stop the agent fail 

 

Here is an example of a system message in response to a blocked action: 

<img src="c:\microsoft-365-docs-pr\microsoft-365\security\defender-endpoint/media/image4.gif" style="width:0.25in;height:0.25in" /> 

 

“Audit” mode: 

-   Defender for Endpoint agent uninstall is logged (audited)  

-   Editing/modification of Defender for Endpoint files are logged (audited) 

<!-- -->

-   Creation of new files under Defender for Endpoint location is logged (audited) 

-   Deletion of Defender for Endpoint  files is logged (audited) 

-   Renaming of Defender for Endpoint  files is logged (audited) 

-   Commands to stop the agent fail 

 

 

 

How to verify tamper protection preventive capabilities  

 

“Block” mode: 

Tampering alert is raised in the Microsoft Defender security center 

\* Note “known issue \#4” – when in case of calling the official Defender for Endpoint uninstall script (*sudo '/Library/Application Support/Microsoft/Defender/uninstall/uninstall'*) in TP “block” mode, the uninstall is prevented, but no tampering alert is raised in Microsoft Defender security center . 

 

<img src="c:\microsoft-365-docs-pr\microsoft-365\security\defender-endpoint/media/image4.gif" style="width:0.25in;height:0.25in" /> 

 

 

“Block” and “Audit” modes: 

-   Tampering alerts appear in Advanced Hunting  

-   Tampering events can be found in the local device logs: *sudo grep -F '\[{tamperProtection}\]' /Library/Logs/Microsoft/mdatp/microsoft_defender_core.log* 

<img src="c:\microsoft-365-docs-pr\microsoft-365\security\defender-endpoint/media/image4.gif" style="width:0.25in;height:0.25in" /> 

 

 

 

DIY scenarios 

1\. With TP set to “block”, attempt different methods to uninstall Defender for Endpoint (\~drag app tile into trash, uninstall via command line.) 

2\. Try to delete, rename, modify, move Defender for Endpoint files (similar to what a malicious user would do), for example: 

-   /Applications/Microsoft Defender ATP.app/ 

-   /Library/LaunchDaemons/com.microsoft.fresno.plist 

-   /Library/LaunchDaemons/com.microsoft.fresno.uninstall.plist 

-   /Library/LaunchAgents/com.microsoft.wdav.tray.plist 

<!-- -->

-   /Library/Managed Preferences/com.microsoft.wdav.ext.plist 

-   /Library/Managed Preferences/mdatp_managed.json 

-   /Library/Managed Preferences/com.microsoft.wdav.atp.plist 

-   /Library/Managed Preferences/com.microsoft.wdav.atp.offboarding.plist 

-   /usr/local/bin/mdatp 

 

3\. Try to stop Defender for Endpoint process (kill). 

 

 

 

 

Turning off tamper protection 

 

You can turn off tamper protection at any moment after completing your evaluation.  

 

-   **Manual configuration** 

> **Use the following command:** 

*sudo mdatp config tamper-protection enforcement-level – –value disabled* 

 

-   **JAMF** 

**Change enforcementLevel to “disabled” in your configuration profile, and push it to the machine:** 

> \<?xml version="1.0" encoding="UTF-8"?\> 
>
> \<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "[<u>http://www.apple.com/DTDs/PropertyList-1.0.dtd"</u>](http://www.apple.com/DTDs/PropertyList-1.0.dtd%22)\> 
>
> \<plist version="1.0"\> 
>
>   \<dict\> 
>
>     \<key\>tamperProtection\</key\> 
>
>     \<dict\> 
>
>       \<key\>enforcementLevel\</key\> 
>
>       \<string\>disabled\</string\> 
>
>     \</dict\> 
>
>   \</dict\> 
>
> \</plist\> 
>
>  

-   **Intune**   
    > **Add the following configuration in your Intune profile:** 

> \<?xml version="1.0" encoding="utf-8"?\> 
>
> \<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd"\> 
>
> \<plist version="1"\> 
>
>     \<dict\> 
>
>         \<key\>PayloadUUID\</key\> 
>
>         \<string\>C4E6A782-0C8D-44AB-A025-EB893987A295\</string\> 
>
>         \<key\>PayloadType\</key\> 
>
>         \<string\>Configuration\</string\> 
>
>         \<key\>PayloadOrganization\</key\> 
>
>         \<string\>Microsoft\</string\> 
>
>         \<key\>PayloadIdentifier\</key\> 
>
>         \<string\>com.microsoft.wdav\</string\> 
>
>         \<key\>PayloadDisplayName\</key\> 
>
>         \<string\>Microsoft Defender for Endpoint settings\</string\> 
>
>         \<key\>PayloadDescription\</key\> 
>
>         \<string\>Microsoft Defender for Endpoint configuration settings\</string\> 
>
>         \<key\>PayloadVersion\</key\> 
>
>         \<integer\>1\</integer\> 
>
>         \<key\>PayloadEnabled\</key\> 
>
>         \<true/\> 
>
>         \<key\>PayloadRemovalDisallowed\</key\> 
>
>         \<true/\> 
>
>         \<key\>PayloadScope\</key\> 
>
>         \<string\>System\</string\> 
>
>         \<key\>PayloadContent\</key\> 
>
>         \<array\> 
>
>             \<dict\> 
>
>                 \<key\>PayloadUUID\</key\> 
>
>                 \<string\>99DBC2BC-3B3A-46A2-A413-C8F9BB9A7295\</string\> 
>
>                 \<key\>PayloadType\</key\> 
>
>                 \<string\>com.microsoft.wdav\</string\> 
>
>                 \<key\>PayloadOrganization\</key\> 
>
>                 \<string\>Microsoft\</string\> 
>
>                 \<key\>PayloadIdentifier\</key\> 
>
>                 \<string\>com.microsoft.wdav\</string\> 
>
>                 \<key\>PayloadDisplayName\</key\> 
>
>                 \<string\>Microsoft Defender for Endpoint configuration settings\</string\> 
>
>                 \<key\>PayloadDescription\</key\> 
>
>                 \<string/\> 
>
>                 \<key\>PayloadVersion\</key\> 
>
>                 \<integer\>1\</integer\> 
>
>                 \<key\>PayloadEnabled\</key\> 
>
>                 \<true/\> 
>
>                 \<key\>tamperProtection\</key\> 
>
>                 \<dict\> 
>
>                              \<key\>enforcementLevel\</key\> 
>
>                              \<string\>disabled\</string\> 
>
>                 \</dict\> 
>
>             \</dict\> 
>
>         \</array\> 
>
>     \</dict\> 
>
> \</plist\> 

 

 

Known issues 

1\. During the private preview, you can configure Tamper Protection (TP) locally (on device). Before entering general availability, TP setting configuration will switch to remote-admin-only experience (and will be protected by a signed authorization blob). 

2\. When TP is configured locally, it is possible to disable TP locally via a designated command (it is done for ease of testing). Local ability to disable TP will be removed when the development cycle reaches public availability. 

3\. TP event monitoring is currently possible via local on-device logs and in Microsoft Defender security center. TP events monitoring via advanced hunting is under development. Advanced hunting scenario will be enabled with an upcoming refresh to the preview. 

4\. When an official uninstall script  

(*sudo '/Library/Application Support/Microsoft/Defender/uninstall/uninstall'*)  

is used to uninstall Defender for Endpoint in TP “block” mode, the uninstallation is prevented, but no tampering alert is raised in Microsoft Defender security center. We are seeking for feedback on whether you’d like to receive a tampering alert when the official uninstall script is blocked. 

When the official uninstall script is used in TP “audit” mode, corresponding events are logged and will be visible via advanced hunting when advanced hunting comes online.  

 

 
