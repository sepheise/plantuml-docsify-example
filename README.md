# PlantUML + Docsify example

Example of generating PlantUML diagrams and running a documentation site with docsify.

## Running locally

1. Install the dependencies

- Java
- [Graphviz](https://graphviz.org/download/)
- [Docsify](https://docsify.js.org/)

2. Generate the images using PlantUML jar (edit the path)

```
java -Dplantuml.include.path="/absolute/path/.../resources/c4-plantuml/" -jar plantuml.jar -tsvg "docs/**/*.puml"
```

3. Run docsify

```
docsify serve docs
```

## Running with Docker

1. Build the image

```
make build
```

2. Run the image

```
make run
```

This example relies on:

- https://plantuml.com/
- https://github.com/plantuml-stdlib/C4-PlantUML
- https://docsify.js.org/
- https://hub.docker.com/r/timbru31/java-node/
