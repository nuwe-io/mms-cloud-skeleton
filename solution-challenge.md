# MediaMarkt Hackathon - Challenge Solution

Indice:
- [MediaMarkt Hackathon - Challenge Solution](#mediamarkt-hackathon---challenge-solution)
  - [Requisitos](#requisitos)
  - [Registrar el Contenedor generado por el DockerFile con Cloud Build / Artifacts](#registrar-el-contenedor-generado-por-el-dockerfile-con-cloud-build--artifacts)
  - [Generar un fichero YAML para Docker Compose](#generar-un-fichero-yaml-para-docker-compose)
  - [Generar los ficheros Terraform para tener la infraestructura como código y poder desplegar con Kubernetes](#generar-los-ficheros-terraform-para-tener-la-infraestructura-como-código-y-poder-desplegar-con-kubernetes)



## Requisitos

Para realizar esta práctica he necesitado las siguiente hereramientas:
- docker
- gcloud CLI
- terraform
- vscode
  
Ya tenía instalada la mayoría de estas excepto gcloud CLI. Para instalarla he seguido los siguientes pasos:
1. He descargado el instalador de gcloud CLI desde la [página oficial](https://cloud.google.com/sdk/docs/install).
2. He ejecutado el instalador en bash y he seleccionado la opción de instalar la CLI de gcloud.
3. He ejecutado el comando gcloud init para iniciar sesión en mi cuenta de Google Cloud.
4. He seleccionado el proyecto para esta práctica.




## Registrar el Contenedor generado por el DockerFile con Cloud Build / Artifacts
1. Primero, He realizado un análisis del [repositorio con la aplicación](https://github.com/nuwe-io/mms-cloud-skeleton/tree/main). 
2. Me he asegurado de que el Dockerfile construido funciona desplegando en local con los siguiente comandos:
   docker build -t foo .
   docker run -it -p 3000:3000 foo
   ![Despliegue local Dockerfile](./img/img01.png)

   
3. Luego, he creado un archivo de configuración de Cloud Build ([cloudbuild.yaml](./cloudbuild.yaml)) que especifica las acciones que deben realizarse para compilar y registrar el contenedor en el Registry.
4. He ejecutado el comando `gcloud builds submit --config cloudbuild.yaml` para enviar la compilación a Cloud Build.

Aquí tuve una incidencia ya que google no me permitía habilitar el servicio de Cloud Build. Parecía un problema con la facturación de la cuenta. 

![problema técnico gcs](./img/img02.png)

Con este problema he perdido alrededor de 1 hora y no he tenido resultados positivos. Así que no he podido continuar con este punto.

![error en terminal](./img/img03.png)

Lo único que quedaba es comprobar la compilación y el registro en la consola de google.



## Generar un fichero YAML para Docker Compose
1. He creado el fichero [docker-compose.yaml](./docker-compose.yaml).
2. He comprobado su despliegue en local.

![Despliegue local docker compose](./img/img04.png)

## Generar los ficheros Terraform para tener la infraestructura como código y poder desplegar con Kubernetes
1. Terraform es una herramienta para la gestión de infraestructura como código que te permite definir, crear y actualizar la infraestructura de tu aplicación en forma programática.
2. Debes crear un archivo main.tf en el que especifiques las propiedades y configuraciones que deseas para tus recursos de Kubernetes.
3. Luego, ejecuta el comando terraform init para inicializar tu configuración de Terraform y terraform apply para aplicar los cambios en tu cluster de Kubernetes.