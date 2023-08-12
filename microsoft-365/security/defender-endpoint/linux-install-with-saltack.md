---
title: Deploy Microsoft Defender for Endpoint on Linux with SaltStack
ms.reviewer:
description: Describes how to deploy Microsoft Defender for Endpoint on Linux using Saltstack.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, installation, deploy, uninstallation, puppet, saltstack, linux, redhat, ubuntu, debian, sles, suse, centos, fedora, amazon linux 2
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dmcwee
author: dmcwee
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 01/19/2023
---

# Deploy Microsoft Defender for Endpoint on Linux with Saltstack

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

This article describes how to deploy Defender for Endpoint on Linux using Saltstack. A successful deployment requires the completion of all of the following tasks:

- [Download the onboarding package](#download-the-onboarding-package)
- [Create Saltstack state files](#create-saltstack-state-files)
- [Deployment](#deployment)
- [References](#references)

[!INCLUDE [Microsoft Defender for Endpoint third-party tool support](../../includes/support.md)]

## Prerequisites and system requirements

Before you get started, see [the main Defender for Endpoint on Linux page](microsoft-defender-endpoint-linux.md) for a description of prerequisites and system requirements for the current software version.

In addition, for Saltstack deployment, you need to be familiar with Saltstack administration, have Saltstack installed, have configured the Master and Minions, and know how to apply states. Saltstack has many ways to complete the same task. These instructions assume availability of supported Saltstack modules, such as *apt* and *unarchive* to help deploy the package. Your organization might use a different workflow. Refer to the [Saltstack documentation](https://docs.saltproject.io/) for details.

- Saltstack needs to be installed on at least one computer (Saltstack calls the computer as the master).
- The Saltstack master must have accepted the managed nodes (Saltstack calls the nodes as minions) connections.
- The Saltstack minions must be able to resolve communication to the Saltstack master (be default the minions try to communicate with a machine named 'salt').
- Rung this ping test:

    ```bash
    sudo salt '*' test.ping
    ```
- The Saltstack master has a file server location where the Microsoft Defender for Endpoint files can be distributed from (by default Saltstack uses the /srv/salt folder as the default distribution point)

## Download the onboarding package

Download the onboarding package from Microsoft 365 Defender portal.

[!INCLUDE [Defender for Endpoint repackaging warning](../../includes/repackaging-warning.md)]

1. In Microsoft 365 Defender portal, go to **Settings > Endpoints > Device management > Onboarding**.
2. In the first drop-down menu, select **Linux Server** as the operating system. In the second drop-down menu, select **Your preferred Linux configuration management tool** as the deployment method.
3. Select **Download onboarding package**. Save the file as WindowsDefenderATPOnboardingPackage.zip.

   :::image type="content" source="images/portal-onboarding-linux-2.png" alt-text="The Download onboarding package option" lightbox="images/portal-onboarding-linux-2.png":::

4. On the SaltStack Master, extract the contents of the archive to the SaltStack Server's folder (typically `/srv/salt`):

    ```bash
    ls -l
    ```
    ```Output
    total 8
    -rw-r--r-- 1 test  staff  4984 Feb 18 11:22 WindowsDefenderATPOnboardingPackage.zip
    ```
    ```bash
    unzip WindowsDefenderATPOnboardingPackage.zip -d /srv/salt/mde
    ```
    ```Output
    Archive:  WindowsDefenderATPOnboardingPackage.zip
    inflating: /srv/salt/mde/mdatp_onboard.json
    ```

## Create Saltstack state files

Create a SaltState state file in your configuration repository (typically `/srv/salt`) that applies the necessary states to deploy and onboard Defender for Endpoint.

- Add the Defender for Endpoint repository and key, `install_mdatp.sls`:

    Defender for Endpoint on Linux can be deployed from one of the following channels (denoted below as *[channel]*): *insiders-fast*, *insiders-slow*, or *prod*. Each of these channels corresponds to a Linux software repository.

    The choice of the channel determines the type and frequency of updates that are offered to your device. Devices in *insiders-fast* are the first ones to receive updates and new features, followed later by *insiders-slow* and lastly by *prod*.

    In order to preview new features and provide early feedback, it's recommended that you configure some devices in your enterprise to use either *insiders-fast* or *insiders-slow*.

    > [!WARNING]
    > Switching the channel after the initial installation requires the product to be reinstalled. To switch the product channel: uninstall the existing package, re-configure your device to use the new channel, and follow the steps in this document to install the package from the new location.

    Note your distribution and version and identify the closest entry for it under `https://packages.microsoft.com/config/[distro]/`.

    In the following commands, replace *[distro]* and *[version]* with the information you've identified.

    > [!NOTE]
    > In case of Oracle Linux and Amazon Linux 2, replace *[distro]* with "rhel". For Amazon Linux 2, replace *[version]* with "7". For Oracle utilize, replace *[version]* with the version of Oracle Linux.

  ```bash
  cat /srv/salt/install_mdatp.sls
  ```
  ```output
  add_ms_repo:
    pkgrepo.managed:
      - humanname: Microsoft Defender Repository
      {% if grains['os_family'] == 'Debian' %}
      - name: deb [arch=amd64,armhf,arm64] https://packages.microsoft.com/[distro]/[version]/[channel] [codename] main
      - dist: [codename] 
      - file: /etc/apt/sources.list.d/microsoft-[channel].list
      - key_url: https://packages.microsoft.com/keys/microsoft.asc
      - refresh: true
      {% elif grains['os_family'] == 'RedHat' %}
      - name: packages-microsoft-[channel]
      - file: microsoft-[channel]
      - baseurl: https://packages.microsoft.com/[distro]/[version]/[channel]/
      - gpgkey: https://packages.microsoft.com/keys/microsoft.asc
      - gpgcheck: true
      {% endif %}
  ```

- Add the package installed state to `install_mdatp.sls` after the `add_ms_repo` state defined above

    ```Output
    install_mdatp_package:
      pkg.installed:
        - name: matp
        - required: add_ms_repo
    ```

- Add the onboarding file deployment to `install_mdatp.sls` after the `install_mdatp_package` state defined above

    ```Output
    copy_mde_onboarding_file:
      file.managed:
        - name: /etc/opt/microsoft/mdatp/mdatp_onboard.json
        - source: salt://mde/mdatp_onboard.json
        - required: install_mdatp_package
    ```

    The completed install state file should look similar to this:

    ```Output
    add_ms_repo:
    pkgrepo.managed:
    - humanname: Microsoft Defender Repository
    {% if grains['os_family'] == 'Debian' %}
    - name: deb [arch=amd64,armhf,arm64] https://packages.microsoft.com/[distro]/[version]/prod [codename] main
    - dist: [codename] 
    - file: /etc/apt/sources.list.d/microsoft-[channel].list
    - key_url: https://packages.microsoft.com/keys/microsoft.asc
    - refresh: true
    {% elif grains['os_family'] == 'RedHat' %}
    - name: packages-microsoft-[channel]
    - file: microsoft-[channel]
    - baseurl: https://packages.microsoft.com/[distro]/[version]/[channel]/
    - gpgkey: https://packages.microsoft.com/keys/microsoft.asc
    - gpgcheck: true
    {% endif %}

    install_mdatp_package:
    pkg.installed:
    - name: matp
    - required: add_ms_repo
    
    copy_mde_onboarding_file:
    file.managed:
    - name: /etc/opt/microsoft/mdatp/mdatp_onboard.json
    - source: salt://mde/mdatp_onboard.json
    - required: install_mdatp_package
    ```

Create a SaltState state file in your configuration repository (typically `/srv/salt`) that applies the necessary states to offboard and remove Defender for Endpoint. Before using the offboarding state file, you need to download the offboarding package from the Security portal and extract it in the same way you did the onboarding package. The downloaded offboarding package is only valid for a limited period of time.

- Create an Uninstall state file `uninstall_mdapt.sls` and add the state to remove the `mdatp_onboard.json` file

    ```bash
    cat /srv/salt/uninstall_mdatp.sls
    ```
    ```Output
    remove_mde_onboarding_file:
      file.absent:
        - name: /etc/opt/microsoft/mdatp/mdatp_onboard.json
    ```

- Add the offboarding file deployment to the `uninstall_mdatp.sls` file after the `remove_mde_onboarding_file` state defined in the previous section
    ```Output
    offboard_mde:
      file.managed:
        - name: /etc/opt/microsoft/mdatp/mdatp_offboard.json
        - source: salt://mde/mdatp_offboard.json
    ```

- Add the removal of the MDATP package to the `uninstall_mdatp.sls` file after the `offboard_mde` state defined in the previous section
    ```Output
    remove_mde_packages:
      pkg.removed:
        - name: mdatp
    ```

    The complete uninstall state file should look similar to the following output:
    
    ```Output
    remove_mde_onboarding_file:
      file.absent:
        - name: /etc/opt/microsoft/mdatp/mdatp_onboard.json

    offboard_mde:
      file.managed:
        - name: /etc/opt/microsoft/mdatp/mdatp_offboard.json
        - source: salt://mde/offboard/mdatp_offboard.json

    remove_mde_packages:
      pkg.removed:
        - name: mdatp
    ```

## Deployment

Now apply the state to the minions. The below command applies the state to machines with the name that begins with `mdetest`.

- Installation:

    ```bash
    salt 'mdetest*' state.apply install_mdatp
    ```

    > [!IMPORTANT]
    > When the product starts for the first time, it downloads the latest antimalware definitions. Depending on your Internet connection, this can take up to a few minutes.

- Validation/configuration:

    ```bash
    salt 'mdetest*' cmd.run 'mdatp connectivity test'
    ```
    ```bash
    salt 'mdetest*' cmd.run 'mdatp health'
    ```

- Uninstallation:

    ```bash
    salt 'mdetest*' state.apply uninstall_mdatp
    ```

## Log installation issues

For more information on how to find the automatically generated log that is created by the installer when an error occurs, see [Log installation issues](linux-resources.md#log-installation-issues).

## Operating system upgrades

When upgrading your operating system to a new major version, you must first uninstall Defender for Endpoint on Linux, install the upgrade, and finally reconfigure Defender for Endpoint on Linux on your device.

## References

- [Add or remove YUM repositories](https://docs.Saltstack.com/Saltstack/latest/collections/Saltstack/builtin/yum_repository_module.html)

- [Manage packages with the dnf package manager](https://docs.Saltstack.com/Saltstack/latest/collections/Saltstack/builtin/dnf_module.html)

- [Add and remove APT repositories](https://docs.Saltstack.com/Saltstack/latest/collections/Saltstack/builtin/apt_repository_module.html)

- [Manage apt-packages](https://docs.Saltstack.com/Saltstack/latest/collections/Saltstack/builtin/apt_module.html)

## See also
- [Investigate agent health issues](health-status.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
