package main

import (
	"fmt"
	"time"
)

func deadloop() {
	for {
	}
}

func main() {
	go deadloop()
	for {
		fmt.Println("Main Loop")
		time.Sleep(time.Second * 1)
	}
}
