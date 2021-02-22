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
            "code": 500,
            "message": "Internal Server Error",
            "additionalInfo": "Internal Server Error : " ++ (error.description default "")
        }
    ]
}