# Use an official Golang image as the base image
FROM golang:1.23.3-alpine AS builder

# Set the working directory in the container
WORKDIR /app

# Copy the Go modules and dependencies
COPY go.mod ./
RUN go mod download

# Copy the rest of the application source code
COPY . .

# Build the application
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# Use a smaller runtime image
FROM alpine:latest

# Set the working directory in the container
WORKDIR /app

# Copy the built application from the builder stage
COPY --from=builder /app/main .

# Expose the port the application listens on (replace with your actual port)
# EXPOSE 8081

# Define the command to run when the container starts
CMD ["./main"]

