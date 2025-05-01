package controllers

import (
	"app/models"
	"log"
	"net/http"

	"github.com/glebarez/sqlite"
	"github.com/labstack/echo/v4"
	"gorm.io/gorm"
)

var db *gorm.DB

func CreateDatabase(){
	var err error
    db, err = gorm.Open(sqlite.Open("file:weatherData.db?_pragma=foreign_keys(ON)&mode=rwc&_journal_mode=WAL&_fk=1"), &gorm.Config{})
    if err != nil {
        log.Fatal("failed to connect to database:", err)
    }

    if err := db.AutoMigrate(&models.Weather{}); err != nil {
        log.Fatal("migration failed:", err)
    }
}

func saveWeatherData(c echo.Context, weatherData []models.Weather) error {
	// for _, dataRecord := range weatherData {	
	// 	if err := db.Create(&dataRecord).Error; err != nil {
	// 		return c.JSON(http.StatusInternalServerError, echo.Map{"error": "could not save weather data"})
	// 	}
	// }

	if err := db.Create(&weatherData).Error; err != nil {
        return c.JSON(http.StatusInternalServerError, echo.Map{"error": "could not save weather data"})
    }

    return c.JSON(http.StatusCreated, echo.Map{"message": "weather data saved"})
}