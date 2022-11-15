---
title: "Trainable classifiers definitions"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- purview-compliance
- tier2
- m365solution-mip
- m365initiative-compliance
ms.custom: admindeeplinkMAC
search.appverid:
- MOE150
- MET150
description: "This is a list of all trainable classifiers, their definitions and all the file types they search through to find sensitive information"
---

# Trainable classifiers definitions

Microsoft Purview comes with multiple pre-trained classifiers. They appear in the **Microsoft Purview compliance portal** \> **Data classification** \> **Trainable classifiers** view with the status of `Ready to use`.

- **Adult, racy, and gory**: Detects images of these types. The images must be between 100 kilobytes (KB) and 4 megabytes (MB) in size and be greater than 50 x 50 pixels in height x width dimensions. Scanning and detection are supported for Exchange Online email messages, and Microsoft Teams channels and chats. Detects content in .jpeg, .png, .gif, and .bmp files.

- **Agreements**: Detects content related to legal agreements such as non-disclosure agreements, statements of work, loan and lease agreements, employment and non-compete agreements. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files.

- **Bank Statement (preview)**: Detects items that contain a financial transaction of a bank account including account information, deposits, withdrawals, account balance, interest accrued and bank charges within a given period. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files.

- **Budget (preview)**: Detects budget documents, budget forecasts and current budget statements including income and expenses of an organization. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **Business Plan (preview)**: Detects components of a business plan including business opportunity, plan of achieving the outcomes, market study and competitor analysis. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files.

- **Construction specifications (preview)**: Detects construction specifications for commercial and industrial projects like factories, plants, commercial offices, airports, roads. Captures guidelines on the quality, quantity, types of building material, processes etc. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files.

- **Corporate Sabotage (preview)**: Detects messages that may mention acts to damage or destroy  corporate assets or property. This classifier can help customers manage regulatory compliance obligations such as NERC Critical Infrastructure Protection standards or state by state regulations like Chapter 9.05 RCW in Washington state. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.  
> [!IMPORTANT] 
> While in preview, this classifier may capture a large volume of bulk sender/newsletter content due to a known issue. While they're in preview, you can address large volumes of bulk sender/newsletter content by adding the **Message is not sent to any of these domains condition** with a list of domains to exclude. 

- **Customer complaints**: The customer complaints classifier detects feedback and complaints made about your organization's products or services. This classifier can help you meet regulatory requirements on the detection and triage of complaints, like the Consumer Financial Protection Bureau and Food and Drug Administration requirements. For Communications Compliance, it detects content in .msg, and .eml files. For the rest of Microsoft Purview Information Protection services, it detects content in .docx, .pdf, .txt, .rtf, .jpg, .jpeg, .png, .gif, .bmp, .svg files.

- **Discrimination**: Detects explicit discriminatory language and is sensitive to discriminatory language against the African American/Black communities when compared to other communities. This applies to Communications Compliance, it's a text based classifier.

- **Employee disciplinary action files (preview)**: Detects files relating to disciplinary action including a reprimand or corrective action in response to employee misconduct, rule violation, or poor performance. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files.

- **Employee Insurance files (preview)**: Detects documents pertaining to employee medical insurance and workplace disability insurance. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files.

- **Employment Agreement (preview)**: Detects employment agreement containing details like the starting date, salary, compensation, duties of employment. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files.

- **Finance**: Detects content in corporate finance, accounting, economy, banking, and investment categories. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **Financial Audit Reports (preview)**: Detects files, documents and reports pertaining to financial audit, both external or internal audit undertaken in an organization. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files.

- **Financial Statement (preview)**: Detects financial statements like income statement, balance sheet, cash flow statement, statement of changes in equity. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **Gifts & entertainment (preview)**: Detects messages that may suggest exchanging gifts or entertainment in return for service, which violates regulations related to bribery. This classifier can help customers manage regulatory compliance obligations such as  Foreign Corrupt Practices Act (FCPA), UK Bribery Act and FINRA Rule 2320. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.
> [!IMPORTANT] 
> While in preview, this classifier may capture a large volume of bulk sender/newsletter content due to a known issue. While they're in preview, you can address large volumes of bulk sender/newsletter content by adding the **Message is not sent to any of these domains condition** with a list of domains to exclude. 

- **Harassment**: Detects a specific category of offensive language text items related to offensive conduct targeting one or multiple individuals based on the following traits: race, ethnicity, religion, national origin, gender, sexual orientation, age, disability. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.

- **Health/Medical forms (preview)**: Detects various forms and files that are used for systematic documentation of a patient's admission details, medical history, patient information and prior authorization request and are typically used in medical/health services. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files.

- **Healthcare**: Detects content in medical and healthcare administration aspects such as medical services, diagnoses, treatment, claims, etc. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **HR**: Detects content in human resources related categories of recruitment, interviewing, hiring, training, evaluating, warning, and termination. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **Invoice (preview)**: Detects invoices containing an itemized summary of the purchase, the total balance owed, current payment due, and various payment methods. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .eml, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **IP**: Detects content in Intellectual Property related categories such as trade secrets and similar confidential information. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **IT**: Detects content in Information Technology and Cybersecurity categories such as network settings, information security, hardware, and software. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **Legal affairs**: Detects content in legal affairs-related categories such as litigation, legal process, legal obligation, legal terminology, law, and legislation. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files.

- **License Agreement (preview)**: Detects license agreements, contains terms and conditions for use and compensation for the licensor. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files.

- **Loan Agreements and offer letters (preview)**: Detects loan agreements, offer letters and terms and conditions contained within the document. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files.

- **Merger and Acquisition Files (preview)**: This classifier detects documents including letter of intent, term sheets and related files. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files.

- **Manufacturing batch records (preview)**: This classifier detects manufacturing batch documents that include details around the entire manufacturing process and the history of a product batch. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files.

- **Meeting Notes** (preview): This classifier detects meeting notes. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files.

- **Money laundering (preview)**: Detects signs that may suggest money laundering or engagement in acts to conceal or disguise the origin or destination of proceeds. This classifier can help customers manage regulatory compliance obligations such as the Bank Secrecy Act, the USA Patriot Act, FINRA Rule 3310 and Anti-Money Laundering Act of 2020. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.
> [!IMPORTANT] 
> While in preview, this classifier may capture a large volume of bulk sender/newsletter content due to a known issue. While they're in preview, you can address large volumes of bulk sender/newsletter content by adding the **Message is not sent to any of these domains condition** with a list of domains to exclude. 

- **Network Design files (preview)**: This classifier detects technical documentation about networks of computers including various components of network, how they're connected, their architecture, how they perform and where they troubleshoot Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files.

- **Non Disclosure Agreement (preview)**: This classifier detects non-disclosure agreements. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files.

- **Paystub (preview)**: This classifier detects paystub/salary statement files. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **Procurement**: Detects content in categories of bidding, quoting, purchasing, and paying for supply of goods and services. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files.

- **Project Documents (preview)**: This classifier detects project reports and documents, which include project planning documents, project charter documents and schedules. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files.

- **Profanity**: Detects a specific category of offensive language text items that contain expressions that embarrass most people. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.

- **Regulatory collusion (preview)**: Detects    messages that may violate regulatory anti-collusion requirements such as an attempted concealment of sensitive information. This classifier can help customers manage  regulatory compliance obligations such as the Sherman Antitrust Act, Securities Exchange Act 1933, Securities Exchange Act of 1934, Investment Advisers Act of 1940, Federal Commission Act, and Robinson-Patman Act. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.
> [!IMPORTANT] 
> While in preview, this classifier may capture a large volume of bulk sender/newsletter content due to a known issue. While they're in preview, you can address large volumes of bulk sender/newsletter content by adding the **Message is not sent to any of these domains condition** with a list of domains to exclude. 

- **Resume**: This classifier detects resume. A resume is a document that a job applicant provides an employer, which has a detailed statement of the candidate's prior work experience, education, and accomplishments. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .txt files.

- **Sales and revenue (preview)**: This classifier detects sales reports, revenue/income statement and sales/demand forecasting reports for organizations. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files.

- **Software Product Development Files (preview)**: This classifier detects files used in software development including product requirements document, product testing and planning, files including test cases, and test reports. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files.

- **Source code**: detects items that contain a set of instructions and statements written computer programming languages on GitHub: ActionScript, C, C#, C++, Clojure, CoffeeScript, Go, Haskell, Java, JavaScript, Lua, MATLAB, Objective-C, Perl, PHP, Python, R, Ruby, Scala, Shell, Swift, TeX, Vim Script. Detects content in .msg, .as, .h, .c, .cs, .cc, .cpp, .hpp, .cxx, .hh, .c++, .clj, .edn, .cljc, .cljs, .coffee, .litcoffee, .go, .hs, .lhs, .java, .jar, .js, .mjs, .lua, .m, .mm, .pl, .pm, .t, .xs, .pod, .php, .phar, .php4, .pyc, .R, .r, .rda, .RData, .rds, .rb, .scala, .sc, .sh, .swift files.

  > [!NOTE]
  > Source Code is trained to detect when the bulk of the text is source code. It does not detect source code text that is interspersed with plain text.

- **Statement of Work (preview)**: This classifier detects statement of work containing details like requirements, responsibilities, terms and conditions for both parties. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files.

- **Stock manipulation (preview)**: Detects signs of possible stock manipulation, such as recommendations to buy, sell or hold stocks that may suggest an attempt to manipulate the stock price. This classifier can help customers manage regulatory compliance obligations such as the Securities Exchange Act of 1934, FINRA Rule 2372, and FINRA Rule 5270. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.
> [!IMPORTANT] 
> While in preview, this classifier may capture a large volume of bulk sender/newsletter content due to a known issue. While they're in preview, you can address large volumes of bulk sender/newsletter content by adding the **Message is not sent to any of these domains condition** with a list of domains to exclude.   

- **Tax**: Detects tax related content such as tax planning, tax forms, tax filing, tax regulations. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, xla files.

- **Threat**: Detects a specific category of offensive language text items related to threats to commit violence or do physical harm or damage to a person or property. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.

- **Unauthorized disclosure (preview)**: Detects sharing of information containing content that is explicitly designated as confidential or internal to unauthorized individuals. This classifier can help customers manage regulatory compliance obligations such as FINRA Rule 2010 and SEC Rule 10b-5. Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.
> [!IMPORTANT] 
> While in preview, this classifier may capture a large volume of bulk sender/newsletter content due to a known issue. While they're in preview, you can address large volumes of bulk sender/newsletter content by adding the **Message is not sent to any of these domains condition** with a list of domains to exclude. 





> [!IMPORTANT]
> Please note that the built-in trainable and global classifiers don't provide an exhaustive or complete list of terms or language across these areas. Further, language and cultural standards continually change, and in light of these realities, Microsoft reserves the right to update these classifiers in its discretion. While classifiers may assist your organization in detecting these areas, classifiers are not intended to provide your organization's sole means of detecting or addressing the use of such language. Your organization, not Microsoft or its subsidiaries, remains responsible for all decisions related to monitoring, scanning, blocking, removal, and retention of any content identified by a pre-trained classifier, including compliance with local privacy and other applicable laws. Microsoft encourages consulting with legal counsel before deployment and use.

Our Threat, Profanity, and Harassment classifiers can scan content in these languages:

- Arabic
- Chinese (Simplified)
- Chinese (Traditional)
- Dutch
- English
- French
- German
- Italian
- Korean
- Japanese
- Portuguese
- Spanish

All others are English only.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## See also

- [Retention labels](retention.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Sensitivity labels](sensitivity-labels.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
- [Document finger printing](document-fingerprinting.md)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
