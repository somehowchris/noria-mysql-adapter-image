FROM rust:1.57.0-alpine3.14 as build

RUN apk add --no-cache musl-dev alpine-sdk libc-dev clang-dev

WORKDIR /src

COPY src/ .
ENV CARGO_TARGET_AARCH64_UNKNOWN_LINUX_MUSL_RUSTFLAGS="-Zgcc-ld=lld"
RUN cargo update
RUN cargo build --release

FROM scratch

COPY --from=build /src/target/release/noria-mysql /bin/noria-mysql

ENTRYPOINT [ "/bin/noria-mysql" ]

EXPOSE 3306