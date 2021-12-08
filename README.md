# nc-hello-world

Demo repo that shows how to run a web server with some simple scripting utilities.

## Developing locally

To run the sever locally we use `docker`. There is a provided `docker-compose` yaml to simpliy the config.

```bash
docker-compose up --build
```

Then in another tab run

```bash
curl -s "http://localhost:9001"
```

The example front the netcat script with haproxy.  Haproxy is a proper proxy layer and is responsible for brokering conncections to the netcat script, which is not a proper http server that can handle multiple connections.
