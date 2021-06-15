---
title: Microsoft Defender for Identity sensor health and settings in Microsoft 365 Defender 
description: Learn how to configure Microsoft Defender for Identity sensors and monitor their health in Microsoft 365 Defender 
ms.date: 06/07/2021
ms.topic: how-to
author: dcurwin
ms.author: dacurwin
ms.service: microsoft-defender-for-identity
manager: raynew
---

# Microsoft Defender for Identity sensor health and settings in Microsoft 365 Defender

**Applies to:**

- Microsoft 365 Defender
- Defender for Identity

This article explains how to configure and monitor [Microsoft Defender for Identity](/defender-for-identity) sensors in [Microsoft 365 Defender](/microsoft-365/security/defender/overview-security-center).

>[!IMPORTANT]
>As part of the convergence with Microsoft 365 Defender, some options and details have changed from their location in the Defender for Identity portal. Please read the details below to discover where to find both the familiar and new features.

## View Defender for Identity sensor settings and status

1. In [Microsoft 365 Defender](https://security.microsoft.com/), go to **Settings** and then **Identities**.

    ![Go to Settings, then Identities](../../media/defender-identity/settings-identities.png)

1. Select the **Sensors** page, which displays all of your Defender for Identity sensors. For each sensor, you'll see its name, its domain membership, the version number, if updates should be delayed, the service status, update status, health status, the number of health issues, and when the sensor was created.

    ![Sensor page](../../media/defender-identity/sensor-page.png)

    >[!NOTE]
    >In the Defender for Identity portal, the sensor settings and health information were in separate locations. Note that in Microsoft 365 Defender they're now on the same page.

1. If you select **Filters**, you can choose which filters will be available. Then with each filter, you can choose which sensors to display.

    ![Sensor filters](../../media/defender-identity/sensor-filters.png)

    ![Filtered sensor](../../media/defender-identity/filtered-sensor.png)

1. If you select one of the sensors, a pane will display with information about the sensor and its health status.

    ![Sensor details](../../media/defender-identity/sensor-details.png)

1. If you select any of the health issues, you'll get a pane with more details about them. If you choose a closed issue, you can reopen it from here.

    ![Issue details](../../media/defender-identity/issue-details.png)

1. If you select **Manage sensor**, a pane will open where you can configure the sensor details.

    ![Manage sensor](../../media/defender-identity/manage-sensor.png)

    ![Configure sensor details](../../media/defender-identity/configure-sensor-details.png)

1. In the **Sensors** page, you can export your list of sensors to a .csv file by selecting **Export**.

    ![Export list of sensors](../../media/defender-identity/export-sensors.png)

## Add a sensor

From the **Sensors** page, you can add a new sensor.

1. Select **Add sensor**.

    ![Add sensor](../../media/defender-identity/add-sensor.png)

1. A pane will open, providing you with a button to download the sensor installer and a generated access key.

    ![Download installer and access key](../../media/defender-identity/installer-and-access-key.png)

1. Select **Download installer** to save the package locally. The zip file includes the following files:

    - The Defender for Identity sensor installer

    - The configuration setting file with the required information to connect to the Defender for Identity cloud service

1. Copy the **Access key**. The access key is required for the Defender for Identity sensor to connect to your Defender for Identity instance. The access key is a one-time-password for sensor deployment, after which all communication is performed using certificates for authentication and TLS encryption. Use the **Regenerate key** button if you ever need to regenerate the new access key. It won't affect any previously deployed sensors, because it's only used for initial registration of the sensor.

1. Copy the package to the dedicated server or domain controller onto which you're installing the Defender for Identity sensor.

## Configure Directory Services account

To connect the sensor with your Active Directory domains, you'll need to configure Directory Services accounts.

1. In [Microsoft 365 Defender](https://security.microsoft.com/), go to **Settings** and then **Identities**.

    ![Go to Settings, then Identities](../../media/defender-identity/settings-identities.png)

1. Select **Directory Service accounts**. You'll see which accounts are associated with which domains.

    ![Directory Service accounts](../../media/defender-identity/directory-service-accounts.png)

1. If you select an account, a pane will open with the settings for that account.

    ![Account settings](../../media/defender-identity/account-settings.png)

1. To add a new Directory Services account, select **Create new account** and fill in the **Account name**, **Domain**, and **Password**. You can also choose if it's a **Group managed service account** (gMSA), and if it belongs to a **Single label domain**.

    ![New Directory Service account](../../media/defender-identity/new-directory-service-account.png)

1. Select **Save**.

## See also

- [Manage Defender for Identity security alerts](manage-security-alerts.md)
