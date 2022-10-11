FROM golang:alpine3.10 as build

WORKDIR /src

COPY app.go .

RUN go buold -o /app

FROM scratch as bin

COPY --from=build app /
CMD ["/app"]
