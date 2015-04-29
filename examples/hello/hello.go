package main

/*
 #cgo LDFLAGS: -L. -lhello
void say_hello();
*/
import "C"

func main() {
    C.say_hello()
}
