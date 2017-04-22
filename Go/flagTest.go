package main

import (
	"fmt"
	"flag"
)

func main() {
	var myBool bool
	flag.BoolVar(&myBool,"boolFlag", false, "a bool flag")
	flag.Parse()
	fmt.Println("myBool: ", myBool)
}