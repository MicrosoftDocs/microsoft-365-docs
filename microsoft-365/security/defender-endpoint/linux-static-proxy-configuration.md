---
title: Microsoft Defender for Endpoint on Linux static proxy discovery
ms.reviewer:
description: Describes how to configure Microsoft Defender for Endpoint on Linux, for static proxy discovery.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, installation, proxy
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

# Configure Microsoft Defender for Endpoint on Linux for static proxy discovery

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

Microsoft Defender for Endpoint can discover a proxy server using the `HTTPS_PROXY` environment variable. This setting must be configured **both** at installation time and after the product has been installed.

## Installation time configuration

During installation, the `HTTPS_PROXY` environment variable must be passed to the package manager. The package manager can read this variable in any of the following ways:

- The `HTTPS_PROXY` variable is defined in `/etc/environment` with the following line:

  ```bash
  HTTPS_PROXY="http://proxy.server:port/"
  ```

- The `HTTPS_PROXY` variable is defined in the package manager global configuration. For example, in Ubuntu 18.04, you can add the following line to `/etc/apt/apt.conf.d/proxy.conf`:

  ```bash
  Acquire::https::Proxy "http://proxy.server:port/";
  ```

  > [!CAUTION]
  > Note that above two methods could define the proxy to use for other applications on your system. Use this method with caution, or only if this is meant to be a generally global configuration.

- The `HTTPS_PROXY` variable is prepended to the installation or uninstallation commands. For example, with the APT package manager, prepend the variable as follows when installing Microsoft Defender for Endpoint:

  ```bash
  HTTPS_PROXY="http://proxy.server:port/" apt install mdatp
  ```

  > [!NOTE]
  > Do not add sudo between the environment variable definition and apt, otherwise the variable will not be propagated.

The `HTTPS_PROXY` environment variable may similarly be defined during uninstallation.

Note that installation and uninstallation will not necessarily fail if a proxy is required but not configured. However, telemetry will not be submitted, and the operation could take much longer due to network timeouts.

## Post installation configuration

After installation, configure Defender for Endpoint with static proxy using the following method:

```bash
mdatp config proxy set --value http://address:port
```
> [!NOTE]
> This method works for every distribution of Defender for Endpoint on Linux and is **Recommended**.


The `HTTPS_PROXY` environment variable must be defined in the Defender for Endpoint service file. To do this, run `sudo systemctl edit --full mdatp.service`.
You can then propagate the variable to the service in one of two ways:

1) Uncomment the line `#Environment="HTTPS_PROXY=http://address:port"` and specify your static proxy address.

2) Add a line `EnvironmentFile=/path/to/env/file`. This path can point to `/etc/environment` or a custom file, either of which needs to add the following line:

  ```bash
  HTTPS_PROXY="http://proxy.server:port/"
  ```

After modifying `mdatp.service`, save the file and restart the service so the changes can be applied using the following commands:

```bash
sudo systemctl daemon-reload; sudo systemctl restart mdatp
```
> [!NOTE]
> To remove any additions you might have made before uninstalling `mdatp`, delete the custom file from `/etc/systemd/system`.

> [!NOTE]
> Red Hat Enterprise Linux 6.X and CentOS 6.X don't support **systemctl** and **/etc/environment** methods. To configure static proxy for MDE on these distributions, use the Recommended **mdatp config proxy set** method.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
