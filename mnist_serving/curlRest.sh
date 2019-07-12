set -x

curl -X GET http://sacp-service.mnist-restapi-test.svc.cluster.local:8888/v1/models/mnist 
curl -d '{"instances": [1.0,2.0,5.0]}' -X POST http://sacp-service.mnist-restapi-test.svc.cluster.local:8888/v1/models/mnist:predict
#curl -H POST -d ${BASE64DATA} http://sacp-service.mnist-restapi-test.svc.cluster.local:8888/v1/models/mnist:classify
#curl -H POST -d '{signature_name:classify_objects,examples:[{image:{b64:aW1hZ2UgYnl0ZXM=},caption:seaside},{image:{b64:YXdlc29tZSBpbWFnZSBieXRlcw==},caption:mountains}]}' http://sacp-service.mnist-restapi-test.svc.cluster.local:8888/v1/models/mnist:classify
