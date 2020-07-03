FROM gradle:jdk11 as builder

RUN gradle clean build --full-stacktrace -Dorg.gradle.daemon=false
