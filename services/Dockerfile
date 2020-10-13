FROM maven:3.6-openjdk-11-slim AS builder

ENV AGT_HOME /var/lib/app/

WORKDIR $AGT_HOME

COPY pom.xml $AGT_HOME

RUN cd "$AGT_HOME" \
 &&  mvn -B dependency:copy-dependencies

FROM openjdk:11-jdk-slim-buster

ENV AGT_HOME /var/lib/app/
WORKDIR $AGT_HOME

ENV DIRECTORY_JOB /var/lib/aguacate/job/
ENV DIRECTORY_DATABASE /var/lib/aguacate/database/
ENV DIRECTORY_DEFINITION /var/lib/aguacate/definition/
ENV DIRECTORY_CONNECTOR /var/lib/aguacate/connector/
ENV DIRECTORY_SCRIPT /var/lib/aguacate/script/

COPY --from=builder "$AGT_HOME/target/dependency" "$AGT_HOME/lib"
COPY start.sh "$AGT_HOME"

RUN mkdir -p "$DIRECTORY_JOB" "$DIRECTORY_DATABASE" "$DIRECTORY_DEFINITION" "$DIRECTORY_CONNECTOR" "$DIRECTORY_SCRIPT" \
 && chmod +x $AGT_HOME/start.sh

ENTRYPOINT ["/var/lib/app/start.sh"]
