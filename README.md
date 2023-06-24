# Proxy Inverso Apache (Apache Reverse Proxy)

Este repositorio contiene el código necesario para levantar un contenedor
que actúe como un Proxy Reverso. Se basa en la imagen [ubuntu/apache2](https://hub.docker.com/r/ubuntu/apache2) 
y utiliza tanto [mod_rewrite](https://httpd.apache.org/docs/2.4/mod/mod_rewrite.html) como 
[mod_proxy](https://httpd.apache.org/docs/2.4/mod/mod_proxy.html). Las pruebas se hicieron redirigiendo
el tráfico a dos aplicaciones [Angular](https://angular.io/). Para funcionar detrás del Proxy Reverso, las
aplicaciones Angular debieron ser construidas utilizando el parámetro [--base-href](https://angular.io/cli/build),
ya que, en caso contrario, la aplicación Angular no define correctamente las URLs a ciertos recursos (este error
fue reportado [aquí](https://github.com/angular/angular-cli/issues/4211) y [aquí](https://stackoverflow.com/q/70846104)).



## Comandos para construir la imagen y ejecutar el contenedor

Para construir la imagen se puede utilizar este comando:

```console
docker build --tag proxy-apache --file Dockerfile .
```

Para ejecutar el contenedor se puede utilizar este comando:

```console
docker run --name proxy --network host --detach proxy-apache
```


### Para más detalles, acceder a la [documentación oficial](https://httpd.apache.org/docs/trunk/es/howto/reverse_proxy.html).
