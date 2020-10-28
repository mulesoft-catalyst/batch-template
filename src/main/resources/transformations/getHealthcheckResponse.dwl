%dw 2.0
output application/json
---
{
	appName: app.name,
	correlationId: correlationId,
	muleVersion: mule.version,
	ipAddress: server.ip,
	javaVendor: server.javaVendor,
	javaVersion: server.javaVersion,
	timestamp: now()
}