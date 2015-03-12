# docker-ngxbox

Nginx built on Busybox for a very small image.


### Custom Nginx Configuration
```
docker run -d --name=nginx -v $(pwd):/nginx.conf \
    -p 80:80 jmervine/docker-ngxbox:latest
```

### Onbuild

The `onbuild` variant copys all local files into `/html` on build.

```
docker run -d --name=nginx -p 80:80 \
    jmervine/docker-ngxbox:latest
```

