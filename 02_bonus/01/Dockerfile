FROM alpine
RUN apk update && apk upgrade && apk add pwgen
CMD ["pwgen", "-s", "-y", "10"]

# docker build -t bonus01 .
# docker run --rm bonus01