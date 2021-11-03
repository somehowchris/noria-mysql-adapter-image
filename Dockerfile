FROM rust:1.56.1-alpine3.14 as build

RUN apk add --no-cache musl-dev alpine-sdk libc-dev clang-dev

WORKDIR /src

COPY src/ .

RUN cargo update
RUN cargo build --release

FROM alpine:3.14

COPY --from=build /src/target/release/noria-mysql /bin/noria-mysql

ENTRYPOINT [ "/bin/noria-mysql" ]

EXPOSE 3306