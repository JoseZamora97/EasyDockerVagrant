# EasyDocker integration with Vagrant.

Este proyecto es un complemento de [EasyDocker](https://github.com/JoseZamora97/EasyDocker)
Está diseñado para la creación una máquina virtual declarativa.

## Puesta en marcha.

### Pre-requisitos:
- Tener instalado [Vagrant](https://www.vagrantup.com/)
- Tener instalado [VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads)

### Ejecución:
**Paso 1**. Clonar el proyecto EasyDocker:
````
git clone https://github.com/JoseZamora97/EasyDocker.git
````
**Paso 2**. Clonar los microservicios DockerController:
```
git clone https://github.com/DavidCorreas/DockerController.git
```
**Paso 3**. Copiar EasyDocker y DockerController dentro del directorio `app`. Debería quedar la siguiente
estructura:
```
app
 |- EasyDocker
 |- DockerController
 |- launch.sh
```
**Paso 4**. Navegar a la raíz del projecto, abrir una terminal y escribir:
```
vagrant up --provision
```

**Paso 5**. Establecer una conexión `ssh` con la máquina virtual.
```
vagrant ssh
```

**Paso 6**. Navegar hacia la ruta `/srv/app`.
``` 
cd /srv/app
```

**Paso 7**. Ejecutar el script de ejecución `launch.sh`
```
source launch.sh
```