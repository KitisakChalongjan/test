package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("service started")
	time.Sleep(time.Second * 5)
	fmt.Println("service stopped")
}
