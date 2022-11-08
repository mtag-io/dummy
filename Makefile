SHELL := /bin/zsh
BUILD_DIR=build
APP_NAME := $(shell ./bin/info.zsh name)
APP_VERSION := $(shell ./bin/info.zsh version)



build:
	GOARCH=amd64 GOOS=darwin go build -o ${BUILD_DIR}/${APP_NAME}-${APP_VERSION}-darwin main.go
	GOARCH=amd64 GOOS=linux go build -o ${BUILD_DIR}/${APP_NAME}-${APP_VERSION}-linux main.go

run:
	./${APP_NAME}

build_and_run:
	build run

clean:
	go clean
	rm ${APP_NAME}-darwin
	rm ${APP_NAME}-linux
	rm ${APP_NAME}-windows