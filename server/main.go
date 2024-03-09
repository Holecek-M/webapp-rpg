package main

import (
		"net/http"
		"github.com/gin-gonic/gin"
)

func main() {
	// Get the IP address of the host machine
	// ip := getLocalIP()

	router := gin.Default()

	// Serve static files from the "www" folder
	router.StaticFS("/", http.Dir("../www"))

	router.Run(":3000")
}