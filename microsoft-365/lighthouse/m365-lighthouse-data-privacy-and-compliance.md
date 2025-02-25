---
title: "Data privacy and compliance in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: iswillia
ms.date: 10/11/2024
audience: Admin
ms.topic: concept-article
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

This collaborative approach ensures that all involved parties take necessary steps to safeguard the data and uphold the highest standards of data privacy.

:::image type="content" source="../media/m365-lighthouse-data-privacy-and-compliance/terms-and-conditions.png" alt-text="Diagram that shows how terms and conditions apply to customer data and transparent operations.":::

## Data access

Data access is the authorized ability to access and use data. When it comes to accessing data in Lighthouse, Microsoft follows several key principles:

- **Openness:** Microsoft believes in openness and collaboration. Data should be accessible to everyone who needs it, and it should foster innovation and inform decision-making. Open-data initiatives promote transparency and enable cross-organizational collaboration.
- **Usability:** Data access should be straightforward and user-friendly. Microsoft provides tools, APIs, and interfaces that allow developers and users to interact with data efficiently. Usability ensures that data is accessible without unnecessary complexity.
- **Empowerment:** Data access empowers individuals, organizations, and communities. Enabling access to relevant data allows Microsoft to contribute to solving real-world challenges and make a positive impact on society.
- **Security:** Microsoft prioritizes security when promoting data access. Robust authentication, authorization, and encryption mechanisms protect data from unauthorized access. Security measures ensure that data remains confidential and integral.
- **Privacy:** Respecting user privacy is paramount. Microsoft adheres to privacy regulations and best practices. Data access shouldn't compromise individual privacy rights, and personal data must be handled responsibly.
 
These principles guide Microsoft's approach to data access. They emphasize responsible sharing and collaboration and foster innovation, while also safeguarding privacy and security.

### Data access relationships

In Lighthouse, data access relationships play a pivotal role in governing how MSPs interact with customer data. These relationships define the foundation for ethical and transparent data handling. The two key data access relationship types in Lighthouse include:

- **Delegated admin relationship**
    - **Role:** Delegated admins perform administrative tasks on behalf of customers to support customer success.
    - **Purpose:** This type of relationship streamlines routine actions like user management and service monitoring.
    - **Value added:** Fine-grained permissions ensure controlled access.

- **Reseller relationship**
    - **Role:** Resellers act as intermediaries between Microsoft services and users.
    - **Purpose:** They manage licensing, billing, and other services.
    - **Value added:** Resellers often provide additional support and expertise.

The reseller relationship is established to authorize MSPs to manage orders and purchases for the customer. This arrangement provides MSPs with visibility into the subscriptions the customer has acquired through them, ensuring that they can effectively support and service those subscriptions. It can take 24 hours or longer for changes in the reseller relationship to be reflected in Lighthouse. This procedural timeframe does not affect an MSP's pre-existing knowledge of the subscriptions.

Unlike the reseller relationship, the delegated admin relationship is established to authorize MSPs to access and manage the customer's data and resources. This relationship is based on the consent of the customer and can be revoked at any time. Changes to the delegated admin relationship are reflected immediately in Lighthouse, ensuring that access to customer data is protected in line with the privileges the customer has granted the MSP. This is especially important for scenarios such as security incident response, where timely and accurate data access is crucial.

These relationships ensure MSPs access data responsibly while enhancing customer satisfaction. By understanding and optimizing these connections, organizations can build a robust data ecosystem.

### Data feature areas

Data access relationships intersect with the following data feature areas:

- **Customer success insights**<br>
    These features include opportunities and subscription renewals and enable MSPs to offer proactive guidance and recommendations to their customers.
    - **Data source:** Lighthouse uses anonymized tenant-level usage data, which combines subscription information with aggregated insights. This approach ensures valuable analytics while safeguarding individual privacy. Lighthouse surfaces customer success insights from customers who have an active reseller relationship or delegated admin relationship with the MSP.
    - **Example:** By using the subscription renewals feature, an MSP can proactively connect with their customer to discuss their needs and take the appropriate actions to prevent a service interruption.

- **Customer management**<br>
    These features help MSPs monitor and manage customer data, devices, and users.
    - **Data source:** Lighthouse collects data from customers who have an active delegated admin relationship with the MSP and whose tenant was successfully onboarded to Lighthouse.
    - **Example:** By using the device compliance feature, an MSP can assess the status of customer devices and identify any issues affecting productivity and security.

By understanding these feature areas and their connection to data access relationships, organizations can navigate data responsibly while enhancing customer satisfaction.

## Data residency

Data residency refers to the physical location where data is stored and processed. Data privacy, protection laws, and regulations might vary by region and country, and some customers might prefer or require their data to reside in certain locations. MSPs should understand how Lighthouse handles data residency and which options are available for them and their customers.

Lighthouse processes and stores data in compliance with regional data protection laws and regulations. However, it's important to note that Lighthouse has different data residency commitments than other Microsoft 365 services. For example, some Microsoft 365 services allow customers to choose a specific country for their data processing and storage, whereas Lighthouse doesn't offer this option. MSPs and customers should be aware that Lighthouse processes and stores data in the region associated with the customer tenant.

This approach is designed to provide a consistent and unified experience for MSPs who manage customers in different regions. By processing and storing data in the customer tenant's region, Lighthouse can optimize performance, reliability, and scalability for these MSPs.

For more information on how Lighthouse handles data collection, see [Data collection for Microsoft 365 Lighthouse](m365-lighthouse-data-collection.md).

## Data removal

The data available in Lighthouse plays an important role in the valuable features and functions that Lighthouse provides for MSPs, such as optimized tenant management experiences and customer success insights. But what if you want to remove your data from Lighthouse? How do you remove it and what are the consequences?

Data removal is the process of withdrawing permission to access and use data that was previously granted to a service. Data removal may also involve stopping the access and use of data that's already stored by the service. This can be done without impacting an MSP's relationship with its customer, since the MSP can still perform other administrative actions on behalf of the customer. Data removal is a crucial aspect of data governance because it allows MSPs and customers to control their data and protect their privacy and security.

### Data removal for partner tenants

MSPs control whether Lighthouse can access and use their data. To remove their data from Lighthouse, MSPs can do one of the following:

- Contact Microsoft Support, who will process the partner tenant for offboarding from the Lighthouse service.
- Remove the service principals for Microsoft 365 Lighthouse on their own, if they have experience in managing service principals and Microsoft Entra ID.

By performing one of these actions, MSPs can maintain control over their data while discontinuing the use of Lighthouse. These actions result in losing access to the features and functions provided by Lighthouse, such as tenant management experiences and customer success insights.

### Data removal for customer tenants

Customers control whether Lighthouse can access and use their data. Withdrawing the ability for Lighthouse to access and use customer data can affect the MSP's ability to effectively manage and secure the customer tenant. Before making any changes to data access, customers should consider the following:

- Lighthouse might be the solution their MSP chose to provide the managed services that the customer purchased from the MSP.
- Lighthouse will no longer be able to provide the MSP with valuable insights into the configuration of the customer tenant and potential security issues might arise as a result.
 
If an MSP wants to prevent Lighthouse from accessing and using customer data, the MSP can inactivate the customer tenant. Inactivation can be a useful approach since it doesn't affect the delegated admin relationship or reseller relationship between the customer and the MSP. To inactivate a customer tenant, MSPs should follow these steps:

1. In the left navigation pane of Lighthouse, select **Tenants** to open the **Tenants** page.
2. Find the tenant that you want to inactivate, select the three dots (more actions) next to the tenant's name, and then select **Inactivate tenant**.
3. In the confirmation dialog, select **Confirm** to inactivate the tenant.
 
Alternatively, the customer can withdraw the MSP's ability to access or use the customer's data by ending the delegated admin relationship and reseller relationship that they have with the MSP. Before removing either relationship, it's important to consider the following:

- Removing the delegated admin relationship means the MSP can no longer perform admin actions on behalf of the customer, such as configuring services, resetting passwords, and much more.
- Removing the reseller relationship means the MSP will cancel any subscriptions the customer purchased through the MSP.
 
## Data restrictions

Data privacy and compliance are important aspects of using data in Lighthouse. The data restrictions are based on the product terms and conditions and the agreements that apply to the Cloud Solution Provider program. These agreements might change from time to time, and it's the responsibility of the MSP to follow them and consult with legal counsel as needed.

Data restrictions limit the use of data. For example, data can't be used for marketing or sales purposes. MSPs can use data in Lighthouse for customer success purposes only, and only if it doesn't violate data restrictions or the customer's privacy preferences. *Customer success purposes* ensure customers achieve their desired outcomes while using a product or service. *Marketing and sales purposes* involve persuading customers to buy a product or service.

Some examples of how data can be used for customer success include:

- Providing relevant and timely communications and feedback to customers.
- Helping customers to adopt and use the features and capabilities that best suit their needs and goals.
- Providing customers with additional value or services that enhance their experience and outcomes with Microsoft online services.
- Providing proactive guidance and support to customers to resolve issues and prevent problems.

## Data retention 

Lighthouse follows different data retention policies for different types of data that it collects from partner and customer tenants. The following table summarizes the data retention policies for each type of data, the deletion method, and the principles followed.

| Data type | Retention period | Deletion&nbsp;method | Principles followed |
|--|--|--|--|
| Data collected from customer tenants | 30 days | Automatic&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Data minimization, transparency, accountability |
| Data generated by MSPs through use of the Lighthouse service | Until deleted by the MSP or until the customer or MSP is offboarded | Manual | User control, consent |
| Diagnostic data collected from MSPs | 30 days | Automatic | Data minimization, transparency, accountability |

The data retention policies are designed to minimize the amount of customer data that's stored outside of customer tenants, while still providing valuable insights and actions for MSPs. The policies are also designed to help MSPs manage their customers effectively and efficiently. Data retention policies follow the principles of data minimization, transparency, accountability, user control, consent, and choice when managing data.

MSPs and customers can't configure data retention periods. When Lighthouse deletes data that's older than 30 days, it's permanently erased from the service and can't be recovered. The data isn't stored or transferred to any other location or service.

For more information, see [Data retention, deletion, and destruction in Microsoft 365](/compliance/assurance/assurance-data-retention-deletion-and-destruction-overview).

## Related content

[Microsoft Trust Center](https://www.microsoft.com/trust-center/product-overview) (link page)\
[Privacy at Microsoft](https://privacy.microsoft.com/) (link page)\
[Data collection for Microsoft 365 Lighthouse](m365-lighthouse-data-collection.md) (article)\
[Data retention, deletion, and destruction in Microsoft 365](/compliance/assurance/assurance-data-retention-deletion-and-destruction-overview) (article)\
[Microsoft Compliance Hub](/compliance/) (link page)