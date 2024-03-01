#Builder stage
FROM alpine AS builder
WORKDIR /app
COPY data.txt .

#Final stage
FORM fedora
WORKDIR /app
COPY --from=builder /app/data.txt .