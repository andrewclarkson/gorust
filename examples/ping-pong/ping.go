package main;

import "fmt"

//extern pong
func c_pong()

//export ping
func ping() {
    fmt.Println("Ping!")
    c_pong()
}

func main() {
    ping()
}
