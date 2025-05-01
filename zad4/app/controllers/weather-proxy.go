package controllers

import (
	"app/models"
	"encoding/json"
	"fmt"
	"net/http"
)

type DailyDetails struct {
    Date []string `json:"time"`
    Temp []float64 `json:"temperature_2m_mean"`
}

type WeatherDailyAll struct {
    Daily DailyDetails `json:"daily"`
}

func fetchWeatherData(city string, lat string, long string) ([]models.Weather, error) {
	url:= "https://api.open-meteo.com/v1/forecast?latitude="+lat+"&longitude="+long+"&daily=temperature_2m_mean&timezone=auto"
	resp, err := http.Get(url)
	defer resp.Body.Close()
	if err != nil {
		return nil, err
	}

	if resp.StatusCode != http.StatusOK {
		return nil, fmt.Errorf("%s", "API return status: "+resp.Status)
	} else{
		var neededApiData WeatherDailyAll
		err := json.NewDecoder(resp.Body).Decode(&neededApiData)
		if err == nil {
			var results []models.Weather

			for i := range neededApiData.Daily.Date {
				date := neededApiData.Daily.Date[i]
				temp := neededApiData.Daily.Temp[i]
		
				results = append(results, models.Weather{
					City:        city,
					Date:        date,
					Temperature: fmt.Sprintf("%.1f°C", temp),
				})
			}
			return results, nil
		} else {
			return nil, err
		}
	}
}