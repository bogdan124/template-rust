# Rust as the base image
FROM rust:1.64.0

RUN USER=root cargo new --bin actix_start
WORKDIR /actix_start


COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml


RUN cargo build --release
RUN rm src/*.rs


COPY ./src ./src


RUN rm ./target/release/deps/actix_start*
RUN cargo install --path .

CMD ["actix_start"]
