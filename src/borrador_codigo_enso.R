#Código borrador ENSO

url <- "https://www.cpc.ncep.noaa.gov/products/analysis_monitoring/ensostuff/ONI_v5.php"
tabla_oni <- url |> read_html() |> html_nodes("table") |> _[[9]] |> html_table(header = TRUE, fill= TRUE) |> as.data.frame()
tabla_oni2<-tabla_oni[-c(11, 22, 33, 44, 55, 66, 77), ]
tabla_limpia<- tabla_oni2 |> mutate(across(everything(),as.numeric))

#Función

enso <- function(date){
  date_formato<- as.Date(date)
  anio<-as.numeric(format(date_formato,"%Y"))
  mes<-as.numeric(format(date_formato,"%m"))
  
  if(mes %in% c(1, 2, 3) ){
    estacion <- "Invierno"
  }else if(mes %in% c(4,5,6)){
    estacion <- "Primavera"
  }else if(mes %in% c(7,8,9)){
    estacion <- "Verano" 
  }else if(mes %in% c(10,11,12)){
    estacion <- "Otoño"
  }
  return(estacion)
}
enso("2004-08-24")
  