# jaeger

> A simple Jaeger environment.

## Elasticsearch

Use elasticsearch as storage backend,  you only need to configure two environment variables.

`SPAN_STORAGE_TYPE`: specify storage type, you need to configure it as `elasticsearch`

`ES_SERVER_URLS`: server address of elasticsearch, such as `http://localhost:9200`

```bash
# pull image
docker pull ttbb/jaeger:nake
# run
docker run -it -d --name jaeger-with-es --network=host -e SPAN_STORAGE_TYPE="elasticsearch" -e ES_SERVER_URLS="http://localhost:9200" ttbb/jaeger:nake
```
