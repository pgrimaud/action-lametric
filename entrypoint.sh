#!/bin/sh

curl -X POST \
-H "Accept: application/json" \
-H "X-Access-Token: ${LAMETRIC_ACCESS_TOKEN}" \
-H "Cache-Control: no-cache" \
-d '{
    "frames": [
        {
            "text": "Actions",
            "icon": "i21802",
            "index": 0
        }
    ]
}' \
${LAMETRIC_PUSH_URL}
