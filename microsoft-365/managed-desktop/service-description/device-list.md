---
title: Microsoft Managed Desktop devices
description:  This topic lists the device specifications used in Microsoft Managed Desktop.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: trudyha
ms.localizationpriority: normal
ms.date: 11/2/2018
---

# Microsoft Managed Desktop devices

Microsoft Managed Desktop regularly evaluates devices to be included in the service. This topic outlines the requirements for a device to be enrolled in Microsoft Managed Desktop.

For more information on Microsoft Managed Desktop, see [Microsoft Managed Desktop documentation and resources](https://docs.microsoft.com/microsoft-365/managed-desktop/). 

<!-- Microsoft 365 E5; Device as a Service -->
<!-- Split from device & technologies topic. Destination topic for aka.ms/device-list  -->
To be enrolled in Microsoft Managed Desktop a device must be one of the following models and meet or exceed the listed specifications for RAM, processor speed, and disk space. Add-on devices, such as additional graphics cards, are not currently allowed.

<table>
<tr><th colspan="6">Microsoft Managed Desktop Devices</th></tr>
<tr><th>Model</th><th>Minimum Specs</th><th>Additional Requirements</th><th>Approval Date&#8308;</th><th>Archive Date&#8308;</th><th>Retirement Date&#8308;</th></tr>
<tr><td>Dell Latitude 5490</td><td>512 GB / Intel i7 / 16 GB RAM</td><td>N/A</td><td>Feb 15, 2019</td><td>Feb 15, 2021</td><td>Feb 15, 2024</td></tr>
<tr><td>Dell Latitude 7390 2-in-1</td><td>512 GB / Intel i7 / 16 GB RAM</td><td>N/A</td><td>Feb 15, 2019</td><td>Feb 15, 2021</td><td>Feb 15, 2024</td></tr>
<tr><td>Dell Precision M3530</td><td>512 GB / Intel i7 / 16 GB RAM</td><td>N/A</td><td>Feb 15, 2019</td><td>Feb 15, 2021</td><td>Feb 15, 2024</td></tr>
<tr><td>HP Elite x2 1013 G3&#8309;</td><td>512 GB / Intel i7 / 16 GB RAM</td><td>SKU: 5VS03AV;<br /> Must select either Fingerprint reader or IR Camera</td><td>Feb 15, 2019</td><td>Feb 15, 2021</td><td>Feb 15, 2024</td></tr>
<tr><td>HP Elitebook 840 G5&#8309;</td><td>512 GB / Intel i7 / 16 GB RAM</td><td>SKU: 5VS01AV;<br /> Must select either Fingerprint reader or IR Camera</td><td>Feb 15, 2019</td><td>Feb 15, 2021</td><td>Feb 15, 2024</td></tr>
<tr><td>HP Elitebook x360 1030&#8309;</td><td>512 GB / Intel i7 / 16 GB RAM</td><td>SKU: 5VS01AV</td><td>Feb 15, 2019</td><td>Feb 15, 2021</td><td>Feb 15, 2024</td></tr>
<tr><td>HP Elitebook x360 1040&#8309;</td><td>512 GB / Intel i7 / 16 GB RAM</td><td>SKU: 5VS01AV</td><td>Feb 15, 2019</td><td>Feb 15, 2021</td><td>Feb 15, 2024</td></tr>
<tr><td>HP Probook x360 1030&#8309;</td><td>512 GB / Intel i7 / 16 GB RAM</td><td>SKU: 5VS04AV;<br /> Must select either Fingerprint reader or IR Camera</td><td>Feb 15, 2019</td><td>Feb 15, 2021</td><td>Feb 15, 2024</td></tr>
<tr><td>Surface Book 2&#x00B2;</td><td>512 GB / Intel i7 / 16 GB RAM</td><td>15-inch display</td><td>Sep 17, 2018</td><td>Sep 17, 2020</td><td>Sep 17, 2023</td></tr>
<tr><td>Surface Go&#x00B2;</td><td>128 GB / Intel 4415Y / 8GB RAM</td><td>N/A</td><td>Oct 31, 2018</td><td>Oct 31, 2020</td><td>Oct 31, 2023</td></tr>
<tr><td>Surface Laptop&#x00B2;</td><td>256 GB / Intel i5 / 8 GB RAM</td><td>N/A</td><td>Sep 17, 2018</td><td>May 20, 2019</td><td>May 20, 2022</td></tr>
<tr><td>Surface Laptop 2&#x00B2;</td><td>256 GB / Intel i5 / 8 GB RAM </td><td>N/A</td><td>Nov 26, 2018</td><td>Nov 26, 2020</td><td>Nov 26, 2023</td></tr>
<tr><td>Surface Pro&#x00B2;</td><td> 256 GB / Intel i5 / 8 GB RAM</td><td>N/A</td><td>Sep 17, 2018</td><td>May 20, 2019</td><td>May 20, 2022</td></tr>
<tr><td>Surface Pro 6&#x00B2;</td><td>256 GB / Intel i5 / 8 GB RAM</td><td>N/A</td><td>Dec 7, 2018</td><td>Dec 7, 2020</td><td>Dec 7, 2023</td></tr>
</table>

In addition, the device must also:     

- Have an image that&#x00B3;:
    - Has the most recent Windows 10 Pro or Enterprise release or immediate previous release;
    - Has the most recent version of Microsoft Office 365 Click to Run or immediate previous release;
    - Has the latest OEM-provided drivers installed; and
    - Has no additional preloaded software
- Not have completed the Windows first-run experience.
- Be enrolled with Windows Autopilot and have the Microsoft Managed Desktop Autopilot profile assigned.

**Footnotes**

&#x00B9; Additions can be made to this list at any time. Removals will be posted to this page 90 days prior to disallowing those devices from enrolling.

&#x00B2; For more information on capabilities and features of these devices, see [Compare Surface devices](https://www.microsoft.com/surface/devices/compare-devices).

&#x00B3; This can be implemented either through a new device acquisition or by re-imaging a previously acquired device. The Surface Laptop 2, Pro 6, and Go devices meet these requirements from the factory and only require re-imaging if they were previously used as a non-MMD device per the first-run requirement.

&#8308; Approval date corresponds to the day the model was officially added to the Microsoft Managed Desktop catalog. Archive date refers to the date on which these models will be subject to partial service life for ITaaS. Retirement date refers to the date on which this model will no longer be supported by Microsoft Managed Desktop.

&#8309; For more questions on HP devices contact <a href="mailto:mmd@hp.com">mmd@hp.com</a>.

