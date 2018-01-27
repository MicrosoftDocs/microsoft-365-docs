<a name="crit-networking-step1"></a>

### Your Internet bandwidth is sufficient for Microsoft’s cloud services

The bandwidth supported by both central office and branch office Internet connections has enough capacity for daily access to cloud resources, to handle peak usage, and with addition bandwidth for future growth.
If you don’t meet this criterion, the performance of your connectivity and the productivity of your staff might suffer, especially during peak periods of processing when you need it the most.
If needed, go to the [step](networking-provide-bandwidth-cloud-services.md) corresponding to this exit criteria.

<a name="crit-networking-step2"></a>

### Your local offices have local Internet name resolution

To ensure the best possible performance for your user accessing the cloud-based resources for Office 365 and Intune, create and configure each office with local Internet access with a local ISP, whose DNS servers use a local public IP address that identifies their location on the Internet.

If you don’t meet this criterion, performance for branch offices can suffer as traffic traverses an organization’s backbone or traffic is serviced by a front-end server that is geographically distant from the office’s location.

#### How to test
Use a tool or web site from a device in that office to determine the public IP address that the proxy server is using. For example, use the [What Is My IP Address](https://www.whatismypublicip.com/) web page.
This public IP address assigned by your ISP should be geographically local. It should not be from a public IP address range for a central office or from a cloud-based network security vendor.

If needed, go to the [step](networking-dns-resolution-same-location.md) corresponding to this exit criteria.

## Optional but highly-recommended exit criteria

The following criteria are not required for your organization’s networking infrastructure for Microsoft 365 Enterprise, but are highly recommended for additional performance or ease in management.

<a name="crit-networking-step3"></a>

### Your network perimeter devices perform minimal processing of Office 365 traffic

Your network perimeter devices—such as proxy servers, firewalls, and SSL inspection devices—are configured with Office 365 endpoints (URLs and IP address ranges) and to treat traffic and from Office 365 with minimal processing.

If you don’t meet this criterion, Office 365 performance will suffer because your network perimeter devices are doing unnecessary processing of traffic and introducing delays for your workforce for cloud-based services.

#### How to test

To verify that Office 365 traffic is not being unduly processed, use the logging facilities on your network perimeter devices to ensure that traffic to Office 365 destinations is not being inspected, decrypted, or otherwise hindered when it is not needed.

If needed, go to the [step](networking-configure-proxies-firewalls.md) corresponding to this exit criteria.

<a name="crit-networking-step4"></a>

### A plan to manage ongoing changes in Office 365 endpoints is in place

A process within your IT department keeps the list of endpoints—both URLs to Office 365 services and IP address ranges—current for your network perimeter devices that require that information to perform minimal processing traffic to and from Office 365.

If you don’t meet this criterion, changes in endpoints can prevent connectivity to IP addresses that have been moved from one service to another or IP address no longer in use by a service. Additionally, traffic to new points of presence on your network not reflected in your configured endpoints can cause your traffic to be sent to a geographically farther front-end server, resulting in non-optimal performance.

If needed, go to the [step](networking-implement-endpoint-change-mgmt.md) corresponding to this exit criteria.

<a name="crit-networking-step5"></a>

### Your client TCP/IP stacks and Office 365 applications are configured for optimal performance

The TCP settings on your client devices have been set at their appropriate settings and the Exchange Online, Skype for Business Online, SharePoint Online, and Project Online services are tuned for optimum performance.

If you don’t meet this criterion, overall client performance (TCP settings) and performance for Exchange Online, Skype for Business Online, SharePoint Online, and Project Online can suffer.

If needed, go to the [step](networking-optimize-tcp-performance.md) corresponding to this exit criteria.
