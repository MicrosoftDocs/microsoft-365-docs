---
title: Troubleshoot cloud connectivity issues for Microsoft Defender for Endpoint on Linux
ms.reviewer: 
description: Troubleshoot cloud connectivity issues for Microsoft Defender for Endpoint on Linux
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, cloud, connectivity, communication
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Troubleshoot cloud connectivity issues for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-investigateip-abovefoldlink)

## Run the connectivity test

To test if Defender for Endpoint on Linux can communicate to the cloud with the current network settings, run a connectivity test from the command line:

```bash
mdatp connectivity test
```

expected output:

```output
Testing connection with https://cdn.x.cp.wd.microsoft.com/ping ... [OK]
Testing connection with https://eu-cdn.x.cp.wd.microsoft.com/ping ... [OK]
Testing connection with https://wu-cdn.x.cp.wd.microsoft.com/ping ... [OK]
Testing connection with https://x.cp.wd.microsoft.com/api/report ... [OK]
Testing connection with https://winatp-gw-cus.microsoft.com/test ... [OK]
Testing connection with https://winatp-gw-eus.microsoft.com/test ... [OK]
Testing connection with https://winatp-gw-weu.microsoft.com/test ... [OK]
Testing connection with https://winatp-gw-neu.microsoft.com/test ... [OK]
Testing connection with https://winatp-gw-ukw.microsoft.com/test ... [OK]
Testing connection with https://winatp-gw-uks.microsoft.com/test ... [OK]
Testing connection with https://eu-v20.events.data.microsoft.com/ping ... [OK]
Testing connection with https://us-v20.events.data.microsoft.com/ping ... [OK]
Testing connection with https://uk-v20.events.data.microsoft.com/ping ... [OK]
Testing connection with https://v20.events.data.microsoft.com/ping ... [OK]
```

If the connectivity test fails, check if the device has Internet access and if [any of the endpoints required by the product](microsoft-defender-endpoint-linux.md#network-connections) are blocked by a proxy or firewall.

Failures with curl error 35 or 60, indicate certificate pinning rejection. Please check if the connection is under SSL or HTTPS inspection. If so, add Microsoft Defender for Endpoint to the allow list.

## Troubleshooting steps for environments without proxy or with transparent proxy

To test that a connection is not blocked in an environment without a proxy or with a transparent proxy, run the following command in the terminal:

```bash
curl -w ' %{url_effective}\n' 'https://x.cp.wd.microsoft.com/api/report' 'https://cdn.x.cp.wd.microsoft.com/ping'
```

The output from this command should be similar to:

```Output
OK https://x.cp.wd.microsoft.com/api/report
OK https://cdn.x.cp.wd.microsoft.com/ping
```

## Troubleshooting steps for environments with static proxy

> [!WARNING]
> PAC, WPAD, and authenticated proxies are not supported. Ensure that only a static proxy or transparent proxy is being used.
>
> SSL inspection and intercepting proxies are also not supported for security reasons. Configure an exception for SSL inspection and your proxy server to directly pass through data from Defender for Endpoint on Linux to the relevant URLs without interception. Adding your interception certificate to the global store will not allow for interception.

If a static proxy is required, add a proxy parameter to the above command, where `proxy_address:port` correspond to the proxy address and port:

```bash
curl -x http://proxy_address:port -w ' %{url_effective}\n' 'https://x.cp.wd.microsoft.com/api/report' 'https://cdn.x.cp.wd.microsoft.com/ping'
```

Ensure that you use the same proxy address and port as configured in the `/lib/system/system/mdatp.service` file. Check your proxy configuration if there are errors from the above commands.

> [!WARNING]
> The static proxy cannot be configured through a system-wide `HTTPS_PROXY` environment variable. Instead, ensure that `HTTPS_PROXY` is properly set in the `/lib/system/system/mdatp.service` file.

To use a static proxy, the `mdatp.service` file must be modified. Ensure the leading `#` is removed to uncomment the following line from `/lib/systemd/system/mdatp.service`:

```bash
#Environment="HTTPS_PROXY=http://address:port"
```

Also ensure that the correct static proxy address is filled in to replace `address:port`.

If this file is correct, try running the following command in the terminal to reload Defender for Endpoint on Linux and propagate the setting:

```bash
sudo systemctl daemon-reload; sudo systemctl restart mdatp
```

Upon success, attempt another connectivity test from the command line:

```bash
mdatp connectivity test
```

If the problem persists, contact customer support.

## Resources

- For more information about how to configure the product to use a static proxy, see [Configure Microsoft Defender for Endpoint for static proxy discovery](linux-static-proxy-configuration.md).
