---
title: Manage profiles and approve extensions using Intune
description: Manage profiles and approve extensions using Intune for Microsoft Defender for Endpoint to work properly on macOS.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, performance, big sur, monterey, ventura, mde for mac
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 08/28/2023
---

# Manage profiles and approve extensions using Intune

This article describes the procedures to follow to manage profiles properly using the Intune management tool.

## Intune

### Intune System Extensions Policy

To approve the system extensions:

1. In Intune, select **Manage > Device configuration**, and then select **Manage > Profiles > Create Profile**.
1. Choose a name for the profile. Change **Platform=macOS** to **Profile type=Extensions**, and then select **Create**.
1. In the **Basics** tab, give a name to this new profile.
1. In the **Configuration settings** tab, add the following entries in the **Allowed system extensions** section:

   |Bundle identifier  |Team identifier  |
   |---------|---------|
   |com.microsoft.wdav.epsext     |    UBF8T346G9     |
   |com.microsoft.wdav.netext     |    UBF8T346G9     |

   :::image type="content" source="images/entries-in-configuration-settings-tab.png" alt-text="Adding entries in the Configuration settings tab." lightbox="images/entries-in-configuration-settings-tab.png":::

1. In the **Assignments** tab, assign this profile to **All Users & All devices**.
1. Review and create this configuration profile.

### Create the custom configuration profile

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

Verify that the above content was copied into the file correctly. From terminal, run the following command and verify that it outputs to the result as shown in the following example:

```powershell-interactive
$ plutil -lint sysext.xml
sysext.xml: OK
```

### Deploy this custom configuration profile

1. In Intune, select **Manage > Device configuration**, and then select **Manage > Profiles > Create profile**.
1. Choose a name for the profile. For the **Platform** attribute, set the value as **macOS** and for the **Profile type** attribute, set the value as **Custom**, and then select **Configure**. The file *sysext.xml* is created.
1. Open the configuration profile and upload the *sysext.xml* file.
1. Select **OK**.

:::image type="content" source="images/deploy-custom-configuration-profile.png" alt-text="Deploying custom configuration profile." lightbox="images/deploy-custom-configuration-profile.png":::

5. In the **Assignments** tab, assign this profile to **All Users & All devices**.
6. Review and create this configuration profile.
