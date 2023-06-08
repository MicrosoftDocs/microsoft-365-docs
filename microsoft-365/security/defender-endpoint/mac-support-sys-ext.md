---
title: Troubleshoot system extension issues for Microsoft Defender for Endpoint on Mac
description: Troubleshoot system extension issues in Microsoft Defender for Endpoint on Mac.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, performance, big sur, monterey, ventura, mde for mac
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-smandalika
author: v-smandalika
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 06/07/2023
---

# Troubleshoot system extension issues in Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](defender-endpoint-plan-1-2.md)
- [Microsoft Defender for Endpoint Plan 2](defender-endpoint-plan-1-2.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/get-started/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https%3a%2f%2faka.ms%2fMDEp2OpenTrial%3focid%3ddocs-wdatp-exposedapis-abovefoldlink&brandingId=28b276fb-d2a0-4379-a7c0-57dce33da0f9&ali=1&bac=1&signedinuser=v-smandalika%40microsoft.com)

You can submit feedback by opening Microsoft Defender for Endpoint on Mac on your device and navigating to **Help > Send feedback**.

Another option is to submit feedback via the Microsoft 365 Defender, by launching **security.microsoft.com** and selecting the **Give feedback** tab.

This article provides information on how to troubleshoot issues with the system extension that's installed as part of Microsoft Defender for Endpoint (MDE) on macOS.

Starting with macOS BigSur (11), Apple’s macOS requires all system extensions to be explicitly approved before they're allowed to run on the device.

## Symptom

You'll notice that the Microsoft Defender for Endpoint has an **x** symbol in the shield, as shown in the following screenshot:

:::image type="content" source="images/mde-screen-with-x-symbol.png" alt-text="The Microsoft Defender for Endpoint screen that displays the x symbol on its menu." lightbox="images/mde-screen-with-x-symbol.png":::

If you click on the shield with the **x** symbol, you'll get options as shown in the following screenshot:

:::image type="content" source="images/options-on-clicking-x-symbol.png" alt-text="The options you get on clicking the x symbol." lightbox="images/options-on-clicking-x-symbol.png":::

Click **Action needed**.

The screen as shown in the following screenshot appears:

:::image type="content" source="images/screen-on-clicking-action-needed.png" alt-text="The screen that is displayed on clicking the Action needed option." lightbox="images/screen-on-clicking-action-needed.png":::

Click **Fix**. The screen as shown in the following screenshot appears:

:::image type="content" source="images/screen-on-clicking-fix.png" alt-text="The screen that is displayed on clicking the Fix button." lightbox="images/screen-on-clicking-fix.png":::

You can also run **mdatp health**: It reports if real-time protection is enabled but not available. This report indicates that the system extension isn't approved to run on your device.

```bash
mdatp health
```
```Output
healthy				: false
health_issues			: [“no active event provider”, “network event provider not running”, “full disk access has not been granted”]
...
real_time_protection_enabled	: unavailable
real_time_protection_available	: unavailable
...
full_disk_access_enabled		: false
```
## Cause 

macOS requires that a user manually and explicitly approves certain functions that an application uses, for example, system extensions, running in background, sending notifications, full disk access, and so on. Microsoft Defender for Endpoint relies on these functions and can't properly function until all these consents are received from a user.

If you didn't approve the system extension during the deployment/installation of Microsoft Defender for Endpoint on macOS, perform the following steps:

1. Check the system extensions by running the following command in the terminal:

   ```BashCopy
   systemextensionsctl list
   ```

   :::image type="content" source="images/check-system-extension.png" alt-text="The screen that shows what should be done to check the system extension." lightbox="images/check-system-extension.png":::

You'll notice that both Microsoft Defender for Endpoint on macOS extensions are in the **[activated waiting for user]** state.

2. In the terminal, run the following command:

   ```BashCopy
   mdatp health --details system_extensions
   ```

You'll get the following output:

```OutputCopy

network_extension_enabled		        : false
network_extension_installed		        : true
endpoint_security_extension_ready		: false
endpoint_security_extension_installed	: true
```

This output is depicted in the following screenshot:

:::image type="content" source="images/details-system-extensions-command.png" alt-text="The output regarding details system extensions." lightbox="images/details-system-extensions-command.png":::

The following files might be missing if you're managing it via Intune, JamF, or another MDM solution:


|MobileConfig (Plist)  |“mdatp health” console command output  |macOS setting needed for MDE on macOS to function properly  |
|---------|---------|---------|
|"/Library/Managed Preferences/com.apple.system-extension-policy.plist"    |  real_time_protection_subsystem       |   System extension      |
|"/Library/Managed Preferences/com.apple.webcontent-filter.plist"    |   network_events_subsystem      |     Network Filter extension    |
|"/Library/Managed Preferences/com.apple.TCC.configuration-profile-policy.plist"   |     full_disk_access_enabled    |    Privacy Preference Policy Controls (PPPC, aka TCC (Transparency, Consent & Control), Full Disk Access (FDA))     |
|"/Library/Managed Preferences/com.apple.notificationsettings.plist"    |   n/a      |     End-user notifications    |
|"/Library/Managed Preferences/servicemanagement.plist”     |   n/a      | Background services        |
|"/Library/Managed Preferences/com.apple.TCC.configuration-profile-policy.plist"     |    full_disk_access_enabled (for DLP)     |   Accessibility      |

## Solution

**Step 1: Are the profiles coming down to your macOS?**

If you're using Intune, see [Manage macOS software update policies in Intune](/mem/intune/protect/software-updates-macos).

:::image type="content" source="images/refresh-devices.png" alt-text="The screen on which you refresh the devices." lightbox="images/refresh-devices.png":::

1. Click the ellipses (three dots).
1. Select **Refresh devices**. The following screen appears:

   :::image type="content" source="images/screen-on-clicking-refresh-devices.png" alt-text="The screen that appears on clicking Refresh devices." lightbox="images/screen-on-clicking-refresh-devices.png":::

1. In Launchpad, type **System Preferences**.
1. Double-click **Profiles**.

   > [!NOTE]
   > If you aren't MDM joined, you won't see **Profiles** as an option.  Contact your MDM support team to see why the **Profiles** isn't visible. You should be able to see the different profiles such as **System Extensions**, **Accessibility**, **Background Services**, **Notifications**, **Microsoft AutoUpdate**, and so on, as shown in the preceding screenshot.

If you're using JamF, use sudo jamf policy. For more information, see [Policy Management](https://docs.jamf.com/10.26.0/jamf-pro/administrator-guide/Policy_Management.html#:~:text=To%20manually%20trigger%20the%20policy%20using%20the%20jamf,pre-defined%20trigger%2C%20replace%20%3CtriggerName%3E%20with%20the%20appropriate%20value.).

**Step 2: Ensure that the profiles needed for Microsoft Defender for Endpoint are enabled.**

The sections provide guidance on how to address this issue, depending on the method that you used to deploy Microsoft Defender for Endpoint on macOS,  are specified in [Sections that provide guidance on enabling profiles needed for Microsoft Defender for Endpoint](#sections-that-provide-guidance-on-enabling-profiles-needed-for-microsoft-defender-for-endpoint).
 
> [!NOTE]
> A proper naming convention for your configuration profiles is a real advantage. I follow the following naming scheme:
> `Name of the Setting(s) [(additional info)] -Platform - Set - Policy-Type`
> For example, `FullDiskAccess (piloting) - macOS - Default - MDE`

When you use the naming convention (specified in the preceding note), it helps you quickly take a look and ensure that the correct profiles are coming down when the profiles are being checked.

> [!TIP]
> To ensure that the correct profiles are coming down, instead of typing **.mobileconfig (plist)**, you can download this profile from Github, to avoid typos elongated hyphens, and so on.

In the terminal, enter the following syntax:

`curl -O https://URL` 
For example, `curl -O https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mobileconfig/profiles/sysext.mobileconfig` 

### Sections that provide guidance on enabling profiles needed for Microsoft Defender for Endpoint


|Management Tool  |Column2  |MobileConfig (Plist)  |
|---------|---------|---------|
|Intune    |  1. [Approve System Extensions](mac-install-with-intune.md) <br> <br> 2. [Network Filter](mac-install-with-intune.md) <br> <br> 3. [Privacy Preference Policy Controls (PPPC, aka TCC (Transparency, Consent & Control), Full Disk Access (FDA))](mac-install-with-intune.md)<br><br> 4. Running in background<br><br> 5. Sending notifications<br><br> 6. Accessibility     | 1. System Extensions (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/sysext.mobileconfig) <br> <br> 2. Network Filter Extension (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/netfilter.mobileconfig) <br><br> 3. Full Disk Access (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig) <br><br> 4. Background Services (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/background_services.mobileconfig)<br><br> 5. End-user notifications (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/notif.mobileconfig)<br><br> 6. Accessibility (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig) |
|   JamF  | 1. [Approve the System Extensions](mac-jamfpro-policies.md)<br><br> 2. [Approve the Network Filter Extension](mac-jamfpro-policies.md)<br><br> 3. [Approve the Privacy Preference Policy Controls (PPPC, aka TCC (Transparency, Consent & Control), Full Disk Access (FDA))](mac-jamfpro-policies.md)<br><br> 4. Running in background<br><br> 5. Sending notifications.<br><br> 6.	Accessibility  |  1. System Extensions (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/sysext.mobileconfig)<br><br> 2. Network Filter Extension (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/netfilter.mobileconfig)<br><br> 3. Full Disk Access (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig)<br><br> 4. Background Services (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/background_services.mobileconfig)<br><br> 5. End-user notifications (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/notif.mobileconfig)<br><br> 6. Accessibility (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig) |
|Other MDM    | 1. [Approve the System Extensions](mac-jamfpro-policies.md)<br><br> 2. [Approve the Network Filter Extension](mac-jamfpro-policies.md)<br><br> 3. [Approve the Privacy Preference Policy Controls (PPPC, aka TCC (Transparency, Consent & Control), Full Disk Access (FDA))](mac-jamfpro-policies.md)<br><br> 4. Running in background<br><br> 5. Sending notifications.<br><br> 6.	Accessibility    | 1. System Extensions (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/sysext.mobileconfig)<br><br> 2. Network Filter Extension (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/netfilter.mobileconfig)<br><br> 3. Full Disk Access (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/fulldisk.mobileconfig)<br><br> 4. Background Services (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/background_services.mobileconfig)<br><br> 5. End-user notifications (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/notif.mobileconfig)<br><br> 6. Accessibility (https://github.com/microsoft/mdatp-xplat/blob/master/macos/mobileconfig/profiles/accessibility.mobileconfig)         |
|Manual deployment     |     -    |      Must approve the extension by going to **Security Preferences or System Preferences > Security & Privacy** and then selecting **Allow**.   |

**Step 3: Test the installed profiles using macOS built-in ‘profile’ tool.  It compares your profiles with what we have published in GitHub, reporting inconsistent profiles or profiles missing altogether.**

1. Download the script from https://github.com/microsoft/mdatp-xplat/tree/master/macos/mdm.
1. Click **Raw**. The new URL will be https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mdm/analyze_profiles.py.
1. Save it as *analyze_profiles.py* to **Downloads** by running the following command in the terminal:

   `curl -O https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mdm/analyze_profiles.py` 

1. Run the profile analyzer python3 script without any parameters by executing the following command in the terminal:

   
   ```powershell-interactive
   cd /Downloads
   sudo python3 analyze_profiles.py
   ```
   > [!NOTE]
   > It will ask to sudo.

OR

1. Run the script directly from the Web by executing the following command:

    `sudo curl https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/macos/mdm/analyze_profiles.py | python3 -`

    > [!NOTE]
    > It will ask to sudo.

The output will show all potential issues with profiles.

#### Intune

##### Intune System Extensions Policy

To approve the system extensions:

1. In Intune, select **Manage > Device configuration**, and then select **Manage > Profiles > Create Profile**.
1. Choose a name for the profile. Change **Platform=macOS** to **Profile type=Extensions**x, and then select **Create**.
1. In the **Basics** tab, give a name to this new profile.
1. In the **Configuration settings** tab, add the following entries (described in the following table) in the **Allowed system extensions** section:

   |Bundle identifier  |Team identifier  |
   |---------|---------|
   |com.microsoft.wdav.epsext     |    UBF8T346G9     |
   |com.microsoft.wdav.netext     |    UBF8T346G9     |

   :::image type="content" source="images/entries-in-configuration-settings-tab.png" alt-text="Adding entries in the Configuration settings tab." lightbox="images/entries-in-configuration-settings-tab.png":::

1. In the **Assignments** tab, assign this profile to **All Users & All devices**.
1. Review and create this configuration profile.

##### Create the Custom Configuration Profile

The custom configuration profile enables the network extension and grants Full Disk Access to the Endpoint Security system extension.

1. Save the following content to a file named *sysext.xml*:

    ```powershell
   <?xml version="1.0" encoding="UTF-8"?><!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1">
    <dict>
        <key>PayloadUUID</key>
        <string>7E53AC50-B88D-4132-99B6-29F7974EAA3C</string>
        <key>PayloadType</key>
        <string>Configuration</string>
        <key>PayloadOrganization</key>
        <string>Microsoft Corporation</string>
        <key>PayloadIdentifier</key>
        <string>7E53AC50-B88D-4132-99B6-29F7974EAA3C</string>
        <key>PayloadDisplayName</key>
        <string>Microsoft Defender System Extensions</string>
        <key>PayloadDescription</key>
        <string/>
        <key>PayloadVersion</key>
        <integer>1</integer>
        <key>PayloadEnabled</key>
        <true/>
        <key>PayloadRemovalDisallowed</key>
        <true/>
        <key>PayloadScope</key>
        <string>System</string>
        <key>PayloadContent</key>
        <array>
            <dict>
                <key>PayloadUUID</key>
                <string>2BA070D9-2233-4827-AFC1-1F44C8C8E527</string>
                <key>PayloadType</key>
                <string>com.apple.webcontent-filter</string>
                <key>PayloadOrganization</key>
                <string>Microsoft Corporation</string>
                <key>PayloadIdentifier</key>
                <string>CEBF7A71-D9A1-48BD-8CCF-BD9D18EC155A</string>
                <key>PayloadDisplayName</key>
                <string>Approved Network Extension</string>
                <key>PayloadDescription</key>
                <string/>
                <key>PayloadVersion</key>
                <integer>1</integer>
                <key>PayloadEnabled</key>
                <true/>
                <key>FilterType</key>
                <string>Plugin</string>
                <key>UserDefinedName</key>
                <string>Microsoft Defender Network Extension</string>
                <key>PluginBundleID</key>
                <string>com.microsoft.wdav</string>
                <key>FilterSockets</key>
                <true/>
                <key>FilterDataProviderBundleIdentifier</key>
                <string>com.microsoft.wdav.netext</string>
                <key>FilterDataProviderDesignatedRequirement</key>
                <string>identifier &quot;com.microsoft.wdav.netext&quot; and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9</string>
            </dict>
            <dict>
                <key>PayloadUUID</key>
                <string>56105E89-C7C8-4A95-AEE6-E11B8BEA0366</string>
                <key>PayloadType</key>
                <string>com.apple.TCC.configuration-profile-policy</string>
                <key>PayloadOrganization</key>
                <string>Microsoft Corporation</string>
                <key>PayloadIdentifier</key>
                <string>56105E89-C7C8-4A95-AEE6-E11B8BEA0366</string>
                <key>PayloadDisplayName</key>
                <string>Privacy Preferences Policy Control</string>
                <key>PayloadDescription</key>
                <string/>
                <key>PayloadVersion</key>
                <integer>1</integer>
                <key>PayloadEnabled</key>
                <true/>
                <key>Services</key>
                <dict>
                    <key>SystemPolicyAllFiles</key>
                    <array>
                        <dict>
                            <key>Identifier</key>
                            <string>com.microsoft.wdav.epsext</string>
                            <key>CodeRequirement</key>
                            <string>identifier "com.microsoft.wdav.epsext" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9</string>
                            <key>IdentifierType</key>
                            <string>bundleID</string>
                            <key>StaticCode</key>
                            <integer>0</integer>
                            <key>Allowed</key>
                            <integer>1</integer>
                        </dict>
                    </array>
                </dict>
            </dict>
        </array>
    </dict>
</plist>
  ```

Verify that the above file was copied correctly. From the Terminal, run the following command and verify that it outputs:


```powershell-interactive
$ plutil -lint sysext.xml
sysext.xml: OK
```

##### Deploy this custom configuration profile

1. In Intune, select **Manage > Device configuration**, and then select **Manage > Profiles > Create profile**.
1. Choose a name for the profile. Set the value for **Platform=macOS** and **Profile type=Custom**, and then select **Configure**. The file *sysext.xml* is created.
1. Open the configuration profile and upload *sysext.xml*.
1. Select **OK**.

:::image type="content" source="images/deploy-custom-configuration-profile.png" alt-text="Deploying custom configuration profile." lightbox="images/deploy-custom-configuration-profile.png":::

5. In the **Assignments** tab, assign this profile to **All Users & All devices**.
6. Review and create this configuration profile.

#### JamF

##### JAMF System Extensions Policy

To approve the system extensions, create the following payload:

1.	Select **Computers > Configuration Profiles**, and then select **Options > System Extensions**.
2.	Select **Allowed System Extensions** from the **System Extension Types** dropdown list.
3.	Use **UBF8T346G9** for Team ID.
4.	Add the following bundle identifiers to the **Allowed System Extensions** list:
    - com.microsoft.wdav.epsext
    - com.microsoft.wdav.netext
    
    :::image type="content" source="images/jamf-system-extensions-approval.png" alt-text="Approving system extensions in JamF." lightbox="images/jamf-system-extensions-approval.png":::

##### Privacy Preferences Policy Control (aka Full Disk Access)

Add the following JAMF payload to grant Full Disk Access to the Microsoft Defender for Endpoint Security Extension. This policy is a prerequisite for running the extension on your device.

1. Select **Options > Privacy Preferences Policy Control**.
1. Use **com.microsoft.wdav.epsext** as the Identifier and **Bundle ID** as Bundle type.
1. Set Code Requirement to identifier **com.microsoft.wdav.epsext** and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9.
1. Set **App or service** to **SystemPolicyAllFiles** and access to **Allow**.

   :::image type="content" source="images/privacy-preferences-policy-control.png" alt-text="Privacy preferences policy control." lightbox="images/privacy-preferences-policy-control.png":::

##### Network Extension Policy

As part of the Endpoint Detection and Response capabilities, Microsoft Defender for Endpoint on macOS inspects socket traffic and reports this information to the Microsoft 365 Defender portal. The following policy allows the network extension to perform this functionality:

> [!NOTE]
> JAMF doesn't have built-in support for content filtering policies, which are a prerequisite for enabling the network extensions that Microsoft Defender for Endpoint on macOS installs on the device. Furthermore, JAMF sometimes changes the content of the policies being deployed. As such, the following steps provide a workaround that involve signing the configuration profile.

1. Save the following content to your device as **com.microsoft.network-extension.mobileconfig** using a text editor:

```powershell
   <?xml version="1.0" encoding="UTF-8"?><!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1">
    <dict>
        <key>PayloadUUID</key>
        <string>DA2CC794-488B-4AFF-89F7-6686A7E7B8AB</string>
        <key>PayloadType</key>
        <string>Configuration</string>
        <key>PayloadOrganization</key>
        <string>Microsoft Corporation</string>
        <key>PayloadIdentifier</key>
        <string>DA2CC794-488B-4AFF-89F7-6686A7E7B8AB</string>
        <key>PayloadDisplayName</key>
        <string>Microsoft Defender Network Extension</string>
        <key>PayloadDescription</key>
        <string/>
        <key>PayloadVersion</key>
        <integer>1</integer>
        <key>PayloadEnabled</key>
        <true/>
        <key>PayloadRemovalDisallowed</key>
        <true/>
        <key>PayloadScope</key>
        <string>System</string>
        <key>PayloadContent</key>
        <array>
            <dict>
                <key>PayloadUUID</key>
                <string>2BA070D9-2233-4827-AFC1-1F44C8C8E527</string>
                <key>PayloadType</key>
                <string>com.apple.webcontent-filter</string>
                <key>PayloadOrganization</key>
                <string>Microsoft Corporation</string>
                <key>PayloadIdentifier</key>
                <string>CEBF7A71-D9A1-48BD-8CCF-BD9D18EC155A</string>
                <key>PayloadDisplayName</key>
                <string>Approved Network Extension</string>
                <key>PayloadDescription</key>
                <string/>
                <key>PayloadVersion</key>
                <integer>1</integer>
                <key>PayloadEnabled</key>
                <true/>
                <key>FilterType</key>
                <string>Plugin</string>
                <key>UserDefinedName</key>
                <string>Microsoft Defender Network Extension</string>
                <key>PluginBundleID</key>
                <string>com.microsoft.wdav</string>
                <key>FilterSockets</key>
                <true/>
                <key>FilterDataProviderBundleIdentifier</key>
                <string>com.microsoft.wdav.netext</string>
                <key>FilterDataProviderDesignatedRequirement</key>
                <string>identifier "com.microsoft.wdav.netext" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9</string>
            </dict>
        </array>
    </dict>
</plist>
```
2. Verify that the above file was copied correctly by running the **plutil** utility in the Terminal:

```BashCopy
$ plutil -lint <PathToFile>/com.microsoft.network-extension.mobileconfig
```
For example, if the file was stored in Documents:

```BashCopy
$ plutil -lint ~/Documents/com.microsoft.network-extension.mobileconfig
```
1. Verify that the above file was copied correctly by running the plutil utility in the Terminal:

```BashCopy
$ plutil -lint <PathToFile>/com.microsoft.network-extension.mobileconfig
```

For example, if the file was stored in Documents:

```BashCopy
$ plutil -lint ~/Documents/com.microsoft.network-extension.mobileconfig
```

3. Verify that the command outputs **OK**

```BashCopy
<PathToFile>/com.microsoft.network-extension.mobileconfig: OK
```

4. Follow the instructions on [this page](https://learn.jamf.com/bundle/technical-articles/page/Welcome.html) to create a signing certificate using JAMF's built-in certificate authority.
5. After the certificate is created and installed to your device, run the following command from the Terminal to sign the file:

```BashCopy
$ security cms -S -N "<CertificateName>" -i <PathToFile>/com.microsoft.network-extension.mobileconfig -o <PathToSignedFile>/com.microsoft.network-extension.signed.mobileconfig
```

For example, if the certificate name is *SigningCertificate* and the signed file is going to be stored in Documents:

```BashCopy
$ security cms -S -N "SigningCertificate" -i ~/Documents/com.microsoft.network-extension.mobileconfig -o ~/Documents/com.microsoft.network-extension.signed.mobileconfig
```
6. From the JAMF portal, navigate to **Configuration Profiles** and select the **Upload** button. Select **com.microsoft.network-extension.signed.mobileconfig** when prompted for the file.

#### Other MDM

See [System configuration profiles](mac-install-with-other-mdm.md).

#### Manual deployment

##### System Extensions

You might see the prompt that's shown in the following screenshot:

:::image type="content" source="images/system-extension-blocked-prompt.png" alt-text="The system extensions blocked prompt screen." lightbox="images/system-extension-blocked-prompt.png":::

1. Select **OK**. You might get a second prompt which is shown in the following screenshot:

   :::image type="content" source="images/system-extension-blocked-second-prompt.png" a    lt-text="The second prompt regarding system extensions being blocked." lightbox="images/system-extension-blocked-second-prompt.png":::

2. From this second-prompt screen, select **OK**. You'll receive a notification message that reads **Installation succeeded**, as shown in the following screenshot:

   :::image type="content" source="images/installation-succeeded-notification-message.png" alt-text="The screen displaying the installation succeeded notification message." lightbox="images/installation-succeeded-notification-message.png":::

3. On the screen displaying the **Installation succeeded** notification message, select **OK**. You'll return to the following screen:

   :::image type="content" source="images/mde-menu.png" alt-text="The Microsoft Defender for Endpoint menu containing the x symbol." lightbox="images/mde-menu.png":::

4. From the menu bar, click the **x** symbol on the shield. You'll get the options shown in the following screenshot:

   :::image type="content" source="images/options-on-clicking-x-symbol.png" alt-text="The screen on clicking the x symbol in the shield." lightbox="images/options-on-clicking-x-symbol.png":::

5. Select **Action needed**. The screen as shown in the following screenshot appears:

   :::image type="content" source="images/virus-and-threat-protection-screen.png" alt-text="The Virus & threat protection screen containing the Fix button." lightbox="images/virus-and-threat-protection-screen.png":::

6. Click **Fix** on the top-right corner of this screen. You'll get a prompt, as shown in the following screenshot:

   :::image type="content" source="images/prompt-on-virus-and-threat-protection-screen.png" alt-text="The prompt dialog box on the Virus & threat protection screen." lightbox="images/prompt-on-virus-and-threat-protection-screen.png":::

7. Enter your password and select **OK**.
8. Click 
   :::image type="content" source="images/system-preferences-icon.png" alt-text="The System Preferences icon." lightbox="images/system-preferences-icon.png":::

   The **System Preferences** screen appears.

   :::image type="content" source="images/system-preferences-screen.png" alt-text="The System Preferences screen." lightbox="images/system-preferences-screen.png":::

9. Click **Security & Privacy**. The **Security & Privacy** screen appears.

   :::image type="content" source="images/security-and-privacy-screen.png" alt-text="The Security & Privacy screen." lightbox="images/security-and-privacy-screen.png":::

10. Select **Click the lock to make changes**. You'll get a prompt as shown in the following screenshot:

    :::image type="content" source="images/prompt-on-security-and-privacy-screen.png" alt-text="The prompt on the Security & Privacy screen." lightbox="images/prompt-on-security-and-privacy-screen.png":::

11. Enter your password and click **Unlock**. The screen as shown in the following screenshot appears:

    :::image type="content" source="images/screen-on-clicking-unlock.png" alt-text="The screen that is displayed on clicking Unlock." lightbox="images/screen-on-clicking-unlock.png":::

12. Select **Details**, next to **Some software system requires your attention before it can be used**.

    :::image type="content" source="images/screen-on-clicking-details.png" alt-text="The screen that is displayed on clicking Details." lightbox="images/screen-on-clicking-details.png":::

13. Check both the **Microsoft Defender** checkboxes, and select **OK**. You'll get two pop-up screens, as shown in the following screenshot appears:

    :::image type="content" source="images/popup-after-checking-both-md-checkboxes.png" alt-text="The popup that appears on checking both the checkboxes." lightbox="images/popup-after-checking-both-md-checkboxes.png":::

14. On the **“Microsoft Defender” Would like to Filter Network Content** pop-up screen, click **Allow**.

15. On the **Microsoft Defender wants to make changes** pop-up screen, enter your password and select **OK**.

If you run systemextensionsctl list, you'll see a screen as shown in the following screenshot:

:::image type="content" source="images/result-of-running-systemextenstionsctl-list.png" alt-text="The resultant screen of running the systemextensionsdcl list." lightbox="images/result-of-running-systemextenstionsctl-list.png":::

##### Accessibility

1. On the **Security & Privacy screen**, select the **Privacy** tab.

   :::image type="content" source="images/privacy-tab.png" alt-text="The Privacy tab." lightbox="images/privacy-tab.png":::

2. Select **Accessibility** from the left navigation pane, and click **+**.

   :::image type="content" source="images/accessibility-and-plus-icon.png" alt-text="The Accessibility menu item and the Plus icon." lightbox="images/accessibility-and-plus-icon.png":::

3. From the resultant screen, select **Applications** from the **Favorites** pane in the left-side of the screen; select **Microsoft Defender**; and then select **Open** at the bottom-right of the screen.

   :::image type="content" source="images/applications-md-options.png" alt-text="The process of selecting Applications and Microsoft Defender." lightbox="images/applications-md-options.png":::
   
4. From the resultant screen, check the **Microsoft Defender** checkbox.

   :::image type="content" source="images/checking-md-checkbox.png" alt-text="Checking the Microsoft Defender checkbox." lightbox="images/checking-md-checkbox.png":::

##### Full Disk Access

1. On the **Security & Privacy screen**, select the **Privacy** tab.
1. Select **Full Disk Access** from the left navigation pane, and then click the lock icon.

   :::image type="content" source="images/full-disk-access-and-lock-icon.png" alt-text="The Full Disk Access option in the menu and the Lock icon." lightbox="images/full-disk-access-and-lock-icon.png":::

1. Confirm that the Microsoft Defender extension has full disk access; if not, check the **Microsoft Defender** checkbox.
 
   :::image type="content" source="images/check-md-checkbox.png" alt-text="Checking the MD checkbox." lightbox="images/check-md-checkbox.png":::

##### Notifications

1. From the **System Preferences** home screen, select **Notifications**.

   :::image type="content" source="images/notifications-option.png" alt-text="The Notifications option in the System Preferences screen." lightbox="images/notifications-option.png":::
   
   The **Notifications** screen appears.

1. Select **Microsoft Defender** from the left navigation pane.

1. Enable the **Allow Notifications** option; select **Alerts**, and retain the default settings as is.

   :::image type="content" source="images/notifications-md.png" alt-text="Selecting Microsoft Defender option from the Notifications screen." lightbox="images/notifications-md.png":::

##### What a healthy system looks like

###### mdatp health output

:::image type="content" source="images/mdatp-health-output.png" alt-text="The mdatp health output screen." lightbox="images/mdatp-health-output.png":::

###### Check the system extensions

In terminal, run the following command to check the system extensions:

`systemextensionsctl list`

:::image type="content" source="images/command-to-check-system-extensions.png" alt-text="The command to check the system extensions." lightbox="images/command-to-check-system-extensions.png":::

## Recommended content

- [Deploying Microsoft Defender for Endpoint on macOS with Jamf Pro](mac-install-with-jamf.md): Learn how to deploy Microsoft Defender for Endpoint on macOS with Jamf Pro.
- [Set up the Microsoft Defender for Endpoint on macOS policies in Jamf Pro](mac-jamfpro-policies.md): Learn how to set up the Microsoft Defender for Endpoint on macOS policies in Jamf Pro.
- [Set up device groups in Jamf Pro](mac-jamfpro-device-groups.md): 
Learn how to set up device groups in Jamf Pro for Microsoft Defender for Endpoint on macOS.
- [Log in to Jamf Pro](mac-install-jamfpro-login.md)




