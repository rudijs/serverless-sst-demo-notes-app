#!/usr/bin/env bash

echo username=$AWS_USERNAME
echo password=$PASSWORD
echo user-pool-id=$USER_POOL_CLIENT_ID
echo app-client-id=$APP_CLIENT_ID
echo cognito-region=$COGNITO_REGION
echo identity-pool-id=$IDENTITY_POOL_ID
echo invoke-url=$API_ENDPOINT
echo api-gateway-region=$API_GATEWAY_REGION
echo path-template='/notes'
echo method='POST'
echo body='{"content":"hello world","attachment":"hello.jpg"}'

npx aws-api-gateway-cli-test \
--username=$AWS_USERNAME \
--password=$PASSWORD \
--user-pool-id=$USER_POOL_CLIENT_ID \
--app-client-id=$APP_CLIENT_ID \
--cognito-region=$COGNITO_REGION \
--identity-pool-id=$IDENTITY_POOL_ID \
--invoke-url=$API_ENDPOINT \
--api-gateway-region=$API_GATEWAY_REGION \
--path-template='/notes' \
--method='POST' \
--body='{"content":"hello world","attachment":"hello.jpg"}'

