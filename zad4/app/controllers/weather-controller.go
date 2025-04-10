package controllers

import (
	"net/http"

	"github.com/labstack/echo/v4"
	"gorm.io/gorm"
)

type Weather struct {
	gorm.Model
	City string
	Date string
	Temperature string
}

var weatherData = []Weather {
	{City: "Cracow", Date: "10.04.2025", Temperature: "5"},
	{City: "Cracow", Date: "11.04.2025", Temperature: "10"},
}

func GetWeatherForecast(c echo.Context) error {
	
	return c.JSON(http.StatusOK, weatherData)
}
