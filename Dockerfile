#Builder stage
FROM alpine AS builder
COPY data.txt .

#Final stage
FROM fedora
COPY --from=builder /data.txt .
