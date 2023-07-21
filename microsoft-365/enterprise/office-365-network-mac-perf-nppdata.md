---
title: "Microsoft 365 network provider assessments (PREVIEW)"
ms.author: teleary
author: temanteleary
manager: scotv
ms.date: 05/22/2023
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
description: "Microsoft 365 network provider assessments"
ROBOTS: NOINDEX, NOFOLLOW
---

# Microsoft 365 network provider assessments (PREVIEW)

Microsoft measures network performance and availability between client applications on user machines and Microsoft's network.

## Network performance

Read about the network performance assessment calculation method at [Microsoft 365 network assessment](office-365-network-mac-perf-score.md)

## Network availability

Network availability is measured from the client and is defined using this formula.

:::image type="content" source="../media/m365-mac-perf/m365-mac-perf-nppdata-availability.png" alt-text="Formula use to calculate network availability.":::

We receive notification of unsuccessful connections after network connectivity is restored.

## Detecting network providers

Network providers are detected from network attributes in Office 365 network telemetry. Network attributes that may be used for detection include:

* Public IP Address ownership
* Public ASN ownership
* VPN network interface details
* SSL Certificate ownership

Specific network attributes for a network provider solution are either obtained from public sources, from Microsoft network telemetry, or contributed to Microsoft by the network provider.

When a network provider solution is detected on network telemetry the Office 365 measured performance and availability from that connection is attributed to the network provider and aggregated. This isn't intended to represent the network provider but rather represents Office 365 performance and availability experienced by users as attributed to detected network providers.

## Calculation of standard error of sampling

What if you don't see the exact same measurement as our aggregation? Our aggregation of network telemetry is sample based and this sample represents the complete possible population of network connections that may be made. We calculate the standard error of sampling and present it along with results. If this error is greater than 20% or there are fewer than 24 samples, then we don't show the result, but instead show an error marker in the data field.

The formula used for the standard error is:

:::image type="content" source="../media/m365-mac-perf/m365-mac-perf-nppdata-standard-error.png" alt-text="Formula used to calculate the standard error of sampling.":::

Where:

* z is the statistical coefficient and for 95% confidence interval the value is 1.96
* c is the error coefficient for the percentile and for the 50th percentile it's 1.09
* σ is the standard deviation of the aggregation
* n is the number of samples

## Data aggregation slicing

For customer specific reporting the aggregations are sliced by the customer and by detected network provider and by work location type. They're also sliced by office location for drill-down capability. For the NPI Chart views including Target Baseline metrics are aggregations sliced by network provider and by country/region and state. The NPI Chart data is aggregated from all Office 365 customers.

For network providers the aggregations are sliced by network provider, by geography (including country/region, state, and city), and by /24 public network.

## Data aggregation statistical evaluations

There are some markers we show where data can't be reported.

* **Statistical significance** – As described above we don't show data where the standard error of sampling is greater than 20%.
* **No data** – This is displayed if for some reason this data element had no samples.
* **Privacy requirement** – This is displayed for the network provider view if there were fewer than five customers in any aggregation result or if there were fewer than 24 samples in the aggregation. We don't provide customer performance data directly to network providers for customer privacy reasons.
* **Dominating customer** – Even where there are five or more customers, there may be cases where a customer can be guessed due to the specific network provider having a large customer in a geographic area. To avoid this, we compare the population including the largest customer with the same population excluding the largest customer. Using a Cohen's D calculation, we discard results where the population difference is greater than 0.5. This means that where the largest customer has a medium to large Cohen's D effect on the aggregation result the result is blocked. A network provider simply needs to expand their geographic area where they have more customers to see results.

The markers **Privacy requirement** and **Dominating customer** aren't shown in customer reports.
In addition, we remove outliers from the sample source where outliers are defined as:

:::image type="content" source="../media/m365-mac-perf/m365-mac-perf-nppdata-outlier.png" alt-text="Formula used to calculate the network outlier cutoff.":::

Network providers will additionally not be shown in a tenant or location view if that network provider accounts for fewer than 0.01% of users represented in that view.

## Network Provider Index Chart

The Network Provider Index Chart (NPI Chart) shows aggregated performance and availability for network providers for a given State (or Province) and Country/region. The chart shows the largest network providers in that geography ordered by network performance. The chart also includes a Target Baseline entry, which shows average performance and availability for the best performing five network providers in the geography, excluding network providers with insignificant Office 365 usage.

## Related topics

[Network connectivity in the Microsoft 365 Admin Center](office-365-network-mac-perf-overview.md)

[Network provider reporting](office-365-network-mac-perf-nppux.md)

[Microsoft 365 network assessment](office-365-network-mac-perf-score.md)

[Microsoft 365 network connectivity test tool](office-365-network-mac-perf-onboarding-tool.md)

[Microsoft 365 Network Connectivity Location Services](office-365-network-mac-location-services.md)
