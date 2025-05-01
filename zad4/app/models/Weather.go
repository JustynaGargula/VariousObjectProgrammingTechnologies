package models

import "gorm.io/gorm"

type Weather struct {
	gorm.Model
	City        string
	Date        string
	Temperature string
}