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
