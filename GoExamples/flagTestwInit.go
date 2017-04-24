package main

import (
	"fmt"
	"flag"
)

var myBool bool
func init() {
	flag.BoolVar(&myBool,"boolFlag", false, "a bool flag")
}

func main() {
	flag.Parse()
	fmt.Println("myBool: ", myBool)
}