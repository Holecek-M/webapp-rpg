FROM golang:latest

WORKDIR /app

# Copy Go source code
COPY server ./server

# Copy static files
COPY www ./www

WORKDIR /app/server

RUN go mod tidy
RUN go build -o server .

EXPOSE 3000

CMD ["./server"]
