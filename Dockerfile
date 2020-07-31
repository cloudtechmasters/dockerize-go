FROM golang:alpine
RUN mkdir /app
COPY . /app
WORKDIR /app/dockerize-go
RUN go build -o web-api . 
CMD ["/app/dockerize-go/web-api"]
