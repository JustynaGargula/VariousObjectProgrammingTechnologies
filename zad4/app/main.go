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

	// Weather
	e.GET("/weather", controllers.GetWeatherForecast)

	e.Logger.Fatal(e.Start(":1323"))
}