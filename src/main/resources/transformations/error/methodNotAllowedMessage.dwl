%dw 2.0
output application/json
---
{
    "success": false,
    "apiName": Mule::p("api.name"),
    "version": Mule::p("api.version"),
    "correlationId": correlationId,
    "timestamp": now(),
    "errorDetails": [
        {
            "code": 405,
            "message": "Method Not Allowed",
            "additionalInfo": "Method Not Allowed : " ++ (error.description default "")
        }
    ]
}