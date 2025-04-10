package controllers

import (
	"net/http"

	"github.com/labstack/echo/v4"
)


func GetWeatherForecast(c echo.Context) error {
	
	return c.String(http.StatusOK, "Hopefully, it's going to be pretty nice")
}
