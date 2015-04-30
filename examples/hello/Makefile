hello: libhello.so hello.go
	go build hello.go

libhello.so: hello.rs
	rustc --crate-type dylib hello.rs
