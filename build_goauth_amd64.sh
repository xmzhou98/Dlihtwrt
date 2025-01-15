git clone http://172.19.233.74/zhangsheng/goauth.git  goauth
cd goauth
export CGO_ENABLED=0
export GO111MODULE=on
export GOPROXY=https://goproxy.cn
export GOOS=linux
export GOARCH=amd64
export CGO_LDFLAGS=-static
#export CC=gcc
go mod tidy
go build -o goauth
