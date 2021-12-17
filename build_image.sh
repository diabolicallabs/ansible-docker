docker buildx build --platform linux/amd64 --load -t ansible:alpine .
#docker buildx build --platform linux/amd64,linux/arm64 --push -t ansible:latest .