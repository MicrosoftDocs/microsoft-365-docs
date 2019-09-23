<a name="crit-networking-step1"></a>
### Required: Your network is ready for Microsoft 365 Enterprise

- Your offices have adequate Internet bandwidth for Microsoft 365 traffic, including Office 365, Microsoft Intune, and Windows 10 Enterprise installation and updates.
- Your overall network maps to an [Office 365 reference architecture](https://docs.microsoft.com/office365/enterprise/office-365-network-connectivity-principles#BKMK_P2).
- Your network changes have been piloted and tested and meet with your traffic latency requirements.

If needed, [Step 1](../networking-provide-bandwidth-cloud-services.md) can help you with this requirement.

<a name="crit-networking-step2"></a>
### Required: Your local offices have local Internet connections and name resolution

You configured each local office with Internet access with a local ISP whose DNS servers use a local public IP address that identifies their location on the Internet. This ensures the best possible performance for users who access Microsoft 365 cloud services.

If you don’t use a local ISP for each branch office, performance can suffer because network traffic must traverse an organization’s backbone or data requests are serviced by remote front-end servers.

#### How to test
Use a tool or web site from a device in that office to determine the public IP address that the proxy server is using. For example, use the [What Is My IP Address](https://www.whatismypublicip.com/) web page. This public IP address assigned by your ISP should be geographically local. It should not be from a public IP address range for a central office or from a cloud-based network security vendor.

If needed, [Step 2](../networking-dns-resolution-same-location.md) can help you with this requirement.

<a name="crit-networking-step3"></a>
### Optional: Unneccessary network hairpins are removed

You examined your network hairpins and determined their impact on performance for all of your offices. You removed network hairpins where possible or worked with your third-party network or security provider to implement optimal Microsoft 365 peering for their network.

If needed, [Step 3](../networking-avoid-network-hairpins.md) can help you with this option.


<a name="crit-networking-step4"></a>
### Optional: You have configured traffic bypass on your Internet browsers and edge devices

You deployed the latest PAC files to your on-premises Internet browsers so that traffic to Microsoft 365 DNS domain names bypass proxy servers.

You configured your network perimeter devices—such as firewalls, and SSL Break and Inspect, and packet inspection devices— to use traffic bypass or to minimally process traffic to the Optimize and Allow categories of Microsoft 365 endpoints.


#### How to test

Use the logging tools on your network perimeter devices to ensure that traffic to Microsoft 365 destinations isn’t being inspected, decrypted, or otherwise hindered.

If needed, [Step 4](../networking-configure-proxies-firewalls.md) can help you with this option.


<a name="crit-networking-step5"></a>
### Optional: Your clients and Office 365 applications are configured for optimal performance

You have optimized the Transmission Control Protocol (TCP) settings on your client devices and for Exchange Online, Skype for Business Online, SharePoint Online, and Project Online services.

If needed, [Step 5](../networking-optimize-tcp-performance.md) can help you with this option.
