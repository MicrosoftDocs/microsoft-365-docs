---
title: Test Base FAQ
description: Review frequently asked questions
search.appverid: MET150
author: Tinacyt
ms.author: tinachen
manager: rshastri
audience: Software-Vendor
ms.topic: troubleshooting
ms.date: 07/06/2021
ms.service: test-base
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:
ms.reviewer: tinachen
f1.keywords: NOCSH
---

# Test Base FAQ

[!INCLUDE [test-base-deprecation](./includes/test-base-deprecation.md)]

## Test Base End-of-life(EOL)

**Q: When is Test Base end of life (EOL)?**

**A:** Test Base EOL is on May 31, 2024.

 

**Q: What does end of life (EOL) for Test Base mean?**

**A:** Test Base will reach EOL on May 31, 2024. The end-of-life (EOL) process for the Test Base for Microsoft 365 service started on March 4, 2024. From this date, no new features or updates are released for Test Base. Existing users will retain access to the service and their data until May 31, 2024. During this period, the service is available for testing, exporting data, and making necessary arrangements for the transition. Our team is dedicated to assisting you during this transition. If you have any feedback or questions regarding this decision, don't hesitate to contact our support team at [testbase_support@microsoft.com](mailto:testbase_support@microsoft.com).

 

**Q: Why did Microsoft decide to transition Test Base for Microsoft 365 to end of life (EOL)?**

**A:** Test Base for Microsoft 365 is a cloud-based app testing service on Azure that evaluates the compatibility of applications with new Windows releases or updates. While cloud-based app testing services are an intriguing option, the continuous innovation of Windows 11 has resolved a high percentage of application compatibility issues. Additionally, with greater support from application vendors, customers have less reliance on services such as Test Base. After carefully evaluating current demands, we have decided to discontinue Test Base and refocus our investments and resources.

 

**Q: What happens to the customer environment during the transition to EOL?**

**A:** During the transition to EOL, Test Base provides customers with instructions on how to complete the offboarding process. Our goal is to prevent any disruption to the business and users. All configurations used for management (configurations, policies, scripts, etc.) will remain in place. The customer can choose to maintain or remove them until May 31, 2024. After May 31, 2024, all customer environments and data will be permanently deleted.

 

**Q: Will Test Base offer an extension to the 60 days?**

**A:** No, Test Base won't offer an extension after May 31, 2024.

 

**Q: <a name="Does_have_solution"></a>Does Test Base have an alternative solution?**

**A:** There's no 1:1 replacement for Test Base. Microsoft remains committed to ensuring that the apps you rely upon continue to work as expected when you upgrade. There are still rich services and guidance that can help you ensure the compatibility of your applications:

- **App Assure**: If you run into compatibility issues or want to ensure that your organization's applications are compatible from day one, you may reach out to App Assure. With enrollment in the [App Assure](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Flearn.microsoft.com%2Fen-us%2Fwindows%2Fcompatibility%2Fapp-assure&data=05%7C02%7Cmiaoyuezhou%40microsoft.com%7C7a21782822d142dfe41908dc43ba47c0%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638459714580439514%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=B38PoXObefTHSHSKGHTiDlm7YzJmKkgn0TYz1AOAk4o%3D&reserved=0) service, any app compatibility issues that you find with Windows 11 can be resolved. Microsoft helps you remedy application issues at no cost. Since 2018, App Assure has evaluated almost 800,000 apps, and subscriptions are free for eligible customers with 150+ seats.
- **SUVP**: The [Security Update Validation Program (SUVP)](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Ftechcommunity.microsoft.com%2Ft5%2Fwindows-it-pro-blog%2Fsecurity-update-validation-program-the-early-bird-tests-the-worm%2Fba-p%2F2569392&data=05%7C02%7Cmiaoyuezhou%40microsoft.com%7C7a21782822d142dfe41908dc43ba47c0%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638459714580457417%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=T7B2DnRAe6p%2Fve3UlocDbYpdm%2FbSQKxEcLv7XszsOGE%3D&reserved=0) is a quality assurance testing program for Microsoft security updates, which are released on the second Tuesday of each month. The SUVP provides early access to Microsoft security updates—up to three weeks in advance of the official release—for the purpose of validation and interoperability testing. The program encompasses any Microsoft products for which we fix a vulnerability (for example: Windows, Office, Exchange, or SQL Server) and is limited to trusted customers under NDA who have been nominated by a Microsoft representative. To join SUVP program, contact [suvp@microsoft.com](mailto:suvp@microsoft.com).
- **Selfhost**: If you’re building your own service pipeline to validate Windows or Office update. This guidance and services could potentially help you: [Azure DevTest Labs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Flearn.microsoft.com%2Fazure%2Fdevtest-labs%2F&data=05%7C02%7Cmiaoyuezhou%40microsoft.com%7C7a21782822d142dfe41908dc43ba47c0%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638459714580469035%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=hCmHl7FT8L6Xkbg2FXfpnS34N3kII%2B8o%2B3UzxunNhzM%3D&reserved=0), [Security Update Guide](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fmsrc%2Ffaqs-security-update-guide&data=05%7C02%7Cmiaoyuezhou%40microsoft.com%7C7a21782822d142dfe41908dc43ba47c0%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638459714580479144%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=MwZ8J9f3BVzUopW9BOesvxo%2FP%2BHQ7fLqLVBsV4QNxHY%3D&reserved=0), [Office Deployment Tool](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Flearn.microsoft.com%2Fen-us%2Fdeployoffice%2Foverview-office-deployment-tool&data=05%7C02%7Cmiaoyuezhou%40microsoft.com%7C7a21782822d142dfe41908dc43ba47c0%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638459714580487089%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=sTWfQXK9exSm74Y4qqkha8mRW%2FQLU0DX7%2Fuq24Q3%2F6o%3D&reserved=0).

 

**Q: Will the service continue to be supported as usual during the end-of-life period before May 31?**

**A:** Starting from March 4, the service will no longer be actively maintained and supported. Existing users will retain access to the service and their data until May 31, 2024. During this period, users may continue to use the service for testing, export data, and make necessary arrangements for the transition.

 

**Q: Will there be new monthly security updates, feature updates and Office updates?**

**A:** For customers who have signed up for monthly security updates, their tests will continue to be triggered upon original configuration until May 31. Feature updates are paused after Build 22635.3212 in Beta Channel. Office updates are paused after Build 16.0.17328.20004. [Submit a support request](https://aka.ms/TestBaseSupport) if needed.

 

**Q: What if I need data from Test Base? Will I still access to my data?**

**A:** 
Customers will retain access to the service and data until May 31, 2024. Following this date, all customer data will be permanently deleted. During the transition, customers can retain automation test scripts, Test Base account records, or download test results for future reference. Refer to [Test Base documentation - Export your data](https://aka.ms/testbase-doc-exportdata) or contact us via [testbase_support@microsoft.com](mailto:testbase_support@microsoft.com) before May 31.

 

**Q: Who do I contact for Test Base support?**

**A:** The Test Base team is dedicated to assisting you during this transition. If you have any questions, please contact the Test Base support team at [testbase_support@microsoft.com](mailto:testbase_support@microsoft.com), or [submit a support request](https://aka.ms/TestBaseSupport).

 

**Q: What happens if I don't offboard before May 31, 2024?**

**A:** After May 31, 2024, all customer data will be permanently deleted. Any active accounts in Test Base will be automatically offboarded.

 

**Q: How long will my billing records be kept?**

**A:** Service level billing records retention policy follows Azure billing policy. To check service consumption details, refer to [View cost breakdown by Azure service - Microsoft Cost Management | Microsoft Learn](/azure/cost-management-billing/costs/cost-analysis-common-uses#view-cost-breakdown-by-azure-service). Usage level details in Test Base Billing Hub will be deleted on May 31. If usage records for future reference if needed, refer to [Test Base documentation - Export your data](https://aka.ms/testbase-doc-exportdata).

 

**Q: When will my last payment for Test Base usage be billed?**

**A:** Test Base follows Azure billing policy. Check in [Pay your Microsoft Customer Agreement or Microsoft Online Subscription Program Azure bill - Microsoft Cost Management | Microsoft Learn](/azure/cost-management-billing/understand/pay-bill)

 

**Q: What's the recommended transition or migration plan?**

**A:** The Test Base team is dedicated to assisting you during this transition. We would recommend to:

1. [Test Base documentation - Export your data](https://aka.ms/testbase-doc-exportdata).
2. Transit to other Microsoft compatibility supports (Check in [Does Test Base have an alternative solution?](#Does_have_solution))

If you have any questions, reach out to [testbase_support@microsoft.com](mailto:testbase_support@microsoft.com), or [submit a support request](https://aka.ms/TestBaseSupport).

 

**Q: What are the implications for my organization?**

**A:** Customers using Test Base for Microsoft 365 may expect:

- Starting from March 4, the end-of-life (EOL) process for the Test Base for Microsoft 365 service will begin. From this date, no new features or updates are released for Test Base.
- During the end-of-life period, customers can: continue to use the service for testing, export data, and make necessary arrangements for the transition.
- Access to the service and data will be retained until May 31, 2024.
- After May 31, 2024, all customer data will be permanently deleted.
 

**Q: How can I provide feedback about Test Base?**

**A:** To share your feedback about Test Base, select the **Feedback** icon at the bottom left of the portal. Include a screenshot with your submission to help Microsoft better understand your feedback.

You can also submit product suggestions and upvote other ideas at <testbasepreview@microsoft.com>.
