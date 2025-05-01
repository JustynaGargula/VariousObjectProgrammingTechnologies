package controllers

import (
	"app/models"
	"net/http"

	"github.com/labstack/echo/v4"
)

var weatherData []models.Weather

func GetWeatherForecast(c echo.Context) error {
	weatherData, error := fetchWeatherData()
	if weatherData == nil{
		return c.JSON(http.StatusNotFound, error)
	}
	return c.JSON(http.StatusOK, weatherData)
}
