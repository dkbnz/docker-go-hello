############################
# STEP 1 build static binary
############################
FROM golang:alpine AS builder

# Git is required for fetching the dependencies.
RUN apk update && apk add --no-cache git

WORKDIR $GOPATH/src
COPY . .

# Fetch dependencies using go get.
RUN go get -d -v

# Build the binary.
RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/main

############################
# STEP 2 build small image
############################
FROM scratch

# Copy our static executable.
COPY --from=builder /go/bin/main /main

# Run the binary.
ENTRYPOINT ["/main"]
