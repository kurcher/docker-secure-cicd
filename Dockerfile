FROM alpine:3.19
RUN echo "Hello from anOtHer GitHub Actions!" > /message.txt
CMD ["cat", "/message.txt"]
