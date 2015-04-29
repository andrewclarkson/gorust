package main

import "fmt"
import "C"

func increment(x int, c chan int) {
    c <- x + 1
}

func main() {
    c := make(chan int)
    go increment(1, c)
    x := <-c
    fmt.Println(x)
}
