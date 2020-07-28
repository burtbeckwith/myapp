#FROM oracle/graalvm-ce:20.1.0-java8 as graalvm
#RUN gu install native-image
#
#COPY . /home/app/myapp
#WORKDIR /home/app/myapp
#
#RUN native-image --no-server -cp build/libs/myapp-*-all.jar
#
#FROM frolvlad/alpine-glibc
#RUN apk update && apk add libstdc++
#EXPOSE 7777
#COPY --from=graalvm /home/app/myapp/myapp /app/myapp
#ENTRYPOINT ["/app/myapp"]

FROM frolvlad/alpine-glibc

COPY build/myapp /app

RUN apk update && apk add libstdc++

EXPOSE 7777

ENTRYPOINT ["/app/myapp"]
