---
title: "Trainable classifiers definitions"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 09/09/2019
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

> [!IMPORTANT]
> Please note that the built-in trainable and global classifiers don't provide an exhaustive or complete list of terms or language across these areas. Further, language and cultural standards continually change, and in light of these realities, Microsoft reserves the right to update these classifiers in its discretion. While classifiers may assist your organization in detecting these areas, classifiers are not intended to provide your organization's sole means of detecting or addressing the use of such language. Your organization, not Microsoft or its subsidiaries, remains responsible for all decisions related to monitoring, scanning, blocking, removal, and retention of any content identified by a pre-trained classifier, including compliance with local privacy and other applicable laws. Microsoft encourages consulting with legal counsel before deployment and use.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Adult, racy, and gory images
 
|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects images that are potentially inappropriate. Scanning and detection are supported for Exchange Online email messages, and Microsoft Teams channels and chats. | Detects content in .jpeg, .png, .gif, and .bmp files. | N/A |

> [!NOTE]
> Images must be between 100 kilobytes (KB) and 4 megabytes (MB) in size and be greater than 50 x 50 pixels in height x width dimensions.

## Agreements

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
|Detects content related to legal agreements such as non-disclosure agreements, statements of work, loan and lease agreements, employment and non-compete agreements. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files. | English |

## Bank statement
 
|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects items that contain a financial transaction of a bank account including account information, deposits, withdrawals, account balance, interest accrued and bank charges within a given period. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files. | English|

## Budget

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects budget documents, budget forecasts and current budget statements including income and expenses of an organization.|  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |

## Business plan

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects components of a business plan including business opportunity, plan of achieving the outcomes, market study and competitor analysis. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files. | English |

## Completion Certificates

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects official documents that are issued at the end of a project or work by a project manager or a contractor. This document is used to testify that work on a particular project has been completed as per a contract or an agreement. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files. | English |

## Construction specifications

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects construction specifications for commercial and industrial projects like factories, plants, commercial offices, airports, roads. | Captures guidelines on the quality, quantity, types of building material, processes etc. Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files. | English |

## Corporate sabotage

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects messages that may mention acts to damage or destroy  corporate assets or property. This classifier can help customers manage regulatory compliance obligations such as NERC Critical Infrastructure Protection standards or state by state regulations like Chapter 9.05 RCW in Washington state. |  Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files.| English |
  
> [!IMPORTANT]
> This classifier may capture a large volume of bulk sender/newsletter content. In Communication Compliance, you can mitigate the detection of large volumes of bulk sender/newsletter content by selecting the **Filter email blasts** check box when you create the policy. You can also edit an existing Communication Compliance policy to turn on this feature.

## Customer complaints

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| The customer complaints classifier detects feedback and complaints made about your organization's products or services. This classifier can help you meet regulatory requirements on the detection and triage of complaints, like the Consumer Financial Protection Bureau and Food and Drug Administration requirements. | For Communications Compliance, it detects content in .msg, and .eml files. For the rest of Microsoft Purview Information Protection services, it detects content in .docx, .pdf, .txt, .rtf, .jpg, .jpeg, .png, .gif, .bmp, .svg files. | English |

## Discrimination

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects explicit discriminatory language and is sensitive to discriminatory language against the African American/Black communities when compared to other communities. | This applies to Communications Compliance, it's a text based classifier. | English |

## Employee disciplinary action

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects files relating to disciplinary action including a reprimand or corrective action in response to employee misconduct, rule violation, or poor performance. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files. | English |

## Employee insurance

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects documents pertaining to employee medical insurance and workplace disability insurance. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files. | English |

## Employment agreement

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects employment agreement containing details like the starting date, salary, compensation, duties of employment. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files. | English |

## Employee Pension Records

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects documents that are related to employee's pension records such as claim forms, declaration forms, schemes, and benefit statement. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .txt, .one, .msg, .eml files. | English |

## Employee Stocks and Financial Bond Records

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects documents that are related stock and financial bonds award by organization to employees. This classifier identifies employee stocks and financial bonds details which fall under employee's payroll. Contains details like bond clause, allocations, equity. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .txt, .one, .msg, .eml files. | English |

## Enterprise Risk Management

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Enterprise risk management includes financial risks, strategic risks, operational risks and risks associated with accidental losses. This category consists of methods used by organizations to manage risks and seize opportunities related to the achievement of their objectives. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt  files. | English |

## Finance

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects content in corporate finance, accounting, economy, banking, and investment categories. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |
  
## Financial audit

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects files, documents and reports pertaining to financial audit, both external or internal audit undertaken in an organization. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files. | English |

## Financial statement

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects financial statements like income statement, balance sheet, cash flow statement, statement of changes in equity. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |

## Freight Documents

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects documents that authorize the export or import of a good in a specific quantity from source to destination. This model categorizes different documents including Bill of Ladings, Certificate of Origin, Commercial Invoice, Export import customs declaration, Importer Security Filing (ISF). | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .txt, .one files. | English |

## Gifts & entertainment

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects messages that may suggest exchanging gifts or entertainment in return for service, which violates regulations related to bribery. This classifier can help customers manage regulatory compliance obligations such as  Foreign Corrupt Practices Act (FCPA), UK Bribery Act and FINRA Rule 2320.  | Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files. | English |

> [!IMPORTANT]
> This classifier may capture a large volume of bulk sender/newsletter content. In Communication Compliance, you can mitigate the detection of large volumes of bulk sender/newsletter content by selecting the **Filter email blasts** check box when you create the policy. You can also edit an existing Communication Compliance policy to turn on this feature.

## Harassment

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects a specific category of offensive language text items related to offensive conduct targeting one or multiple individuals based on the following traits: race, ethnicity, religion, national origin, gender, sexual orientation, age, disability. |  Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files. | Arabic <br> Chinese (Simplified) <br> Chinese (Traditional) <br> Dutch <br> English <br> French <br> German <br> Italian <br> Korean <br> Japanese <br> Portuguese <br> Spanish |

## Health/Medical forms

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects various forms and files that are used for systematic documentation of a patient's admission details, medical history, patient information and prior authorization request and are typically used in medical/health services. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files. | English |

## Healthcare

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects content in medical and healthcare administration aspects such as medical services, diagnoses, treatment, claims, etc. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |

## Human resources

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects content in human resources related categories of recruitment, interviewing, hiring, training, evaluating, warning, and termination. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |

## Invoice

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects invoices containing an itemized summary of the purchase, the total balance owed, current payment due, and various payment methods. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .eml, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |

## Intellectual property

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects content in intellectual property related categories such as trade secrets and similar confidential information. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |

## Information technology

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects content in information technology and cybersecurity categories such as network settings, information security, hardware, and software. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |

## Legal affairs

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects content in legal affairs-related categories such as litigation, legal process, legal obligation, legal terminology, law, and legislation. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files. | English |

## Legal Agreements

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects various legally binding documents/ contracts/ agreements like Arbitration agreements, Power of Attorney, Purchase Agreements between two parties. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .txt files. | English |

## License agreement

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects license agreements, contains terms and conditions for use and compensation for the licensor. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files. | English |

## Loan agreements and offer letters

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects loan agreements, offer letters and terms and conditions contained within the document. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files. | English |

## Merger and acquisition files

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects documents including letter of intent, term sheets and related files. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files. | English |

## Manufacturing batch records

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects manufacturing batch documents that include details around the entire manufacturing process and the history of a product batch. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files. | English |

## Meeting notes

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects documents and notes containing information specific to meetings. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files. | English |

## Money laundering

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects signs that may suggest money laundering or engagement in acts to conceal or disguise the origin or destination of proceeds. This classifier helps customers manage regulatory compliance obligations such as the Bank Secrecy Act, the USA Patriot Act, FINRA Rule 3310 and Anti-Money Laundering Act of 2020. | Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files. | English |

> [!IMPORTANT]
> This classifier may capture a large volume of bulk sender/newsletter content. In Communication Compliance, you can mitigate the detection of large volumes of bulk sender/newsletter content by selecting the **Filter email blasts** check box when you create the policy. You can also edit an existing Communication Compliance policy to turn on this feature.

## Network design files

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects technical documentation about networks of computers including various components of network, how they're connected, their architecture, how they perform and where they troubleshoot. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files. | English |

## Non-disclosure agreement

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects non-disclosure agreements (NDAs). | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files.| English |

## Paystub

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects paystub/salary statement files. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |

## Personal Financial Information

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects documents related to different personal financial records consisting of financial statements, real estate planning and retirement plans. Consists of details of all assets and liabilities held by an individual. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .txt, .one files. | English |

## Procurement

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects content in categories of bidding, quoting, purchasing, and paying for supply of goods and services. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |

## Project documents

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects project reports and documents, which include project planning documents, project charter documents and schedules. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files. | English |

## Profanity

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects a specific category of offensive language text items that contain expressions that embarrass most people. | Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files. | Arabic <br> Chinese (Simplified) <br> Chinese (Traditional) <br> Dutch <br> English <br> French <br> German <br> Italian <br> Korean <br> Japanese <br> Portuguese <br> Spanish |

## Quotation

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects documents that offer to sell goods or services for a set price, based on certain conditions. It contains a description of the goods or services, the price of the goods or rate of the service, the quantity, and a total cost. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .eml, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |

## Regulatory collusion

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects messages that may violate regulatory anti-collusion requirements such as an attempted concealment of sensitive information. This classifier can help customers manage  regulatory compliance obligations such as the Sherman Antitrust Act, Securities Exchange Act 1933, Securities Exchange Act of 1934, Investment Advisers Act of 1940, Federal Commission Act, and Robinson-Patman Act. |  Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files. | English |

> [!IMPORTANT]
> This classifier may capture a large volume of bulk sender/newsletter content. In Communication Compliance, you can mitigate the detection of large volumes of bulk sender/newsletter content by selecting the **Filter email blasts** check box when you create the policy. You can also edit an existing Communication Compliance policy to turn on this feature.

## Resume

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects a resume document that a job applicant provides an employer, which has a detailed statement of the candidate's prior work experience, education, and accomplishments. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .txt files. | English |

## Safety records

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects documents that are related to facility/factory safety. These documents can be facility safety plan, safety assessments and audit reports, emergency response and evacuation plan, and equipment’s inspection reports concerning safety measurements. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .txt, .one, .eml files. | English |

## Sales and revenue

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects sales reports, revenue/income statement and sales/demand forecasting reports for organizations. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa files. | English |

## Software product development files

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects files used in software development including product requirements document, product testing and planning, files including test cases, and test reports. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml files. | English |

## Source code

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects items that contain a set of instructions and statements written computer programming languages on GitHub: ActionScript, C, C#, C++, Clojure, CoffeeScript, Go, Haskell, Java, JavaScript, Lua, MATLAB, Objective-C, Perl, PHP, Python, R, Ruby, Scala, Shell, Swift, TeX, Vim Script.  | Detects content in .c, .h, .w, .cs, .cake, .csx, .cpp, .c++, .cc, .cp, .cxx, .hh, .hpp, .hxx, .java, .js, .m, .matlab, .pl, .perl, .pm, .prl, .ipb, .php, .php3, .php4, .php5, .py, .pyc, .pyo, .r, .rl, .rb, .irb, .swift, .as, .clj, .cljs, .cljc, .coffee, .Go, .hs, .hsc, .lua, .lub, .m, .mm, .scala, .sca, .Tex,T, .xs, . sh, .vim, .edn, .javac, .lhs, .mjs, .pod, .r, .rda, .RData, .rds, .rb, .bash, .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .eml, .msg, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla, .sc, .litcoffee files. | N/A |

> [!NOTE]
> Source code is trained to detect when the bulk of the text is source code. It does not detect source code text that is interspersed with plain text.

## Standard Operating Procedures and Manuals

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects sets of documented instructions created to help workers perform routine operations or manufacturing tasks. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files. | English |

## Statement of Accounts

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| A statement of account is a detailed report of the contents of an account. This classifier identifies documents related to Statement of accounts, Accounts Payable and Accounts Receivable.  | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, .xla files. | English |

## Statement of work

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects statement of work (SOW) containing details like requirements, responsibilities, terms and conditions for both parties.  | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files. | English |

## Stock manipulation

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects signs of possible stock manipulation, such as recommendations to buy, sell or hold stocks that may suggest an attempt to manipulate the stock price. This classifier can help customers manage regulatory compliance obligations such as the Securities Exchange Act of 1934, FINRA Rule 2372, and FINRA Rule 5270. | Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files. | English |

> [!IMPORTANT]
> This classifier may capture a large volume of bulk sender/newsletter content. In Communication Compliance, you can mitigate the detection of large volumes of bulk sender/newsletter content by selecting the **Filter email blasts** check box when you create the policy. You can also edit an existing Communication Compliance policy to turn on this feature.

## Tax documents

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects tax related content such as tax planning, tax forms, tax filing, tax regulations. |  Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt, .one, .msg, .eml, .pptx, .pptm, .ppt, .potx, .potm, .pot, .ppsx, .ppsm, .pps, .ppam, .ppa, .xlsx, .xlsm, .xlsb, .xls, .csv, .xltx, .xltm, .xlt, .xlam, xla files. | English |

## Threat

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects a specific category of offensive language text items related to threats to commit violence or do physical harm or damage to a person or property. |  Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files. | Arabic <br> Chinese (Simplified) <br> Chinese (Traditional) <br> Dutch <br> English <br> French <br> German <br> Italian <br> Korean <br> Japanese <br> Portuguese <br> Spanish |

## Unauthorized disclosure

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Detects sharing of information containing content that is explicitly designated as confidential or internal to unauthorized individuals. This classifier can help customers manage regulatory compliance obligations such as FINRA Rule 2010 and SEC Rule 10b-5. | Detects content in .msg, .docx, .pdf, .txt, .rtf, .jpeg, .jpg, .png, .gif, .bmp, .svg files. | English |

 > [!IMPORTANT]
> This classifier may capture a large volume of bulk sender/newsletter content. In Communication Compliance, you can mitigate the detection of large volumes of bulk sender/newsletter content by selecting the **Filter email blasts** check box when you create the policy. You can also edit an existing Communication Compliance policy to turn on this feature.

## Wire Transfer

|**Description**|**File types**|**Languages**|
|:-------------|:--------------|:--------------|
| Wire transfer is a method of electronic funds transfer from one person or entity to another. The model captures all the wire transfer receipts and acknowledgments. | Detects content in .docx, .docm, .doc, .dotx, .dotm, .dot, .pdf, .rtf, .txt files. | English |

## Word count requirements

Some classifiers have minimum word count requirements for messages. To identify and take action on messages containing inappropriate language content that don't meet the word count requirements listed in the table below, you can create a [custom keyword dictionary](communication-compliance-policies.md#custom-keyword-dictionaries) for communication compliance policies detecting this type of content.

|**Classifier**|**Minimum word count**|**Language**|
|:-------------|:--------------|:--------------|
| Threat, Harassment, and Profanity | 6 words | Dutch, French, German, Italian, Japanese, Portuguese, Spanish |
| Threat, Harassment, and Profanity | 12 words | Arabic, Chinese Simplified, Chinese Traditional, Korean |
| Threat and Harassment | 3 words | English |
| Profanity | 5 words | English |
| Corporate sabotage, Customer complaints, Gifts & entertainment, Money laundering, Regulatory collusion, Stock manipulation, and Unauthorized disclosure | 6 words | English |

## See also

- [Retention labels](retention.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Sensitivity labels](sensitivity-labels.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)
- [Document finger printing](document-fingerprinting.md)
- [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types)
