<div align="center">
<img align="center"  width="auto" height="auto" src="https://nuwe.io/images/Group-3-3.png" />
<br/>

<div id="user-content-toc">
  <ul>
    <summary><h1 style="display: inline-block;">Vue - Vite Skeleton</h1></summary>
  </ul>
</div>

</div>

## Vue/Vite Skeleton

<br/>

This repository is a Typescript & Javascript skeleton with Vue, designed for
quickly getting started developing a web application. Check the [Getting Started](#getting-started) for full details.

## Technologies

- [Typescript 4.7](https://www.typescriptlang.org/docs/handbook/release-notes/typescript-4-4.html)
- [Vue 3](https://vuejs.org/)
- [Vitest](https://vitest.dev/)
- [ESLint](https://eslint.org/)
- [Yarn](https://yarnpkg.com/)
- [Docker](https://www.docker.com/)
- [Make](https://www.gnu.org/software/make/manual/make.html)

## Getting Started

Within the [Makefile](Makefile) you can handle the entire flow to get everything up & running:

1. Install `make` on your computer, if you do not already have it.
2. Install the Yarn dependencies: `make deps`
3. Start the application: `make up`

As you could see on the [Makefile](Makefile) script, you could just avoid those steps and just execute `make up`, as
**deps** are dependant of it.

Once these steps are finished, you could access to the application navigating
into [http://localhost:3000](http://localhost:3000).

## Using Dockerfile

In case you don't want to install make but still run with docker follow the below instructions:

1. Docker build -t <app-name>
2. Docker run -it -p 3000:3000 <app-name>

This version is meant to be run on prod environments and listens to all IP adressess. You can change this inside the package.json. You can change as well the exposed port inside the **Dockerfile** and **package.json**

## Overview

This skeleton is based on
a [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html) approach, so you
could find the first basic elements:

> You could [find here an amazing Dev.to article](https://dev.to/bespoyasov/clean-architecture-on-frontend-4311)
> explaining this Clean Architecture on frontend! (credits to [@bespoyasov\_](https://twitter.com/bespoyasov_)).

### UI layer

This folder contains the basic UI elements. You should add any UI element inside this folder, with the respective CSS
file module.

### Application layer

This layer is the one in charge of the different use cases of the application. A Use Case it's a workflow of what should
it happen to a concrete Domain entity once interacts with the application.

This is the layer which would use any external service and communicate with the world (ie. APIs, databases, etc...)

### Services layer

As we said, this is the layer that communicates the application with the outer world, and the one that would be coupled
with almost any 3rd party provider, framework, etc...

## Support

If you are having problems or need anything else, please let us know by
[raising a new issue](https://github.com/nuwe-reports/skeleton-vue/issues/new/choose).

## License

This project is licensed with the [MIT license](LICENSE).
