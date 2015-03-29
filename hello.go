package main

/*
 #cgo LDFLAGS: -L. -ltest
void say_hello();
*/
import "C"

func main() {
    C.say_hello()
}
