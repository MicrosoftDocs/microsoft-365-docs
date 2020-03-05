---
title: "Office 365 encryption chains - ITAR"
f1.keywords:
- NOCSH
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 3/5/2020
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection:
- M365-security-compliance
- Strat_O365_IP
description: "View a complete list of ITAR root certificates and certificate authorities (CAs) in Office 365."
---

# Office 365 encryption chains - ITAR

Office 365 leverages a number of different certificate providers. The following describes the complete list of known Office 365 root certificates that ITAR customers (Defense & GCC High) may encounter when accessing Office 365. For information on the certificates you may need to install in your own infrastructure, see [Plan for third-party SSL certificates for Office 365](https://docs.microsoft.com/office365/enterprise/plan-for-third-party-ssl-certificates). The following certificate information applies to all ITAR customers (Defense & GCC High).

>[!NOTE]
>For certificate information that applies to worldwide customers, see [Office 365 encryption chains](encryption-office-365-certificate-chains.md).

| **Certificate type** | **P7b download** | **CRL Endpoints** | **OCSP Endpoints** | **AIA Endpoints** |
| --- | --- | --- | --- | --- |
| Publicly Trusted Root and Intermediate Certificates | [Office 365 ITAR Certificate Bundle (P7B)](https://download.microsoft.com/download/b/3/a/b3ae08a2-516c-46a9-8723-6256e4fd6383/O365_Chain_Certs_ITAR20200304.p7b) | crl.globalsign.net<br>www.d-trust.net<br>cdp1.public-trust.com<br>crl.entrust.net<br>crl.globalsign.com<br>crl.globalsign.net<br>crl.identrust.com<br>crl.thawte.com<br>crl3.digicert.com<br>crl4.digicert.com<br>s1.symcb.com<br>www.d-trust.net | isrg.trustid.ocsp.identrust.com<br>ocsp.digicert.com<br>ocsp.entrust.net<br>ocsp.globalsign.com<br>ocsp.omniroot.com<br>ocsp.startssl.com<br>ocsp.thawte.com<br>ocsp2.globalsign.com<br>root-c3-ca2-2009.ocsp.d-trust.net<br>root-c3-ca2-ev-2009.ocsp.d-trust.net<br>s2.symcb.com | aia.startssl.com<br>apps.identrust.com<br>cacert.omniroot.com |

Expand the root and intermediate sections below to see additional details about the certificate providers.

## **Office 365 Root Certificate Details**

### **Baltimore CyberTrust Root**

| **Subject** | CN=Baltimore CyberTrust Root<br>OU=CyberTrust<br>O=Baltimore<br>C=IE |
| --- | --- |
| **Serial Number** | 02:00:00:B9 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha1RSA |
| **Validity Not Before** | May 12 18:46:00 2000 UTC |
| **Validity Not After** | May 12 23:59:00 2025 UTC |
| **Subject Key Identifier** | e5:9d:59:30:82:47:58:cc:ac:fa:08:54:36:86:7b:3a:b5:04:4d:f0 |
| **Thumbprint (SHA-1)** | D4DE20D05E66FC53FE1A50882C78DB2852CAE474 |
| **Thumbprint (SHA-256)** | 16AF57A9F676B0AB126095AA5EBADEF22AB31119D644AC95CD4B93DBF3F26AEB |
| **Pin (SHA-256)** | Y9mvm0exBk1JoQ57f9Vm28jKo5lFm/woKcVxrYxu80o= |

### **DigiCert Cloud Services CA-1**

| **Subject** | CN=DigiCert Cloud Services CA-1<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert Global Root CA<br>OU=www.digicert.com<br>O=DigiCert Inc<br>C=US |
| **Serial Number** | 01:9E:C1:C6:BD:3F:59:7B:B2:0C:33:38:E5:51:D8:77 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Aug 04 12:00:00 2015 UTC |
| **Validity Not After** | Aug 04 12:00:00 2030 UTC |
| **Subject Key Identifier** | dd:51:d0:a2:31:73:a9:73:ae:8f:b4:01:7e:5d:8c:57:cb:9f:f0:f7 |
| **Authority Key Identifier** | keyid:03:de:50:35:56:d1:4c:bb:66:f0:a3:e2:1b:1b:c3:97:b2:3d:d1:55 |
| **Thumbprint (SHA-1)** | 81B68D6CD2F221F8F534E677523BB236BBA1DC56 |
| **Thumbprint (SHA-256)** | 2F6889961A7CA7067E8BA103C2CF9B9A924F8CA293F11178E23A1978D2F133D3 |
| **Pin (SHA-256)** | UgpUVparimk8QCjtWQaUQ7EGrtrykc/L8N66EhFY3VE= |
| **CRL URLs** | http://crl4.digicert.com/DigiCertGlobalRootCA.crl<br>http://crl3.digicert.com/DigiCertGlobalRootCA.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **DigiCert Global Root CA**

| **Subject** | CN=DigiCert Global Root CA<br>OU=www.digicert.com<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Serial Number** | 08:3B:E0:56:90:42:46:B1:A1:75:6A:C9:59:91:C7:4A |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha1RSA |
| **Validity Not Before** | Nov 10 00:00:00 2006 UTC |
| **Validity Not After** | Nov 10 00:00:00 2031 UTC |
| **Subject Key Identifier** | 03:de:50:35:56:d1:4c:bb:66:f0:a3:e2:1b:1b:c3:97:b2:3d:d1:55 |
| **Authority Key Identifier** | keyid:03:de:50:35:56:d1:4c:bb:66:f0:a3:e2:1b:1b:c3:97:b2:3d:d1:55 |
| **Thumbprint (SHA-1)** | A8985D3A65E5E5C4B2D7D66D40C6DD2FB19C5436 |
| **Thumbprint (SHA-256)** | 4348A0E9444C78CB265E058D5E8944B4D84F9662BD26DB257F8934A443C70161 |
| **Pin (SHA-256)** | r/mIkG3eEpVdm+u/ko/cwxzOMo1bk4TyHIlByibiA5E= |

### **DigiCert High Assurance EV Root CA**

| **Subject** | CN=DigiCert High Assurance EV Root CA<br>OU=www.digicert.com<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Serial Number** | 02:AC:5C:26:6A:0B:40:9B:8F:0B:79:F2:AE:46:25:77 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha1RSA |
| **Validity Not Before** | Nov 10 00:00:00 2006 UTC |
| **Validity Not After** | Nov 10 00:00:00 2031 UTC |
| **Subject Key Identifier** | b1:3e:c3:69:03:f8:bf:47:01:d4:98:26:1a:08:02:ef:63:64:2b:c3 |
| **Authority Key Identifier** | keyid:b1:3e:c3:69:03:f8:bf:47:01:d4:98:26:1a:08:02:ef:63:64:2b:c3 |
| **Thumbprint (SHA-1)** | 5FB7EE0633E259DBAD0C4C9AE6D38F1A61C7DC25 |
| **Thumbprint (SHA-256)** | 7431E5F4C3C1CE4690774F0B61E05440883BA9A01ED00BA6ABD7806ED3B118CF |
| **Pin (SHA-256)** | WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18= |




### **Entrust Root Certification Authority - G2**

| **Subject** | CN=Entrust Root Certification Authority - G2<br>OU=&quot;(c) 2009 Entrust, Inc. - for authorized use only&quot;<br>OU=See www.entrust.net/legal-terms<br>O=&quot;Entrust, Inc.&quot;<br>C=US |
| --- | --- |
| **Serial Number** | 4A:53:8C:28 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Jul 07 17:25:54 2009 UTC |
| **Validity Not After** | Dec 07 17:55:54 2030 UTC |
| **Subject Key Identifier** | 6a:72:26:7a:d0:1e:ef:7d:e7:3b:69:51:d4:6c:8d:9f:90:12:66:ab |
| **Thumbprint (SHA-1)** | 8CF427FD790C3AD166068DE81E57EFBB932272D4 |
| **Thumbprint (SHA-256)** | 43DF5774B03E7FEF5FE40D931A7BEDF1BB2E6B42738C4E6D3841103D3AA7F339 |
| **Pin (SHA-256)** | du6FkDdMcVQ3u8prumAo6t3i3G27uMP2EOhR8R0at/U= |

### **Entrust.net Certification Authority (2048)**

| **Subject** | CN=Entrust.net Certification Authority (2048)<br>OU=(c) 1999 Entrust.net Limited<br>OU=www.entrust.net/CPS\_2048 incorp. by ref. (limit s liab.)<br>O=Entrust.net |
| --- | --- |
| **Serial Number** | 38:63:DE:F8 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha1RSA |
| **Validity Not Before** | Dec 24 17:50:51 1999 UTC |
| **Validity Not After** | Jul 24 14:15:12 2029 UTC |
| **Subject Key Identifier** | 55:e4:81:d1:11:80:be:d8:89:b9:08:a3:31:f9:a1:24:09:16:b9:70 |
| **Thumbprint (SHA-1)** | 503006091D97D4F5AE39F7CBE7927D7D652D3431 |
| **Thumbprint (SHA-256)** | 6DC47172E01CBCB0BF62580D895FE2B8AC9AD4F873801E0C10B9C837D21EB177 |
| **Pin (SHA-256)** | HqPF5D7WbC2imDpCpKebHpBnhs6fG1hiFBmgBGOofTg= |

### **GlobalSign**

| **Subject** | CN=GlobalSign<br>O=GlobalSign<br>OU=GlobalSign Root CA - R2 |
| --- | --- |
| **Serial Number** | 04:00:00:00:00:01:0F:86:26:E6:0D |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha1RSA |
| **Validity Not Before** | Dec 15 08:00:00 2006 UTC |
| **Validity Not After** | Dec 15 08:00:00 2021 UTC |
| **Subject Key Identifier** | 9b:e2:07:57:67:1c:1e:c0:6a:06:de:59:b4:9a:2d:df:dc:19:86:2e |
| **Authority Key Identifier** | keyid:9b:e2:07:57:67:1c:1e:c0:6a:06:de:59:b4:9a:2d:df:dc:19:86:2e |
| **Thumbprint (SHA-1)** | 75E0ABB6138512271C04F85FDDDE38E4B7242EFE |
| **Thumbprint (SHA-256)** | CA42DD41745FD0B81EB902362CF9D8BF719DA1BD1B1EFC946F5B4C99F42C1B9E |
| **Pin (SHA-256)** | iie1VXtL7HzAMF+/PVPR9xzT80kQxdZeJ+zduCB3uj0= |
| **CRL URLs** | http://crl.globalsign.net/root-r2.crl |

### **GlobalSign Root CA**

| **Subject** | CN=GlobalSign Root CA<br>OU=Root CA<br>O=GlobalSign nv-sa<br>C=BE |
| --- | --- |
| **Serial Number** | 04:00:00:00:00:01:15:4B:5A:C3:94 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha1RSA |
| **Validity Not Before** | Sep 01 12:00:00 1998 UTC |
| **Validity Not After** | Jan 28 12:00:00 2028 UTC |
| **Subject Key Identifier** | 60:7b:66:1a:45:0d:97:ca:89:50:2f:7d:04:cd:34:a8:ff:fc:fd:4b |
| **Thumbprint (SHA-1)** | B1BC968BD4F49D622AA89A81F2150152A41D829C |
| **Thumbprint (SHA-256)** | EBD41040E4BB3EC742C9E381D31EF2A41A48B6685C96E7CEF3C1DF6CD4331C99 |
| **Pin (SHA-256)** | K87oWBWM9UZfyddvDfoxL+8lpNyoUB2ptGtn0fv6G2Q= |

### **thawte Primary Root CA - G3**

| **Subject** | CN=thawte Primary Root CA - G3<br>OU=&quot;(c) 2008 thawte, Inc. - For authorized use only&quot;<br>OU=Certification Services Division<br>O=&quot;thawte, Inc.&quot;<br>C=US |
| --- | --- |
| **Serial Number** | 60:01:97:B7:46:A7:EA:B4:B4:9A:D6:4B:2F:F7:90:FB |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Apr 02 00:00:00 2008 UTC |
| **Validity Not After** | Dec 01 23:59:59 2037 UTC |
| **Subject Key Identifier** | ad:6c:aa:94:60:9c:ed:e4:ff:fa:3e:0a:74:2b:63:03:f7:b6:59:bf |
| **Thumbprint (SHA-1)** | F18B538D1BE903B6A6F056435B171589CAF36BF2 |
| **Thumbprint (SHA-256)** | 4B03F45807AD70F21BFC2CAE71C9FDE4604C064CF5FFB686BAE5DBAAD7FDD34C |
| **Pin (SHA-256)** | GQbGEk27Q4V40A4GbVBUxsN/D6YCjAVUXgmU7drshik= |

### **VeriSign Class 3 Public Primary Certification Authority - G5**

| **Subject** | CN=VeriSign Class 3 Public Primary Certification Authority - G5<br>OU=&quot;(c) 2006 VeriSign, Inc. - For authorized use only&quot;<br>OU=VeriSign Trust Network<br>O=&quot;VeriSign, Inc.&quot;<br>C=US |
| --- | --- |
| **Serial Number** | 18:DA:D1:9E:26:7D:E8:BB:4A:21:58:CD:CC:6B:3B:4A |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha1RSA |
| **Validity Not Before** | Nov 08 00:00:00 2006 UTC |
| **Validity Not After** | Jul 16 23:59:59 2036 UTC |
| **Subject Key Identifier** | 7f:d3:65:a7:c2:dd:ec:bb:f0:30:09:f3:43:39:fa:02:af:33:31:33 |
| **Thumbprint (SHA-1)** | 4EB6D578499B1CCF5F581EAD56BE3D9B6744A5E5 |
| **Thumbprint (SHA-256)** | 9ACFAB7E43C8D880D06B262A94DEEEE4B4659989C3D0CAF19BAF6405E41AB7DF |
| **Pin (SHA-256)** | JbQbUG5JMJUoI6brnx0x3vZF6jilxsapbXGVfjhN8Fg= |

## **Office 365 Intermediate Certificate Details**

### **D-TRUST SSL Class 3 CA 1 2009**

| **Subject** | CN=D-TRUST SSL Class 3 CA 1 2009<br>O=D-Trust GmbH<br>C=DE |
| --- | --- |
| **Issuer** | CN=D-TRUST Root Class 3 CA 2 2009<br>O=D-Trust GmbH<br>C=DE |
| **Subject Alternative Name** | RFC822 Name=info@d-trust.net<br>URL=http://www.d-trust.net |
| **Serial Number** | 09:90:63 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Nov 12 12:46:55 2009 UTC |
| **Validity Not After** | Nov 05 08:35:58 2029 UTC |
| **Subject Key Identifier** | 50:19:32:94:9a:c4:b5:04:4d:56:d0:c0:83:21:d5:35:55:b0:b1:7a |
| **Authority Key Identifier** | keyid:fd:da:14:c4:9f:30:de:21:bd:1e:42:39:fc:ab:63:23:49:e0:f1:84 |
| **Thumbprint (SHA-1)** | 2FC5DE6528CDBE50A14C382FC1DE524FAABF95FC |
| **Thumbprint (SHA-256)** | 6AC159B4C2BC8E729F3B84642EF1286BCC80D775FE278C740ADA468D59439025 |
| **Pin (SHA-256)** | 9w0QP9HzLXkfs+4zENaUFq2XKcQON1oyksoJ+Gg2AZE= |
| **CRL URLs** | ldap://directory.d-trust.net/CN=D-TRUST%20Root%20Class%203%20CA%202%202009,O=D-Trust%20GmbH,C=DE?certificaterevocationlist<br>http://www.d-trust.net/crl/d-trust\_root\_class\_3\_ca\_2\_2009.crl |
| **OCSP URLs** | http://root-c3-ca2-2009.ocsp.d-trust.net |

### **D-TRUST SSL Class 3 CA 1 EV 2009**

| **Subject** | CN=D-TRUST SSL Class 3 CA 1 EV 2009<br>O=D-Trust GmbH<br>C=DE |
| --- | --- |
| **Issuer** | CN=D-TRUST Root Class 3 CA 2 EV 2009<br>O=D-Trust GmbH<br>C=DE |
| **Subject Alternative Name** | RFC822 Name=info@d-trust.net<br>URL=http://www.d-trust.net |
| **Serial Number** | 09:90:64 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Nov 12 12:52:43 2009 UTC |
| **Validity Not After** | Nov 05 08:50:46 2029 UTC |
| **Subject Key Identifier** | ac:ed:a5:9d:7a:a2:b6:43:f1:18:8a:25:6a:6c:b1:cc:a8:f2:5a:d4 |
| **Authority Key Identifier** | keyid:d3:94:8a:4c:62:13:2a:19:2e:cc:af:72:8a:7d:36:d7:9a:1c:dc:67 |
| **Thumbprint (SHA-1)** | 1069423D308D0FC54575059638560FC7556E32B3 |
| **Thumbprint (SHA-256)** | B0935DC04B4E60C0C42DEF7EC57A1B1D8F958D17988E71CC80A8CF5E635BA5B4 |
| **Pin (SHA-256)** | lv5BNZ5aWd27ooolULDolFTwIaaWjHvG4yyH3rss4X8= |
| **CRL URLs** | ldap://directory.d-trust.net/CN=D-TRUST%20Root%20Class%203%20CA%202%20EV%202009,O=D-Trust%20GmbH,C=DE?certificaterevocationlist<br>http://www.d-trust.net/crl/d-trust\_root\_class\_3\_ca\_2\_ev\_2009.crl |
| **OCSP URLs** | http://root-c3-ca2-ev-2009.ocsp.d-trust.net |

### **DigiCert Cloud Services CA-1**

| **Subject** | CN=DigiCert Cloud Services CA-1<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert Global Root CA<br>OU=www.digicert.com<br>O=DigiCert Inc<br>C=US |
| **Serial Number** | 01:9E:C1:C6:BD:3F:59:7B:B2:0C:33:38:E5:51:D8:77 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Aug 04 12:00:00 2015 UTC |
| **Validity Not After** | Aug 04 12:00:00 2030 UTC |
| **Subject Key Identifier** | dd:51:d0:a2:31:73:a9:73:ae:8f:b4:01:7e:5d:8c:57:cb:9f:f0:f7 |
| **Authority Key Identifier** | keyid:03:de:50:35:56:d1:4c:bb:66:f0:a3:e2:1b:1b:c3:97:b2:3d:d1:55 |
| **Thumbprint (SHA-1)** | 81B68D6CD2F221F8F534E677523BB236BBA1DC56 |
| **Thumbprint (SHA-256)** | 2F6889961A7CA7067E8BA103C2CF9B9A924F8CA293F11178E23A1978D2F133D3 |
| **Pin (SHA-256)** | UgpUVparimk8QCjtWQaUQ7EGrtrykc/L8N66EhFY3VE= |
| **CRL URLs** | http://crl4.digicert.com/DigiCertGlobalRootCA.crl<br>http://crl3.digicert.com/DigiCertGlobalRootCA.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **DigiCert SHA2 High Assurance Server CA**

| **Subject** | CN=DigiCert SHA2 High Assurance Server CA<br>OU=www.digicert.com<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert High Assurance EV Root CA<br>OU=www.digicert.com<br>O=DigiCert Inc<br>C=US |
| **Serial Number** | 04:E1:E7:A4:DC:5C:F2:F3:6D:C0:2B:42:B8:5D:15:9F |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Oct 22 12:00:00 2013 UTC |
| **Validity Not After** | Oct 22 12:00:00 2028 UTC |
| **Subject Key Identifier** | 51:68:ff:90:af:02:07:75:3c:cc:d9:65:64:62:a2:12:b8:59:72:3b |
| **Authority Key Identifier** | keyid:b1:3e:c3:69:03:f8:bf:47:01:d4:98:26:1a:08:02:ef:63:64:2b:c3 |
| **Thumbprint (SHA-1)** | A031C46782E6E6C662C2C87C76DA9AA62CCABD8E |
| **Thumbprint (SHA-256)** | 19400BE5B7A31FB733917700789D2F0A2471C0C9D506C0E504C06C16D7CB17C0 |
| **Pin (SHA-256)** | k2v657xBsOVe1PQRwOsHsw3bsGT2VzIqz5K+59sNQws= |
| **CRL URLs** | http://crl4.digicert.com/DigiCertHighAssuranceEVRootCA.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **DigiCert High Assurance EV Root CA**

| **Subject** | CN=DigiCert High Assurance EV Root CA<br>OU=www.digicert.com<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert High Assurance EV Root CA<br>OU=www.digicert.com<br>O=DigiCert Inc<br>C=US |
| **Serial Number** | 0c:79:a9:44:b0:8c:11:95:20:92:61:5f:e2:6b:1d:83 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Oct 22 12:00:00 2013 UTC |
| **Validity Not After** | Oct 22 12:00:00 2048 UTC |
| **Subject Key Identifier** | 3d:d3:50:a5:d6:a0:ad:ee:f3:4a:60:0a:65:d3:21:d4:f8:f8:d6:0f |
| **Authority Key Identifier** | keyid:b1:3e:c3:69:03:f8:bf:47:01:d4:98:26:1a:08:02:ef:63:64:2b:c3 |
| **Thumbprint (SHA-1)** | 7e2f3a4f8fe8fa8a5730aeca029696637e986f3f |
| **CRL URLs** | http://crl4.digicert.com/DigiCertHighAssuranceEVRootCA.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **Entrust Certification Authority - L1C**

| **Subject** | CN=Entrust Certification Authority - L1C<br>OU=&quot;(c) 2009 Entrust, Inc.&quot;<br>OU=www.entrust.net/rpa is incorporated by reference<br>O=&quot;Entrust, Inc.&quot;<br>C=US |
| --- | --- |
| **Issuer** | CN=Entrust.net Certification Authority (2048)<br>OU=(c) 1999 Entrust.net Limited<br>OU=www.entrust.net/CPS\_2048 incorp. by ref. (limits liab.)<br>O=Entrust.net |
| **Serial Number** | 4C:0E:8C:39 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha1RSA |
| **Validity Not Before** | Nov 11 15:40:40 2011 UTC |
| **Validity Not After** | Nov 11 02:51:17 2021 UTC |
| **Subject Key Identifier** | 1e:f1:ab:89:06:f8:49:0f:01:33:77:ee:14:7a:ee:19:7c:93:28:4d |
| **Authority Key Identifier** | keyid:55:e4:81:d1:11:80:be:d8:89:b9:08:a3:31:f9:a1:24:09:16:b9:70 |
| **Thumbprint (SHA-1)** | C53E73073F93CE7895DE7484126BC303DAB9E657 |
| **Thumbprint (SHA-256)** | 0EE4DAF71A85D842D23F4910FD4C909B7271861931F1D5FEAC868225F52700E2 |
| **Pin (SHA-256)** | VFv5NemtodoRftw8KsvFb8AoCWwOJL6bOJS+Ui0bQ94= |
| **CRL URLs** | http://crl.entrust.net/2048ca.crl |
| **OCSP URLs** | http://ocsp.entrust.net |

### **Entrust Certification Authority - L1E**

| **Subject** | CN=Entrust Certification Authority - L1E<br>OU=&quot;(c) 2009 Entrust, Inc.&quot;<br>OU=www.entrust.net/rpa is incorporated by reference<br>O=&quot;Entrust, Inc.&quot;<br>C=US |
| --- | --- |
| **Issuer** | CN=Entrust.net Certification Authority (2048)<br>OU=(c) 1999 Entrust.net Limited<br>OU=www.entrust.net/CPS\_2048 incorp. by ref. (limits liab.)<br>O=Entrust.net |
| **Serial Number** | 4C:0E:C9:18 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha1RSA |
| **Validity Not Before** | Nov 11 15:40:40 2011 UTC |
| **Validity Not After** | Nov 11 02:51:17 2021 UTC |
| **Subject Key Identifier** | 5B:41:8A:B2:C4:43:C1:BD:BF:C8:54:41:55:9D:E0:96:AD:FF:B9:A1 |
| **Authority Key Identifier** | keyid:68:90:e4:67:a4:a6:53:80:c7:86:66:a4:f1:f7:4b:43:fb:84:bd:6d |
| **Thumbprint (SHA-1)** | 8A000CC056F7D17349F045BEB0319A3B91C9F979 |
| **Thumbprint (SHA-256)** | 3C7A634E5778A0F731972B702DAE24B2CF2060219F607E69878B164C61A06C41 |
| **CRL URLs** | http://crl.entrust.net/rootca1.crl |
| **OCSP URLs** | http://ocsp.entrust.net |

### **Entrust Certification Authority - L1K**

| **Subject** | CN=Entrust Certification Authority - L1K<br>OU=&quot;(c) 2012 Entrust, Inc. - for authorized use only&quot;<br>OU=See www.entrust.net/legal-terms<br>O=&quot;Entrust, Inc.&quot;<br>C=US |
| --- | --- |
| **Issuer** | CN=Entrust Root Certification Authority - G2<br>OU=&quot;(c) 2009 Entrust, Inc. - for authorized use only&quot;<br>OU=See www.entrust.net/legal-terms<br>O=&quot;Entrust, Inc.&quot;<br>C=US |
| **Serial Number** | 0E:E9:4C:C3:00:00:00:00:51:D3:77:85 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Oct 05 19:13:56 2015 UTC |
| **Validity Not After** | Dec 05 19:43:56 2030 UTC |
| **Subject Key Identifier** | 82:a2:70:74:dd:bc:53:3f:cf:7b:d4:f7:cd:7f:a7:60:c6:0a:4c:bf |
| **Authority Key Identifier** | keyid:6a:72:26:7a:d0:1e:ef:7d:e7:3b:69:51:d4:6c:8d:9f:90:12:66:ab |
| **Thumbprint (SHA-1)** | F21C12F46CDB6B2E16F09F9419CDFF328437B2D7 |
| **Thumbprint (SHA-256)** | 13EFB39A2F6654E8C67BD04F4C6D4C90CD6CAB5091BCEDC73787F6B77D3D3FE7 |
| **Pin (SHA-256)** | 980Ionqp3wkYtN9SZVgMzuWQzJta1nfxNPwTem1X0uc= |
| **CRL URLs** | http://crl.entrust.net/g2ca.crl |
| **OCSP URLs** | http://ocsp.entrust.net |

### **Entrust Certification Authority - L1M**

| **Subject** | CN=Entrust Certification Authority - L1M, OU=&quot;(c) 2014 Entrust, Inc. - for authorized use only&quot;<br>OU=See www.entrust.net/legal-terms<br>O=&quot;Entrust, Inc.&quot;<br>C=US |
| --- | --- |
| **Issuer** | CN=Entrust Root Certification Authority - G2<br>OU=&quot;(c) 2009 Entrust, Inc. - for authorized use only&quot;<br>OU=See www.entrust.net/legal-terms<br>O=&quot;Entrust, Inc.&quot;<br>C=US |
| **Serial Number** | 61:A1:E7:D2:00:00:00:00:51:D3:66:A6 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Dec 15 07:25:03 2014 UTC |
| **Validity Not After** | Oct 15 08:55:03 2030 UTC |
| **Subject Key Identifier** | C3:F7:D0:B5:2A:30:AD:AF:0D:91:21:70:39:54:DD:BC:89:70:C7:3A |
| **Authority Key Identifier** | keyid:6a:72:26:7a:d0:1e:ef:7d:e7:3b:69:51:d4:6c:8d:9f:90:12:66:ab |
| **Thumbprint (SHA-1)** | CC136695639065FAB47074D28C55314C66077E90 |
| **Thumbprint (SHA-256)** | 75C5B3F01FD1F51A2C447AB7C785D72E69FA9C472C08571E7EADF3B8EABAE70C |
| **CRL URLs** | http://crl.entrust.net/g2ca.crl |
| **OCSP URLs** | http://ocsp.entrust.net |

### **Microsoft IT TLS CA 1**

| **Subject** | CN=Microsoft IT TLS CA 1<br>OU=Microsoft IT<br>O=Microsoft Corporation<br>L=Redmond<br>S=Washington<br>C=US |
| --- | --- |
| **Issuer** | CN=Baltimore CyberTrust Root<br>OU=CyberTrust<br>O=Baltimore<br>C=IE |
| **Serial Number** | 08:B8:7A:50:1B:BE:9C:DA:2D:16:4D:3E:39:51:BF:55 |
| **Public Key Length** | RSA 4096 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | May 20 12:51:28 2016 UTC |
| **Validity Not After** | May 20 12:51:28 2024 UTC |
| **Subject Key Identifier** | 58:88:9f:d6:dc:9c:48:22:b7:14:3e:ff:84:88:e8:e6:85:ff:fa:7d |
| **Authority Key Identifier** | keyid:e5:9d:59:30:82:47:58:cc:ac:fa:08:54:36:86:7b:3a:b5:04:4d:f0 |
| **Thumbprint (SHA-1)** | 417E225037FBFAA4F95761D5AE729E1AEA7E3A42 |
| **Thumbprint (SHA-256)** | 4FF404F02E2CD00188F15D1C00F4B6D1E38B5A395CF85314EAEBA855B6A64B75 |
| **Pin (SHA-256)** | xjXxgkOYlag7jCtR5DreZm9b61iaIhd+J3+b2LiybIw= |
| **CRL URLs** | http://crl3.digicert.com/Omniroot2025.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **Microsoft IT TLS CA 2**

| **Subject** | CN=Microsoft IT TLS CA 2<br>OU=Microsoft IT<br>O=Microsoft Corporation<br>L=Redmond<br>S=Washington<br>C=US |
| --- | --- |
| **Issuer** | CN=Baltimore CyberTrust Root<br>OU=CyberTrust<br>O=Baltimore<br>C=IE |
| **Serial Number** | 0F:2C:10:C9:5B:06:C0:93:7F:B8:D4:49:F8:3E:85:69 |
| **Public Key Length** | RSA 4096 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | May 20 12:51:57 2016 UTC |
| **Validity Not After** | May 20 12:51:57 2024 UTC |
| **Subject Key Identifier** | 91:9e:3b:44:6c:3d:57:9c:42:77:2a:34:d7:4f:d1:cc:4a:97:2c:da |
| **Authority Key Identifier** | keyid:e5:9d:59:30:82:47:58:cc:ac:fa:08:54:36:86:7b:3a:b5:04:4d:f0 |
| **Thumbprint (SHA-1)** | 54D9D20239080C32316ED9FF980A48988F4ADF2D |
| **Thumbprint (SHA-256)** | 4E107C981B42ACBE41C01067E16D44DB64814D4193E572317EA04B87C79C475F |
| **Pin (SHA-256)** | wBdPad95AU7OgLRs0FU/E6ILO1MSCM84kJ9y0H+TT7s= |
| **CRL URLs** | http://crl3.digicert.com/Omniroot2025.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **Microsoft IT TLS CA 4**

| **Subject** | CN=Microsoft IT TLS CA 4<br>OU=Microsoft IT<br>O=Microsoft Corporation<br>L=Redmond<br>S=Washington<br>C=US |
| --- | --- |
| **Issuer** | CN=Baltimore CyberTrust Root<br>OU=CyberTrust<br>O=Baltimore<br>C=IE |
| **Serial Number** | 0B:6A:B3:B0:3E:B1:A9:F6:C4:60:92:6A:A8:CD:FE:B3 |
| **Public Key Length** | RSA 4096 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | May 20 12:52:38 2016 UTC |
| **Validity Not After** | May 20 12:52:38 2024 UTC |
| **Subject Key Identifier** | 7a:7b:8c:c1:cf:e7:a0:ca:1c:d4:6b:fa:fb:e1:33:c3:0f:1a:a2:9d |
| **Authority Key Identifier** | keyid:e5:9d:59:30:82:47:58:cc:ac:fa:08:54:36:86:7b:3a:b5:04:4d:f0 |
| **Thumbprint (SHA-1)** | 8A38755D0996823FE8FA3116A277CE446EAC4E99 |
| **Thumbprint (SHA-256)** | 5FFAC43E0DDC5B4AF2B696F6BC4DB7E91DF314BB8FE0D0713A0B1A7AD2A68FAC |
| **Pin (SHA-256)** | wUY9EOTJmS7Aj4fDVCu/KeE++mV7FgIcbn4WhMz1I2k= |
| **CRL URLs** | http://crl3.digicert.com/Omniroot2025.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **Microsoft IT TLS CA 5**

| **Subject** | CN=Microsoft IT TLS CA 5<br>OU=Microsoft IT<br>O=Microsoft Corporation<br>L=Redmond<br>S=Washington<br>C=US |
| --- | --- |
| **Issuer** | CN=Baltimore CyberTrust Root<br>OU=CyberTrust<br>O=Baltimore<br>C=IE |
| **Serial Number** | 08:88:CD:52:5F:19:24:44:4D:14:A5:82:91:DE:B9:52 |
| **Public Key Length** | RSA 4096 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | May 20 12:53:03 2016 UTC |
| **Validity Not After** | May 20 12:53:03 2024 UTC |
| **Subject Key Identifier** | 08:fe:25:9f:74:ea:87:04:c2:bc:bb:8e:a8:38:5f:33:c6:d1:6c:65 |
| **Authority Key Identifier** | keyid:e5:9d:59:30:82:47:58:cc:ac:fa:08:54:36:86:7b:3a:b5:04:4d:f0 |
| **Thumbprint (SHA-1)** | AD898AC73DF333EB60AC1F5FC6C4B2219DDB79B7 |
| **Thumbprint (SHA-256)** | F0EE5914ED94C7252D058B4E39808AEE6FA8F62CF0974FB7D6D2A9DF16E3A87F |
| **Pin (SHA-256)** | RCbqB+W8nwjznTeP4O6VjqcwdxIgI79eBpnBKRr32gc= |
| **CRL URLs** | http://crl3.digicert.com/Omniroot2025.crl |
| **OCSP URLs** | http://ocsp.digicert.com |


## **Additional certificate paths**

The following list includes legacy certificates that aren't included above and will be merged with the list above over time.

evsecure-aia.verisign.com<br>
sa.symcb.com<br>
sd.symcb.com<br>
\*.omniroot.com<br>
\*.verisign.com<br>
\*.symcb.com<br>
\*.symcd.com<br>
\*.verisign.net<br>
\*.geotrust.com<br>
\*.entrust.net<br>
\*.public-trust.com<br>
EVIntl-ocsp.verisign.com<br>
EVSecure-ocsp.verisign.com<br>
isrg.trustid.ocsp.identrust.com<br>
ocsp.digicert.com<br>
ocsp.entrust.net<br>
ocsp.globalsign.com/ExtendedSSLSHA256CACross<br>
ocsp.globalsign.com/rootr1<br>
ocsp.globalsign.com/rootr2<br>
ocsp2.globalsign.com/rootr3<br>
ocsp.int-x3.letsencrypt.org/<br>
ocsp.msocsp.com<br>
ocsp.omniroot.com/baltimoreroot<br>
ocsp2.globalsign.com/gsextendvalsha2g3r3<br>
ocsp2.globalsign.com/gsorganizationvalsha2g2<br>
ocsp2.globalsign.com/gsorganizationvalsha2g3<br>
ocsp2.globalsign.com/rootr3<br>
ocspx.digicert.com<br>
s2.symcb.com<br>
sr.symcd.com<br>
su.symcd.com<br>
vassg142.ocsp.omniroot.com<br>
cdp1.public-trust.com/CRL/Omniroot2025.crl<br>
crl.entrust.net/2048ca.crl<br>
crl.entrust.net/g2ca.crl<br>
crl.entrust.net/level1k.crl<br>
crl.entrust.net/rootca1.crl<br>
crl.globalsign.com/gs/gsextendvalsha2g3r3.crl<br>
crl.globalsign.com/gs/gsorganizationvalsha2g2.crl<br>
crl.globalsign.com/gsorganizationvalsha2g3.crl<br>
crl.globalsign.com/root.crl<br>
crl.globalsign.net/root-r2.crl<br>
crl.globalsign.com/root-r3.crl<br>
crl.globalsign.net/root.crl<br>
crl.identrust.com/DSTROOTCAX3CRL.crl<br>
crl.microsoft.com/pki/mscorp/crl/msitwww1.crl<br>
crl.microsoft.com/pki/mscorp/crl/msitwww2.crl<br>
crl3.digicert.com/DigiCertCloudServicesCA-1-g1.crl<br>
crl3.digicert.com/DigiCertGlobalRootCA.crl<br>
crl3.digicert.com/sha2-ev-server-g1.crl<br>
crl3.digicert.com/sha2-ha-server-g5.crl<br>
crl3.digicert.com/ssca-sha2-g5.crl<br>
crl4.digicert.com/DigiCertCloudServicesCA-1-g1.crl<br>
crl4.digicert.com/DigiCertGlobalRootCA.crl<br>
crl4.digicert.com/DigiCertHighAssuranceEVRootCA.crl<br>
crl4.digicert.com/sha2-ev-server-g1.crl<br>
crl4.digicert.com/sha2-ha-server-g5.crl<br>
crl4.digicert.com/ssca-sha2-g5.crl<br>
EVIntl-crl.verisign.com/EVIntl2006.crl<br>
EVSecure-crl.verisign.com/pca3-g5.crl<br>
mscrl.microsoft.com/pki/mscorp/crl/msitwww1.crl<br>
mscrl.microsoft.com/pki/mscorp/crl/msitwww2.crl<br>
s1.symcb.com/pca3-g5.crl<br>
sr.symcb.com/sr.crl<br>
su.symcb.com/su.crl<br>
vassg142.crl.omniroot.com/vassg142.crl<br>
aia.entrust.net/l1k-chain256.cer<br>
apps.identrust.com/roots/dstrootcax3.p7c<br>
<https://cacert.a.omniroot.com/vassg142.crt><br>
<https://cacert.a.omniroot.com/vassg142.der><br>
<https://cacert.omniroot.com/baltimoreroot.crt><br>
<https://cacert.omniroot.com/baltimoreroot.der><br>
cacerts.digicert.com/DigiCertCloudServicesCA-1.crt<br>
cacerts.digicert.com/DigiCertSHA2ExtendedValidationServerCA.crt<br>
cacerts.digicert.com/DigiCertSHA2HighAssuranceServerCA.crt<br>
cacerts.digicert.com/DigiCertSHA2SecureServerCA.crt<br>
cert.int-x3.letsencrypt.org/<br>
EVIntl-aia.verisign.com/EVIntl2006.cer<br>
secure.globalsign.com/cacert/gsextendvalsha2g2r2.crt<br>
secure.globalsign.com/cacert/gsextendvalsha2g3r3.crt<br>
secure.globalsign.com/cacert/gsorganizationvalsha2g2r1.crt<br>
secure.globalsign.com/cacert/gsorganizationvalsha2g3.crt<br>
sr.symcb.com/sr.crt<br>
su.symcb.com/su.crt<br>
<https://www.digicert.com/CACerts/DigiCertGlobalRootCA.crt><br>
<https://www.digicert.com/CACerts/DigiCertHighAssuranceEVRootCA.crt><br>
<https://www.microsoft.com/pki/mscorp/msitwww1.crt><br>
<https://www.microsoft.com/pki/mscorp/msitwww2.crt><br>
