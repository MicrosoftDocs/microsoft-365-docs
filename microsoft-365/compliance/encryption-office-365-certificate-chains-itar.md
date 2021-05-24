---
title: "Microsoft 365 encryption chains - DOD and GCC High"
f1.keywords:
- NOCSH
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 10/16/2020
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
description: "View a complete list of DOD and GCC High root certificates and certificate authorities (CAs) in Microsoft 365."
---

# Microsoft 365 encryption chains - DOD and GCC High

Microsoft 365 leverages a number of different certificate providers. The following describes the complete list of known Microsoft 365 root certificates that **DOD and GCC High customers** may encounter when accessing Microsoft 365. For information on the certificates you may need to install in your own infrastructure, see [Plan for third-party SSL certificates for Microsoft 365](../enterprise/plan-for-third-party-ssl-certificates.md).

The following certificate information applies to **all DOD and GCC High customers**.

Last updated: **10/16/2020**

>[!NOTE]
>For certificate information that applies to **worldwide customers**, see [Microsoft 365 encryption chains](encryption-office-365-certificate-chains.md).

| **Certificate type** | **P7b download** | **CRL Endpoints** | **OCSP Endpoints** |
| --- | --- | --- | --- | --- |
| Publicly Trusted Root and Intermediate Certificates | [Microsoft 365 ITAR Certificate Bundle (P7B)](https://download.microsoft.com/download/b/3/a/b3ae08a2-516c-46a9-8723-6256e4fd6383/m365_chain_certs_itar20201012.p7b) | crl.entrust.net<br>crl3.digicert.com<br>crl4.digicert.com | ocsp.digicert.com<br>ocsp.entrust.net |

Expand the root and intermediate sections below to see additional details about the certificate providers.

## **Microsoft 365 Certificate Details**

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

### **DigiCert Cloud Services CA-1**

| **Subject** | CN=DigiCert Cloud Services CA-1<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert Global Root CA, OU=www.digicert.com, O=DigiCert Inc, C=US |
| **Serial Number** | 0F:17:1A:48:C6:F2:23:80:92:18:CD:2E:D6:DD:C0:E8 |
| **Public Key Length** | RSA 2048 bits |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Thursday, September 24, 2020 5:00 PM |
| **Validity Not Until** | Tuesday, September 24, 2030 4:59 PM |
| **Subject Key Identifier** | DD51D0A23173A973AE8FB4017E5D8C57CB9FF0F7 |
| **Authority Key Identifier** | KeyID:03:de:50:35:56:d1:4c:bb:66:f0:a3:e2:1b:1b:c3:97:b2:3d:d1:55 |
| **Thumbprint (SHA-1)** | B3F6B64A07BB9611F47174407841F564FB991F29 |
| **Thumbprint (SHA-256)** | 5F88694615E4C61686E106B84C3338C6720C535F60D36F61282ED15E1977DD44 |
| **CRL URLs** | http://crl3.digicert.com/DigiCertGlobalRootCA.crl http://crl4.digicert.com/DigiCertGlobalRootCA.crl |
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

### **DigiCert Global Root G2**

| **Subject** | CN=DigiCert Global Root G2<br>OU=www.digicert.com<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert Global Root G2, OU=www.digicert.com, O=DigiCert Inc, C=US |
| **Serial Number** | 03:3A:F1:E6:A7:11:A9:A0:BB:28:64:B1:1D:09:FA:E5 |
| **Public Key Length** | RSA 2048 bits |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Thursday, August 1, 2013 5:00 AM |
| **Validity Not Until** | Friday, January 15, 2038 4:00 AM |
| **Subject Key Identifier** | 4E2254201895E6E36EE60FFAFAB912ED06178F39 |
| **Authority Key Identifier** | KeyID:4e:22:54:20:18:95:e6:e3:6e:e6:0f:fa:fa:b9:12:ed:06:17:8f:39 |
| **Thumbprint (SHA-1)** | DF3C24F9BFD666761B268073FE06D1CC8D4F82A4 |
| **Thumbprint (SHA-256)** | CB3CCBB76031E5E0138F8DD39A23F9DE47FFC35E43C1144CEA27D46A5AB1CB5F |

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

### **DigiCert SHA2 Extended Validation Server CA**

| **Subject** | CN=DigiCert SHA2 Extended Validation Server CA<br>OU=www.digicert.com<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Serial Number** | 0C:79:A9:44:B0:8C:11:95:20:92:61:5F:E2:6B:1D:83 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Oct 22 00:00:00 2013 UTC |
| **Validity Not After** | Oct 22 00:00:00 2028 UTC |
| **Subject Key Identifier** | 3D:D3:50:A5:D6:A0:AD:EE:F3:4A:60:0A:65:D3:21:D4:F8:F8:D6:0F |
| **Authority Key Identifier** | keyID:b1:3e:c3:69:03:f8:bf:47:01:d4:98:26:1a:08:02:ef:63:64:2b:c3 |
| **Thumbprint (SHA-1)** | 7E2F3A4F8FE8FA8A5730AECA029696637E986F3F |
| **Thumbprint (SHA-256)** | 403E062A2653059113285BAF80A0D4AE422C848C9F78FAD01FC94BC5B87FEF1A |

### **DigiCert SHA2 Secure Server CA**

| **Subject** | CN=DigiCert SHA2 Secure Server CA<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert Global Root CA, OU=www.digicert.com, O=DigiCert Inc, C=US |
| **Serial Number** | 01:FD:A3:EB:6E:CA:75:C8:88:43:8B:72:4B:CF:BC:91 |
| **Public Key Length** | RSA 2048 bits |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Friday, March 8, 2013 4:00 AM |
| **Validity Not Until** | Wednesday, March 8, 2023 4:00 AM |
| **Subject Key Identifier** | 0F80611C823161D52F28E78D4638B42CE1C6D9E2 |
| **Authority Key Identifier** | KeyID:03:de:50:35:56:d1:4c:bb:66:f0:a3:e2:1b:1b:c3:97:b2:3d:d1:55 |
| **Thumbprint (SHA-1)** | 1FB86B1168EC743154062E8C9CC5B171A4B7CCB4 |
| **Thumbprint (SHA-256)** | 154C433C491929C5EF686E838E323664A00E6A0D822CCC958FB4DAB03E49A08F |
| **CRL URLs** | http://crl3.digicert.com/DigiCertGlobalRootCA.crl http://crl4.digicert.com/DigiCertGlobalRootCA.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **DigiCert SHA2 Secure Server CA**

| **Subject** | CN=DigiCert SHA2 Secure Server CA<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert Global Root CA, OU=www.digicert.com, O=DigiCert Inc, C=US |
| **Serial Number** | 02:74:2E:AA:17:CA:8E:21:C7:17:BB:1F:FC:FD:0C:A0 |
| **Public Key Length** | RSA 2048 bits |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Tuesday, September 22, 2020 5:00 PM |
| **Validity Not Until** | Sunday, September 22, 2030 4:59 PM |
| **Subject Key Identifier** | 0F80611C823161D52F28E78D4638B42CE1C6D9E2 |
| **Authority Key Identifier** | KeyID:03:de:50:35:56:d1:4c:bb:66:f0:a3:e2:1b:1b:c3:97:b2:3d:d1:55 |
| **Thumbprint (SHA-1)** | 626D44E704D1CEABE3BF0D53397464AC8080142C |
| **Thumbprint (SHA-256)** | C1AD7778796D20BCA65C889A2655021156528BB62FF5FA43E1B8E5A83E3D2EAA |
| **CRL URLs** | http://crl3.digicert.com/DigiCertGlobalRootCA.crl http://crl4.digicert.com/DigiCertGlobalRootCA.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **DigiCert TLS RSA SHA256 2020 CA1**

| **Subject** | CN=DigiCert TLS RSA SHA256 2020 CA1<br>O=DigiCert Inc<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert Global Root CA, OU=www.digicert.com, O=DigiCert Inc, C=US |
| **Serial Number** | 0A:35:08:D5:5C:29:2B:01:7D:F8:AD:65:C0:0F:F7:E4 |
| **Public Key Length** | RSA 2048 bits |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Wednesday, September 23, 2020 5:00 PM |
| **Validity Not Until** | Monday, September 23, 2030 4:59 PM |
| **Subject Key Identifier** | B76BA2EAA8AA848C79EAB4DA0F98B2C59576B9F4 |
| **Authority Key Identifier** | KeyID:03:de:50:35:56:d1:4c:bb:66:f0:a3:e2:1b:1b:c3:97:b2:3d:d1:55 |
| **Thumbprint (SHA-1)** | 6938FD4D98BAB03FAADB97B34396831E3780AEA1 |
| **Thumbprint (SHA-256)** | 25768713D3B459F9382D2A594F85F34709FD2A8930731542A4146FFB246BEC69 |
| **CRL URLs** | http://crl3.digicert.com/DigiCertGlobalRootCA.crl http://crl4.digicert.com/DigiCertGlobalRootCA.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **Entrust Root Certification Authority**

| **Subject** | CN=Entrust Root Certification Authority<br>OU="(c) 2006 Entrust, Inc."<br>OU=www.entrust.net/CPS is incorporated by reference<br>OU=See www.entrust.net/legal-terms<br>O=&quot;Entrust, Inc.&quot;<br>C=US |
| --- | --- |
| **Serial Number** | 45:6B:50:54 |
| **Public Key Length** | RSA 2048 bits (e 65537) |
| **Signature Algorithm** | sha1RSA |
| **Validity Not Before** | Nov 27 12:23:42 2006 UTC |
| **Validity Not After** | Nov 27 12:53:42 2026 UTC |
| **Subject Key Identifier** | 68:90:E4:67:A4:A6:53:80:C7:86:66:A4:F1:F7:4B:43:FB:84:BD:6D |
| **Authority Key Identifier** | keyID:68:90:e4:67:a4:a6:53:80:c7:86:66:a4:f1:f7:4b:43:fb:84:bd:6d |
| **Thumbprint (SHA-1)** | B31EB1B740E36C8402DADC37D44DF5D4674952F9 |
| **Thumbprint (SHA-256)** | 73C176434F1BC6D5ADF45B0E76E727287C8DE57616C1E6E6141A2B2CBC7D8E4C |

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

### **Microsoft Azure TLS Issuing CA 01**

| **Subject** | CN=Microsoft Azure TLS Issuing CA 01<br>O=Microsoft Corporation<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert Global Root G2, OU=www.digicert.com, O=DigiCert Inc, C=US |
| **Serial Number** | 0A:AF:A6:C5:CA:63:C4:51:41:EA:3B:E1:F7:C7:53:17 |
| **Public Key Length** | RSA 4096 bits |
| **Signature Algorithm** | sha384RSA |
| **Validity Not Before** | Wednesday, July 29, 2020 5:30 AM |
| **Validity Not Until** | Thursday, June 27, 2024 4:59 PM |
| **Subject Key Identifier** | 0F205DD7A15795DB92CF2BD0C7C27704CE728076 |
| **Authority Key Identifier** | KeyID:4e:22:54:20:18:95:e6:e3:6e:e6:0f:fa:fa:b9:12:ed:06:17:8f:39 |
| **Thumbprint (SHA-1)** | 2F2877C5D778C31E0F29C7E371DF5471BD673173 |
| **Thumbprint (SHA-256)** | 24C7299864E0A2A6964F551C0E8DF2461532FA8C48E4DBBB6080716691F190E5 |
| **CRL URLs** | http://crl3.digicert.com/DigiCertGlobalRootG2.crl http://crl4.digicert.com/DigiCertGlobalRootG2.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **Microsoft Azure TLS Issuing CA 02**

| **Subject** | CN=Microsoft Azure TLS Issuing CA 02<br>O=Microsoft Corporation<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert Global Root G2, OU=www.digicert.com, O=DigiCert Inc, C=US |
| **Serial Number** | 0C:6A:E9:7C:CE:D5:99:83:86:90:A0:0A:9E:A5:32:14 |
| **Public Key Length** | RSA 4096 bits |
| **Signature Algorithm** | sha384RSA |
| **Validity Not Before** | Wednesday, July 29, 2020 5:30 AM |
| **Validity Not Until** | Thursday, June 27, 2024 4:59 PM |
| **Subject Key Identifier** | 00AB91FC216226979AA8791B61419060A96267FD |
| **Authority Key Identifier** | KeyID:4e:22:54:20:18:95:e6:e3:6e:e6:0f:fa:fa:b9:12:ed:06:17:8f:39 |
| **Thumbprint (SHA-1)** | E7EEA674CA718E3BEFD90858E09F8372AD0AE2AA |
| **Thumbprint (SHA-256)** | 15A98761EBE011554DA3A46D206B0812CB2EB69AE87AAA11A6DD4CB84ED5142A |
| **CRL URLs** | http://crl3.digicert.com/DigiCertGlobalRootG2.crl http://crl4.digicert.com/DigiCertGlobalRootG2.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **Microsoft Azure TLS Issuing CA 05**

| **Subject** | CN=Microsoft Azure TLS Issuing CA 05<br>O=Microsoft Corporation<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert Global Root G2, OU=www.digicert.com, O=DigiCert Inc, C=US |
| **Serial Number** | 0D:7B:ED:E9:7D:82:09:96:7A:52:63:1B:8B:DD:18:BD |
| **Public Key Length** | RSA 4096 bits |
| **Signature Algorithm** | sha384RSA |
| **Validity Not Before** | Wednesday, July 29, 2020 5:30 AM |
| **Validity Not Until** | Thursday, June 27, 2024 4:59 PM |
| **Subject Key Identifier** | C7B29C7F1CE3B85AEFE9681AA85D94C126526A68 |
| **Authority Key Identifier** | KeyID:4e:22:54:20:18:95:e6:e3:6e:e6:0f:fa:fa:b9:12:ed:06:17:8f:39 |
| **Thumbprint (SHA-1)** | 6C3AF02E7F269AA73AFD0EFF2A88A4A1F04ED1E5 |
| **Thumbprint (SHA-256)** | D6831BA43607F5AC19778D627531562AF55145F191CAB5EFAFA0E0005442B302 |
| **CRL URLs** | http://crl3.digicert.com/DigiCertGlobalRootG2.crl http://crl4.digicert.com/DigiCertGlobalRootG2.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **Microsoft Azure TLS Issuing CA 06**

| **Subject** | CN=Microsoft Azure TLS Issuing CA 06<br>O=Microsoft Corporation<br>C=US |
| --- | --- |
| **Issuer** | CN=DigiCert Global Root G2, OU=www.digicert.com, O=DigiCert Inc, C=US |
| **Serial Number** | 02:E7:91:71:FB:80:21:E9:3F:E2:D9:83:83:4C:50:C0 |
| **Public Key Length** | RSA 4096 bits |
| **Signature Algorithm** | sha384RSA |
| **Validity Not Before** | Wednesday, July 29, 2020 5:30 AM |
| **Validity Not Until** | Thursday, June 27, 2024 4:59 PM |
| **Subject Key Identifier** | D5C1673AC2A39DF477525B59123829E65568BBA5 |
| **Authority Key Identifier** | KeyID:4e:22:54:20:18:95:e6:e3:6e:e6:0f:fa:fa:b9:12:ed:06:17:8f:39 |
| **Thumbprint (SHA-1)** | 30E01761AB97E59A06B41EF20AF6F2DE7EF4F7B0 |
| **Thumbprint (SHA-256)** | 48FF8B494668C752304B48BFE818758987DEF6582E5F09B921F4B60BB3D6A8DD |
| **CRL URLs** | http://crl3.digicert.com/DigiCertGlobalRootG2.crl http://crl4.digicert.com/DigiCertGlobalRootG2.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

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

### **Microsoft RSA TLS CA 01**

| **Subject** | CN=Microsoft RSA TLS CA 01<br>O=Microsoft Corporation<br>C=US |
| --- | --- |
| **Issuer** | CN=Baltimore CyberTrust Root, OU=CyberTrust, O=Baltimore, C=IE |
| **Serial Number** | 0F:14:96:5F:20:20:69:99:4F:D5:C7:AC:78:89:41:E2 |
| **Public Key Length** | RSA 4096 bits |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Tuesday, July 21, 2020 4:00 PM |
| **Validity Not Until** | Tuesday, October 8, 2024 12:00 AM |
| **Subject Key Identifier** | B5760C3011CEC792424D4CC75C2CC8A90CE80B64 |
| **Authority Key Identifier** | KeyID:e5:9d:59:30:82:47:58:cc:ac:fa:08:54:36:86:7b:3a:b5:04:4d:f0 |
| **Thumbprint (SHA-1)** | 703D7A8F0EBF55AAA59F98EAF4A206004EB2516A |
| **Thumbprint (SHA-256)** | 04EEEA8E50B4775B3C24797262917EE50002EC4C75B56CDF3EE1C18CFCA5BA52 |
| **CRL URLs** | http://crl3.digicert.com/Omniroot2025.crl |
| **OCSP URLs** | http://ocsp.digicert.com |

### **Microsoft RSA TLS CA 02**

| **Subject** | CN=Microsoft RSA TLS CA 02<br>O=Microsoft Corporation<br>C=US |
| --- | --- |
| **Issuer** | CN=Baltimore CyberTrust Root, OU=CyberTrust, O=Baltimore, C=IE |
| **Serial Number** | 0F:A7:47:22:C5:3D:88:C8:0F:58:9E:FB:1F:9D:4A:3A |
| **Public Key Length** | RSA 4096 bits |
| **Signature Algorithm** | sha256RSA |
| **Validity Not Before** | Tuesday, July 21, 2020 4:00 PM |
| **Validity Not Until** | Tuesday, October 8, 2024 12:00 AM |
| **Subject Key Identifier** | FF2F7FE106F438F32DED258D98C2FE0EF66CFCFA |
| **Authority Key Identifier** | KeyID:e5:9d:59:30:82:47:58:cc:ac:fa:08:54:36:86:7b:3a:b5:04:4d:f0 |
| **Thumbprint (SHA-1)** | B0C2D2D13CDD56CDAA6AB6E2C04440BE4A429C75 |
| **Thumbprint (SHA-256)** | 05E4005DB0C382F3BD66B47729E9011577601BF6F7B287E9A52CED710D258346 |
| **CRL URLs** | http://crl3.digicert.com/Omniroot2025.crl |
| **OCSP URLs** | http://ocsp.digicert.com |