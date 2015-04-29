// Created by cgo - DO NOT EDIT

//line /home/_andrewclarkson/code/go-rust/examples/channels/channels.go:1
package main
//line /home/_andrewclarkson/code/go-rust/examples/channels/channels.go:4

//line /home/_andrewclarkson/code/go-rust/examples/channels/channels.go:3
import "fmt"
//line /home/_andrewclarkson/code/go-rust/examples/channels/channels.go:7

//line /home/_andrewclarkson/code/go-rust/examples/channels/channels.go:6
func increment(x int, c chan int) {
	c <- x + 1
}
//line /home/_andrewclarkson/code/go-rust/examples/channels/channels.go:11

//line /home/_andrewclarkson/code/go-rust/examples/channels/channels.go:10
func main() {
	c := make(chan int)
	go increment(1, c)
	x := <-c
	fmt.Println(x)
}
