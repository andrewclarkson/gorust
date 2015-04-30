package main

// #cgo LDFLAGS: -L. -limage
// void *image_load(char *path);
//
import "C"

func combine(pathA: String, pathB: String) Image {
     imageA := image_load(C.String(pathA))
     defer image_close(a)
     imageB := image_load(C.String(pathA))
     defer image_close(imageB)
}


func main() {
    C.image_load(C.CString("./gopher.png"))
    //rust := C.image_load(C.CString("./logo.png"))
    //ropher := C.combine(gopher, rust)
    //C.show(ropher)
}
