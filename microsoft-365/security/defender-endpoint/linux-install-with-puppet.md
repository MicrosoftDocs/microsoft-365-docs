---
title: Deploy Microsoft Defender for Endpoint on Linux with Puppet
ms.reviewer: 
description: Describes how to deploy Microsoft Defender for Endpoint on Linux using Puppet.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, installation, deploy, uninstallation, puppet, ansible, linux, redhat, ubuntu, debian, sles, suse, centos, fedora, amazon linux 2
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
ms.date: 12/18/2020
---

# Deploy Microsoft Defender for Endpoint on Linux with Puppet

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

This article describes how to deploy Defender for Endpoint on Linux using Puppet. A successful deployment requires the completion of all of the following tasks:

- [Download the onboarding package](#download-the-onboarding-package)
- [Create Puppet manifest](#create-a-puppet-manifest)
- [Deployment](#deployment)
- [Check onboarding status](#check-onboarding-status)

[!INCLUDE [Microsoft Defender for Endpoint third-party tool support](../../includes/support.md)]


## Prerequisites and system requirements

 For a description of prerequisites and system requirements for the current software version, see [the main Defender for Endpoint on Linux page](microsoft-defender-endpoint-linux.md).

In addition, for Puppet deployment, you need to be familiar with Puppet administration tasks, have Puppet configured, and know how to deploy packages. Puppet has many ways to complete the same task. These instructions assume availability of supported Puppet modules, such as *apt* to help deploy the package. Your organization might use a different workflow. Refer to the [Puppet documentation](https://puppet.com/docs) for details.

## Download the onboarding package

Download the onboarding package from Microsoft 365 Defender portal.

[!INCLUDE [Defender for Endpoint repackaging warning](../../includes/repackaging-warning.md)]

1. In Microsoft 365 Defender portal, go to **Settings > Endpoints > Device management > Onboarding**.
2. In the first drop-down menu, select **Linux Server** as the operating system. In the second drop-down menu, select **Your preferred Linux configuration management tool** as the deployment method.
3. Select **Download onboarding package**. Save the file as WindowsDefenderATPOnboardingPackage.zip.

   :::image type="content" source="images/portal-onboarding-linux-2.png" alt-text="The option to download the onboarded package" lightbox="images/portal-onboarding-linux-2.png":::

4. From a command prompt, verify that you have the file. 

    ```bash
    ls -l
    ```

    ```Output
    total 8
    -rw-r--r-- 1 test  staff  4984 Feb 18 11:22 WindowsDefenderATPOnboardingPackage.zip
    ```

5. Extract the contents of the archive.

    ```bash
    unzip WindowsDefenderATPOnboardingPackage.zip
    ```

    ```Output
    Archive:  WindowsDefenderATPOnboardingPackage.zip
    inflating: mdatp_onboard.json
    ```

## Create a Puppet manifest

You need to create a Puppet manifest for deploying Defender for Endpoint on Linux to devices managed by a Puppet server. This example makes use of the *apt* and *yumrepo* modules available from puppetlabs, and assumes that the modules have been installed on your Puppet server.

Create the folders *install_mdatp/files* and *install_mdatp/manifests* under the modules folder of your Puppet installation. This folder is typically located in */etc/puppetlabs/code/environments/production/modules* on your Puppet server. Copy the mdatp_onboard.json file created above to the *install_mdatp/files* folder. Create an *init.pp* file that contains the deployment instructions:

```bash
pwd
```

```Output
/etc/puppetlabs/code/environments/production/modules
```

```bash
tree install_mdatp
```

```Output
install_mdatp
├── files
│   └── mdatp_onboard.json
└── manifests
    └── init.pp
```

### Contents of `install_mdatp/manifests/init.pp`

Defender for Endpoint on Linux can be deployed from one of the following channels (denoted below as *[channel]*): *insiders-fast*, *insiders-slow*, or *prod*. Each of these channels corresponds to a Linux software repository.

The choice of the channel determines the type and frequency of updates that are offered to your device. Devices in *insiders-fast* are the first ones to receive updates and new features, followed later by *insiders-slow* and lastly by *prod*.

In order to preview new features and provide early feedback, it is recommended that you configure some devices in your enterprise to use either *insiders-fast* or *insiders-slow*.

> [!WARNING]
> Switching the channel after the initial installation requires the product to be reinstalled. To switch the product channel: uninstall the existing package, re-configure your device to use the new channel, and follow the steps in this document to install the package from the new location.

Note your distribution and version and identify the closest entry for it under `https://packages.microsoft.com/config/[distro]/`.

In the below commands, replace *[distro]* and *[version]* with the information you've identified:

> [!NOTE]
> In case of RedHat, Oracle Linux, Amazon Linux 2, and CentOS 8, replace *[distro]* with 'rhel'.

```puppet
# Puppet manifest to install Microsoft Defender for Endpoint on Linux.
# @param channel The release channel based on your environment, insider-fast or prod.
# @param distro The Linux distribution in lowercase. In case of RedHat, Oracle Linux, Amazon Linux 2, and CentOS 8, the distro variable should be 'rhel'.
# @param version The Linux distribution release number, e.g. 7.4.

class install_mdatp (
  $channel = 'insiders-fast',
  $distro = undef,
  $version = undef
) {
  case $facts['os']['family'] {
    'Debian' : {
      $release = $channel ? {
        'prod'  => $facts['os']['distro']['codename'],
        default => $channel
      }
      apt::source { 'microsoftpackages' :
        location => "https://packages.microsoft.com/${distro}/${version}/prod",
        release  => $release,
        repos    => 'main',
        key      => {
          'id'     => 'BC528686B50D79E339D3721CEB3E94ADBE1229CF',
          'server' => 'keyserver.ubuntu.com',
        },
      }
    }
    'RedHat' : {
      yumrepo { 'microsoftpackages' :
        baseurl  => "https://packages.microsoft.com/${distro}/${version}/${channel}",
        descr    => "packages-microsoft-com-prod-${channel}",
        enabled  => 1,
        gpgcheck => 1,
        gpgkey   => 'https://packages.microsoft.com/keys/microsoft.asc',
      }
    }
    default : { fail("${facts['os']['family']} is currently not supported.") }
  }

  case $facts['os']['family'] {
    /(Debian|RedHat)/: {
      file { ['/etc/opt', '/etc/opt/microsoft', '/etc/opt/microsoft/mdatp']:
        ensure => directory,
        owner  => root,
        group  => root,
        mode   => '0755',
      }

      file { '/etc/opt/microsoft/mdatp/mdatp_onboard.json':
        source  => 'puppet:///modules/install_mdatp/mdatp_onboard.json',
        owner   => root,
        group   => root,
        mode    => '0600',
        require => File['/etc/opt/microsoft/mdatp'],
      }

      package { 'mdatp':
        ensure  => 'installed',
        require => File['/etc/opt/microsoft/mdatp/mdatp_onboard.json'],
      }
    }
    default : { fail("${facts['os']['family']} is currently not supported.") }
  }
}

```

## Deployment

Include the above manifest in your site.pp file:

```bash
cat /etc/puppetlabs/code/environments/production/manifests/site.pp
```

```Output
node "default" {
    include install_mdatp
}
```

Enrolled agent devices periodically poll the Puppet Server and install new configuration profiles and policies as soon as they are detected.

## Monitor Puppet deployment

On the agent device, you can also check the onboarding status by running:

```bash
mdatp health
```

```Output
...
licensed                                : true
org_id                                  : "[your organization identifier]"
...
```

- **licensed**: This confirms that the device is tied to your organization.

- **orgId**: This is your Defender for Endpoint organization identifier.

## Check onboarding status

You can check that devices have been correctly onboarded by creating a script. For example, the following script checks enrolled devices for onboarding status:

```bash
mdatp health --field healthy
```

The above command prints `1` if the product is onboarded and functioning as expected.

> [!IMPORTANT]
> When the product starts for the first time, it downloads the latest antimalware definitions. Depending on your Internet connection, this can take up to a few minutes. During this time the above command returns a value of `0`.

If the product is not healthy, the exit code (which can be checked through `echo $?`) indicates the problem:

- 1 if the device isn't onboarded yet.
- 3 if the connection to the daemon cannot be established.

## Log installation issues

 For more information on how to find the automatically generated log that is created by the installer when an error occurs, see [Log installation issues](linux-resources.md#log-installation-issues).

## Operating system upgrades

When upgrading your operating system to a new major version, you must first uninstall Defender for Endpoint on Linux, install the upgrade, and finally reconfigure Defender for Endpoint on Linux on your device.

## Uninstallation

Create a module *remove_mdatp* similar to *install_mdatp* with the following contents in *init.pp* file:

```bash
class remove_mdatp {
    package { 'mdatp':
        ensure => 'purged',
    }
}
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
