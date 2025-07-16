# Microsoft 365 Security Documentation

This repository contains the Microsoft 365 security documentation, organized into separate docsets for different security products.

## Docsets

- **defender/**: Microsoft Defender documentation
- **defender-business/**: Microsoft Defender for Business documentation  
- **defender-endpoint/**: Microsoft Defender for Endpoint documentation
- **defender-identity/**: Microsoft Defender for Identity documentation
- **defender-vulnerability-management/**: Microsoft Defender Vulnerability Management documentation
- **intelligence/**: Microsoft Defender Threat Intelligence documentation
- **office-365-security/**: Microsoft 365 Security documentation

## Build

To build all documentation:

```powershell
.\.openpublishing.build.ps1
```

Each docset has its own `docfx.json` configuration file and can be built independently.

## Contributing

This project welcomes contributions and suggestions. Please follow the Microsoft documentation style guide.
