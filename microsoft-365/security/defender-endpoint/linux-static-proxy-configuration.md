---
title: Microsoft Defender for Endpoint on Linux static proxy discovery
ms.reviewer: gopkr
description: Describes how to configure Microsoft Defender for Endpoint on Linux, for static proxy discovery.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-linux
ms.topic: conceptual
ms.subservice: linux
search.appverid: met150
ms.date: 12/18/2020
---

# Configure Microsoft Defender for Endpoint on Linux for static proxy discovery

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

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

Note that installation and uninstallation will not necessarily fail if a proxy is required but not configured. However, telemetry won't be submitted, and the operation could take longer due to network timeouts.

## Post installation configuration

After installation, configure Defender for Endpoint with a static proxy. This can be done in two ways: 

### 1. Using mdatp command-line tool

Run  the following command on the endpoint to configure proxy for Defender for Endpoint
```bash
mdatp config proxy set --value http://address:port
```

### 2. Using managed configuration

Set the proxy in the managed configuration at `/etc/opt/microsoft/mdatp/managed/mdatp_managed.json`. This is an example of the json schema:
```
{
  "cloudService":{
    "proxy": "http://proxy.server:port/"
  }
}
```

A management tool of choice can be used to deploy the above configuration. Please check [Set preferences for Microsoft Defender for Endpoint on Linux](./linux-preferences.md) for more details on managed configuration.

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
