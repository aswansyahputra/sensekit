library(shiny)
library(shinyjs)
library(shinyWidgets)
library(shinyhelper)
library(tidyverse)
library(purrr)
library(googlesheets)

aroma <- c(
  "Vegetative",
  "Brown Spice",
  "Burnt",
  "Caramelized",
  "Brown Sugar",
  "Papery",
  "Woody",
  "Musty",
  "Earthy",
  "Sweet",
  "Nutty",
  "Fermented",
  "Cocoa",
  "Citrus Fruit",
  "Tobacco"
)

aroma_deskripsi <- c(
  "Aroma segar seperti rumput",
  "Aroma pedas seperti cengkeh",
  "Aroma gosong seperti produk over-cooked",
  "Aroma manis seperti gula karamel",
  "Aroma manis seperti gula cokelat",
  "Aroma seperti gelas kertas",
  "Aroma seperti kayu",
  "Aroma apek",
  "Aroma seperti tanah basah",
  "Aroma manis seperti gula",
  "Aroma seperti kacang tanah",
  "Aroma asam seperti buah terfermentasi",
  "Aroma manis seperti cokelat",
  "Aroma asam seperti jeruk",
  "Aroma seperti tembakau"
)

rasa <- c(
  "Manis",
  "Asin",
  "Asam",
  "Pahit"
)


mouthfeel <- c(
  "Body",
  "Dry",
  "Strength",
  "Smoothness",
  "Gritty"
)

mouthfeel_deskripsi <- c(
  "Tingkat kekentalan",
  "Kering di lidah",
  "Tingkat ketajaman di mulut",
  "Sensasi lembut di mulut",
  "Sensasi berpasir"
)




