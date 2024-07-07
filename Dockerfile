FROM quay.io/drsylent/cubix/block2/homework-base:java21

LABEL cubix.homework.owner="Csaba Szabó"

ARG PROJECT_FOLDER

USER 1001

ENV CUBIX_HOMEWORK="Csaba Szabó" \
    APP_DEFAULT_MESSAGE=

COPY --chown=1001 $PROJECT_FOLDER/target/*.jar app.jar

ENTRYPOINT [ "java", "-jar", "app.jar" ]