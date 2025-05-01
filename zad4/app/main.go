package main

import (
	"app/controllers"

	"net/http"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()
	e.GET("/", func(c echo.Context) error {
		return c.String(http.StatusOK, "Hello, World!")
	})

	controllers.CreateDatabase()

	// Weather
	e.GET("/weather", controllers.GetWeatherForecast)

	e.Logger.Fatal(e.Start(":1323"))
}

// GPS coordinates of London, United Kingdom. Latitude: 51.5085 Longitude: -0.1257.
// How to use it:
// http://localhost:1323/weather?city=London&lat=51.5085&long=-0.1257