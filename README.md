# Docker base images

## Redis

Protected mode is OFF.

Pass more parameters to `redis-server` via command:

```yaml
redis:
  restart: always
  image: sergef/docker-library-redis:3.2.9
  ports:
    - 6379:6379
  command: --loglevel verbose
```
