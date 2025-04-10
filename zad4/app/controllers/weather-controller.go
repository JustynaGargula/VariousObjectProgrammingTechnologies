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

var weatherData []Weather

func GetWeatherForecast(c echo.Context) error {
	weatherData, error := fetchWeatherData()
	if weatherData == nil{
		return c.JSON(http.StatusNotFound, error)
	}
	return c.JSON(http.StatusOK, weatherData)
}
