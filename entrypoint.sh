  
#!/bin/sh

curl -X POST \
    -H "private-token: $PRIVATE_TOKEN" \
    "https://gitlab.com/api/v4/projects/$PROJECT_ID/mirror/pull"