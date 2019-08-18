FROM caapim/gateway:latest
## Copying the deployment package
COPY deployment/build/gateway/deployment-1.0.0.gw7 /opt/docker/rc.d/deployment.gw7
COPY Enterprise/src/main/gateway/config/global-env.properties /opt/SecureSpan/Gateway/node/default/etc/bootstrap/env/global-env.properties
COPY Enterprise/src/main/gateway/config/privateKeys /opt/SecureSpan/Gateway/node/default/etc/bootstrap/env/privateKeys
## Make restman available
RUN touch /opt/SecureSpan/Gateway/node/default/etc/bootstrap/services/restman
