package controllers

import (
	"app/models"
	"net/http"

	"github.com/labstack/echo/v4"
)

var weatherData []models.Weather

func GetWeatherForecast(c echo.Context) error {
	city := c.QueryParam("city")
	lat := c.QueryParam("lat")
	long := c.QueryParam("long")

	if city == "" {
		city = "Cracow"
	}
	if lat == "" {
		lat = "50.06143"
	}
	if long == "" {
		long = "19.93658"
	}

	weatherData, error := fetchWeatherData(city, lat, long)
	if weatherData == nil{
		return c.JSON(http.StatusNotFound, error)
	}
	saveWeatherData(c, weatherData)
	return c.JSON(http.StatusOK, weatherData)
}
