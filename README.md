# Ejemplo de Proxy Inverso (Reverse Proxy) con Apache

Este repositorio contiene el código necesario para levantar un contenedor
que actúe como un Proxy Reverso. Se basa en la imagen [ubuntu/apache2](https://hub.docker.com/r/ubuntu/apache2).


## Comandos para construir y ejecutar el contenedor

Para construir la imagen se puede utilizar este comando:

```bash
docker build --tag proxy-apache --file Dockerfile .
```

Para ejecutar el contenedor se puede utilizar este comando:

```bash
docker run --name proxy --network host --detach proxy-apache
```


### Para más detalles, acceder a la [documentación oficial](https://httpd.apache.org/docs/trunk/es/howto/reverse_proxy.html).
