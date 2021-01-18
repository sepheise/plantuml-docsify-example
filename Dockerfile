FROM timbru31/java-node

COPY . /documentation-server
WORKDIR /documentation-server

# Install dependencies (graphviz and docsify)
RUN apt-get -qq update; \
  apt-get install -qqy graphviz

RUN npm i docsify-cli -g

# Generate SVG images using PlantUML jar
RUN java -Dplantuml.include.path="/documentation-server/resources/c4-plantuml/" -jar plantuml.jar -tsvg "docs/**/*.puml"

CMD docsify serve docs
