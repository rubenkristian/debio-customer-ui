#!/bin/sh

JSON_STRING='window.configs = { \
  "NODE_ENV":"'"${NODE_ENV}"'", \
  "VUE_APP_VERSION":"'"${VUE_APP_VERSION}"'", \
  "VUE_APP_RECAPTCHA_SITE_KEY":"'"${VUE_APP_RECAPTCHA_SITE_KEY}"'", \
  "VUE_APP_ROLE":"'"${VUE_APP_ROLE}"'", \
  "VUE_APP_DEBIO_USE_TOKEN_NAME":"'"${VUE_APP_DEBIO_USE_TOKEN_NAME}"'", \
  "VUE_APP_DEBIO_DAI_TOKEN_ADDRESS":"'"${VUE_APP_DEBIO_DAI_TOKEN_ADDRESS}"'", \
  "VUE_APP_DEBIO_ESCROW_ETH_ADDRESS":"'"${VUE_APP_DEBIO_ESCROW_ETH_ADDRESS}"'", \
  "VUE_APP_DEBIO_SUBSTRATE_WS":"'"${VUE_APP_DEBIO_SUBSTRATE_WS}"'", \
  "VUE_APP_WEB3_RPC":"'"${VUE_APP_WEB3_RPC}"'", \
  "VUE_APP_BACKEND_API":"'"${VUE_APP_BACKEND_API}"'", \
  "VUE_APP_DEBIO_API_KEY":"'"${VUE_APP_DEBIO_API_KEY}"'", \
  "VUE_APP_USERNAME":"'"${VUE_APP_USERNAME}"'", \
  "VUE_APP_PASSWORD":"'"${VUE_APP_PASSWORD}"'", \
  "VUE_APP_MIXPANEL_TOKEN":"'"${VUE_APP_MIXPANEL_TOKEN}"'", \
  "VUE_APP_SENTRY_DSN":"'"${VUE_APP_SENTRY_DSN}"'", \
  "VUE_APP_PINATA_GATEWAY":"'"${VUE_APP_PINATA_GATEWAY}"'", \
  "VUE_APP_PINATA_JWT_KEY":"'"${VUE_APP_PINATA_JWT_KEY}"'", \
  "VUE_APP_PINATA_REQUIRED_DOCUMENT":"'"${VUE_APP_PINATA_REQUIRED_DOCUMENT}"'", \
  "VUE_APP_ETHERSCAN":"'"${VUE_APP_ETHERSCAN}"'" \
}'

sed -i "s@// CONFIGURATIONS_PLACEHOLDER@${JSON_STRING}@" /usr/share/nginx/html/index.html

exec "$@"