#!/bin/sh

if [ -z "$NOTIFICATION_ICON" ]; then
  NOTIFICATION_ICON=21802
fi

if [ -z "$NOTIFICATION_TEXT" ]; then
  TEXT="CI of ${GITHUB_REPOSITORY}"
else
  TEXT=$NOTIFICATION_TEXT
fi

curl -X POST \
-H "Accept: application/json" \
-H "X-Access-Token: ${LAMETRIC_ACCESS_TOKEN}" \
-H "Cache-Control: no-cache" \
-d '{
    "frames": [
        {
            "text": "'"${TEXT}"' #'${GITHUB_RUN_NUMBER}'",
            "icon": "'${NOTIFICATION_ICON}'",
            "index": 0
        }
    ]
}' \
${LAMETRIC_PUSH_URL}
