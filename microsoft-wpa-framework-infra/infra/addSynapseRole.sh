
# echo $SYSTEM_ACCESSTOKEN
# echo $TENANT_ID
# echo $CLIENT_ID
# echo $CLIENT_SECRET
# echo $WORKSPACE_NAME
# echo $WS_ADMIN
# echo $SQL_ADMIN
# echo $SPARK_ADMIN

res=$(curl --request POST \
  --url https://login.microsoftonline.com/$TENANT_ID/oauth2/token \
  --header 'accept:  application/json' \
  --header 'content-type: multipart/form-data;' \
  --form client_id=$CLIENT_ID \
  --form "client_secret=$CLIENT_SECRET" \
  --form grant_type=client_credentials \
  --form resource=https://dev.azuresynapse.net)

#echo $res

token=`echo $res|cut -d, -f7|awk -F':' '{ print $2 }'|tr -d '"}'`
#echo $token

# Add Workspace Admin
curl --request POST \
  --url "https://$WORKSPACE_NAME.dev.azuresynapse.net/rbac/roleAssignments?api-version=2020-02-01-preview" \
  --header "authorization: Bearer $token" \
  --header 'content-type: application/json' \
  --data '{
    "roleId": "6e4bf58a-b8e1-4cc3-bbf9-d73143322b78",
    "principalId": "'$WS_ADMIN'"
}'

# Add SQL Admin
curl --request POST \
  --url "https://$WORKSPACE_NAME.dev.azuresynapse.net/rbac/roleAssignments?api-version=2020-02-01-preview" \
  --header "authorization: Bearer $token" \
  --header 'content-type: application/json' \
  --data '{
    "roleId": "7af0c69a-a548-47d6-aea3-d00e69bd83aa",
    "principalId": "'$SQL_ADMIN'"
}'

# Add Spark Admin
curl --request POST \
  --url "https://$WORKSPACE_NAME.dev.azuresynapse.net/rbac/roleAssignments?api-version=2020-02-01-preview" \
  --header "authorization: Bearer $token" \
  --header 'content-type: application/json' \
  --data '{
    "roleId": "c3a6d2f1-a26f-4810-9b0f-591308d5cbf1",
    "principalId": "'$SPARK_ADMIN'"
}'
