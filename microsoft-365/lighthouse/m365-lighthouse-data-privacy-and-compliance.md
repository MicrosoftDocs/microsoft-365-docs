---
title: "Data privacy and compliance in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: iswillia
ms.date: 02/22/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-privacy
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about data privacy and compliance in Lighthouse."
---

# Data privacy and compliance in Microsoft 365 Lighthouse

Data privacy is the protection of data from misuse. It's also the ability for a person to decide how personal data is collected, shared, stored, and used. In today's world, data privacy is a critical concern because it can affect the reputation, security, and trust of everyone involved. By ensuring a person's right to control their personal data, organizations can not only safeguard sensitive information, but also maintain a positive reputation and meet expectations for transparency and trustworthiness.

> [!NOTE]
> This article is not a substitute for professional legal advice. You should consult your legal counsel for specific guidance on compliance with privacy regulations.

## Shared responsibility

Microsoft and Managed Service Providers (MSPs) share the responsibility for data protection when using data in Lighthouse. Both parties should ensure data protection aligns with Microsoft terms and conditions and complies with relevant regulations. The data protection roles and responsibilities are as follows:

- Microsoft is responsible for providing the Lighthouse service and ensuring it's compliant and secure.
- MSPs are responsible for using customer data in a responsible and transparent manner.
- Customers are responsible for granting and revoking the relationships that provide their MSP access to the data.

This collaborative approach ensures that all parties involved take necessary steps to safeguard the data and uphold the highest standards of data privacy.

Image placeholder

## Data access

Data access is the authorized ability to access and use data. When it comes to accessing data in Lighthouse, Microsoft follows several key principles:

- **Openness:** Microsoft believes in openness and collaboration. Data should be accessible to those who need it, and it should foster innovation and inform decision-making. Open-data initiatives promote transparency and enable cross-organizational collaboration.
- **Usability:** Data access should be straightforward and user-friendly. Microsoft provides tools, APIs, and interfaces that allow developers and users to interact with data efficiently. Usability ensures that data is accessible without unnecessary complexity.
- **Empowerment:** Data access empowers individuals, organizations, and communities. Enabling access to relevant data allows Microsoft to contribute to solving real-world challenges and make a positive impact on society.
- **Security:** While promoting data access, Microsoft prioritizes security. Robust authentication, authorization, and encryption mechanisms protect data from unauthorized access. Security measures ensure that data remains confidential and integral.
- **Privacy:** Respecting user privacy is paramount. Microsoft adheres to privacy regulations and best practices. Data access should not compromise individual privacy rights, and personal data must be handled responsibly.
 
These principles guide Microsoft's approach to data access. They emphasize responsible sharing and collaboration and foster innovation, while also safeguarding privacy and security.

### Data access relationships

In Lighthouse, data access relationships play a pivotal role in governing how MSPs interact with customer data. These relationships define the foundation for ethical and transparent data handling. The two key data access relationship types in Lighthouse include:

- **Delegated admin relationship**
    - **Role:** Delegated admins perform administrative tasks on behalf of customers.
    - **Purpose:** This type of relationship streamlines routine actions like user management and service monitoring.
    - **Value added:** Fine-grained permissions ensure controlled access.

- **Reseller relationship**
    - **Role:** Resellers act as intermediaries between Microsoft services and users.
    - **Purpose:** They manage licensing, billing, and other services.
    - **Value added:** Resellers often provide additional support and expertise.

These relationships ensure MSPs access data responsibly while enhancing customer satisfaction. By understanding and optimizing these connections, organizations can build a robust data ecosystem.

### Data feature areas

Data access relationships intersect with the following data feature areas:

- **Customer success insights**
    These features include opportunities and subscription renewals and enable MSPs to offer proactive guidance and recommendations to their customers.
    - **Data source:** Lighthouse leverages anonymized tenant-level usage data, which combines subscription information with aggregated insights. This approach ensures valuable analytics while safeguarding individual privacy.
    - **Example:** By using the subscription renewals feature, an MSP can proactively connect with their customer to discuss their needs and take the appropriate actions to prevent a service interruption.

- **Customer management**
    These features help MSPs monitor and manage customer data, devices, and users.
    - **Data source:** Lighthouse collects data from customers who have an active delegated admin relationship with the MSP and whose tenant has been successfully onboarded to Lighthouse.
    - **Example:** By using the device compliance feature, an MSP can assess the status of customer devices and identify any issues affecting productivity and security.

By understanding these feature areas and their connection to data access relationships, organizations can navigate data responsibly while enhancing customer satisfaction.

## Data residency

Data residency refers to the physical location where data is stored and processed. Data privacy, protection laws, and regulations may vary by region and country, and some customers may prefer or require their data to reside in certain locations. MSPs should understand how Lighthouse handles data residency and which options are available for them and their customers.

Lighthouse processes and stores data in compliance with regional data protection laws and regulations. However, it's important to note that Lighthouse has different data residency commitments than other Microsoft 365 services. For example, some Microsoft 365 services allow customers to choose a specific country for their data processing and storage, whereas Lighthouse does not offer this option. MSPs and customers should be aware that Lighthouse processes and stores data in the region associated with the customer tenant.

This approach is designed to provide a consistent and unified experience for MSPs who manage customers in different regions. By processing and storing data in the customer tenant's region, Lighthouse can optimize performance, reliability, and scalability for these MSPs.

For more information on how Lighthouse handles data collection, see [Data collection for Microsoft 365 Lighthouse](m365-lighthouse-data-collection.md).

## Data removal

The data available in Lighthouse plays an important role in the valuable features and functions that Lighthouse provides for MSPs, such as optimized tenant management experiences and customer success insights. But what if you want to remove your data from Lighthouse? How do you do that, and what are the consequences?

Data removal is the process of withdrawing permission to access and use data that was previously granted to a service. Data removal may also involve stopping the access and use of data that's already stored by the service. This can be done without impacting an MSP's relationship with its customers, since the MSP can still perform other administrative actions on behalf of the customers. Data removal is a crucial aspect of data governance because it allows MSPs and customers to control their data and protect their privacy and security.

### Data removal for partner tenants

MSPs control whether Lighthouse can access and use their data. To remove their data from Lighthouse, MSPs can do one of the following:

- Contact Microsoft Support, who will process the partner tenant for offboarding from the Lighthouse service.
- Remove the service principals for Microsoft 365 Lighthouse on their own, if they have experience in managing service principals and Microsoft Entra ID.
