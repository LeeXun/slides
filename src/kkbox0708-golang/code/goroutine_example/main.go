package main

import (
	"fmt"
	"time"
)

func deadloop(id int) {
	for {
		fmt.Println(id)
		time.Sleep(time.Second * 1)
	}
}

func main() {
	deadloop(1)
}
