FROM golang:alpine3.10 as build

WORKDIR /src

COPY app.go .

RUN go build -o /app

FROM scratch as bin

COPY --from=build app /
CMD ["/app"]
