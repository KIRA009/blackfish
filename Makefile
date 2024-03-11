build:
	CGO_ENABLED=0 GOOS=linux GOARCH=arm go build -o webserver main.go


enclave: build
	docker run -it --privileged -e ARCH=arm64 -v `pwd`:/app/mount marlinorg/enclave-builder
