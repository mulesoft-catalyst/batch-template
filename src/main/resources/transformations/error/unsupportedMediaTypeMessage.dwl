%dw 2.0
output application/json
---
{
    "success": false,
    "apiName": Mule::p("api.name"),
    "version": Mule::p("api.name"),
    "correlationId": correlationId,
    "timestamp": now(),
    "errorDetails": [
        {
            "code": 415,
            "message": "Unsupported Media Type",
            "additionalInfo": "Unsupported Media Type : " ++ (error.description default "")
        }
    ]
}