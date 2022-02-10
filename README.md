# Test-Tecnical-Oswaldo-master
Prueba tecnica 
1. Las capas de la aplicación (por ejemplo capa de persistencia, vistas, red, negocio, etc) y
qué clases pertenecen a cual.
Domain - Consumo de api , Persistencia de datos
Data - Objetos Class Object donde se decodean los json de respuesta del consumo de api
Resources - Pre Vistas reutilizables Extensiones
Utils - Guardado local , funcionalidades de red estado
View - Vistas
Controllers - Controladores de la vista

2. La responsabilidad de cada clase creada.

Apicaller - consumo de api request
Data Persistencia - Guardado en core data 
Title - Objeto decodeable codeable para el parseo de la data
Youtube Search Response -  Objeto decodeable codeable para el parseo de la data para youtube
Extension - funcionalidad de asignar mayuscula en cada inicio del parrafo
Gif Image - parsea en el formato gif para los loaders
CustomLoader - Arma la vista completa con el loader
Reachability - ve el estado de internet offline online
ShareUserDefaults - manejo de guardado local
CollectionViewTableViewCellDelegate.... -  Son colecciones de items de data tables  donde se maneja sus gestos ditap como el llenado visual de los mismos
SearchResultsViewController - controlador de vistas flujos de busqueda
HomeViewController - es clase padre donde se hacen las 1ras consultas de request
MainTabBarViewController - clase que controla el router de vistas en menu 

Responda y escriba dentro del Readme con las siguientes preguntas:
1. En qué consiste el principio de responsabilidad única? Cuál es su propósito?
  En que el controllador solo debe consumir por cada servicio de funcionalidad es decir en caso de un logeo
  el consumo de un login google , correo, apple ,etc deben separados con sus respectivas clases y solo deben ser llamadas
  en el controlador que necesite las funcionalidades que requiera
2. Qué características tiene, según su opinión, un “buen” código o código limpio
  La robustez para que sea escalable a largo plazo
  que obtenga un patron de arquitectura  optimo VIPER , MVVM
  que utilize segun sea el caso  patrones creacionales , factory ,abstrac , singleton
  patrones estructurales , adaptores ,decorator
  un diseño fluido usando poco los storyboards , mas los xibs , o programacion en ukit (sin storyboards ni  xibs)
