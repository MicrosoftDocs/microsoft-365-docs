---
title: Manage system extensions using JamF
description: Manage system extensions using JamF for Microsoft Defender for Endpoint to work properly on macOS.
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

# Manage system extensions using JamF

This article describes the procedures to implement in the process of managing the system extensions to ensure Microsoft Defender for Endpoint works properly on macOS.

## JamF

### JAMF System Extensions Policy

To approve the system extensions, perform the following steps:

1.	Select **Computers > Configuration Profiles**, and then select **Options > System Extensions**.
2.	Select **Allowed System Extensions** from the **System Extension Types** drop-down list.
3.	Use **UBF8T346G9** for Team ID.
4.	Add the following bundle identifiers to the **Allowed System Extensions** list:
    - com.microsoft.wdav.epsext
    - com.microsoft.wdav.netext
    
    :::image type="content" source="images/jamf-system-extensions-approval.png" alt-text="Approving system extensions in JamF." lightbox="images/jamf-system-extensions-approval.png":::

### Privacy Preferences Policy Control (also known as Full Disk Access)

Add the following JAMF payload to grant Full Disk Access to the Microsoft Defender for Endpoint Security Extension. This policy is a prerequisite for running the extension on your device.

1. Select **Options > Privacy Preferences Policy Control**.
1. Use **com.microsoft.wdav.epsext** as the Identifier and **Bundle ID** as Bundle type.
1. Set Code Requirement to **identifier com.microsoft.wdav.epsext and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9**.
1. Set **App or service** to **SystemPolicyAllFiles** and access to **Allow**.

   :::image type="content" source="images/privacy-preferences-policy-control.png" alt-text="Privacy preferences policy control." lightbox="images/privacy-preferences-policy-control.png":::

### Network Extension Policy

As part of the Endpoint Detection and Response capabilities, Microsoft Defender for Endpoint on macOS inspects socket traffic and reports this information to the Microsoft 365 Defender portal. The following policy allows the network extension to perform this functionality:

> [!NOTE]
> JAMF doesn't have built-in support for content filtering policies, which are a prerequisite for enabling the network extensions that Microsoft Defender for Endpoint on macOS installs on the device. Furthermore, JAMF sometimes changes the content of the policies being deployed. As such, the following steps provide a workaround that involves signing the configuration profile.

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

2. Verify that the above content was copied correctly into the file by running the **plutil** utility in terminal:

```BashCopy
$ plutil -lint <PathToFile>/com.microsoft.network-extension.mobileconfig
```
For example, if the file was stored in *Documents*:

```BashCopy
$ plutil -lint ~/Documents/com.microsoft.network-extension.mobileconfig
```

3. Verify that the command outputs **OK**

```BashCopy
<PathToFile>/com.microsoft.network-extension.mobileconfig: OK
```

5. Follow the instructions on [this page](https://learn.jamf.com/bundle/technical-articles/page/Welcome.html) to create a signing certificate using JAMF's built-in certificate authority.
5. After the certificate is created and installed to your device, run the following command from terminal to sign the file:

```BashCopy
$ security cms -S -N "<CertificateName>" -i <PathToFile>/com.microsoft.network-extension.mobileconfig -o <PathToSignedFile>/com.microsoft.network-extension.signed.mobileconfig
```

For example, if the certificate name is *SigningCertificate* and the signed file is going to be stored in *Documents*:

```BashCopy
$ security cms -S -N "SigningCertificate" -i ~/Documents/com.microsoft.network-extension.mobileconfig -o ~/Documents/com.microsoft.network-extension.signed.mobileconfig
```

6. From the JAMF portal, navigate to **Configuration Profiles** and select the **Upload** button. Select **com.microsoft.network-extension.signed.mobileconfig** when prompted for the file.
