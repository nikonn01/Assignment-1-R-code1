source("get-opendata-catalogue-fun.R")

Catalogue <- get_odata_catalogue(
  service="https://api.stats.govt.nz/opendata/v1",
  endpoint="data.json",
  service_api_key = "3727dfa9d9f44874a510f426cd115b1c"
)

print(Catalogue[,c("distribution")])


source("get-odata-fun.R")

ServiceEntities <-  Filter(function(x)!all(is.na(x)),
                           get_odata(
                             service = "https://api.stats.govt.nz/opendata/v1",
                             endpoint = "Covid-19Indicators",
                             entity = "",
                             query_option = "",
                             service_api_key = "3727dfa9d9f44874a510f426cd115b1c"))

print(ServiceEntities)

Observations <-  Filter(function(x)!all(is.na(x)),
                         get_odata(
                         service = "https://api.stats.govt.nz/opendata/v1",
                         endpoint = "Covid-19Indicators",
                         entity = "Observations",
                         query_option = "$select=ResourceID,Period,Duration,Label1,Label2,Value,Unit,Measure,Multiplier&$top=10",
                          service_api_key = "3727dfa9d9f44874a510f426cd115b1c"))
print(Observations)


Resources <-  Filter(function(x)!all(is.na(x)),
                     get_odata(
                       service = "https://api.stats.govt.nz/opendata/v1",
                       endpoint = "Covid-19Indicators",
                       entity = "Resources",
                       query_option = "",
                       service_api_key = "3727dfa9d9f44874a510f426cd115b1c"))

print(Resources)


Observations_CPCOV11 <-  Filter(function(x)!all(is.na(x)),
                        get_odata(
                          service = "https://api.stats.govt.nz/opendata/v1",
                          endpoint = "Covid-19Indicators",
                          entity = "Observations",
                          query_option = "$filter=(
                                                    ResourceID eq 'CPCOV11' 
                                                  )   

                                          ",
                          service_api_key = "3727dfa9d9f44874a510f426cd115b1c"))

print(Observations_CPCOV11)

Observations_CPCOV12<-  Filter(function(x)!all(is.na(x)),
                               get_odata(
                                 service = "https://api.stats.govt.nz/opendata/v1",
                                 endpoint = "Covid-19Indicators",
                                 entity = "Observations",
                                 query_option = "$filter=(
                                                    ResourceID eq 'CPCOV12' 
                                                  )   

                                          ",
                                 service_api_key = "3727dfa9d9f44874a510f426cd115b1c"))

print(Observations_CPCOV12)

Observations_CPCOV12.1<-  Filter(function(x)!all(is.na(x)),
                                 get_odata(
                                   service = "https://api.stats.govt.nz/opendata/v1",
                                   endpoint = "Covid-19Indicators",
                                   entity = "Observations",
                                   query_option = "$filter=(
                                                    ResourceID eq 'CPCOV12.1' 
                                                  )   

                                          ",
                                   service_api_key = "3727dfa9d9f44874a510f426cd115b1c"))

print(Observations_CPCOV12.1)

Observations_CPCOV12.2<-  Filter(function(x)!all(is.na(x)),
                               get_odata(
                                 service = "https://api.stats.govt.nz/opendata/v1",
                                 endpoint = "Covid-19Indicators",
                                 entity = "Observations",
                                 query_option = "$filter=(
                                                    ResourceID eq 'CPCOV12.2' 
                                                  )   

                                          ",
                                 service_api_key = "3727dfa9d9f44874a510f426cd115b1c"))

print(Observations_CPCOV12.2)

Observations_CPCOV12.3<-  Filter(function(x)!all(is.na(x)),
                                 get_odata(
                                   service = "https://api.stats.govt.nz/opendata/v1",
                                   endpoint = "Covid-19Indicators",
                                   entity = "Observations",
                                   query_option = "$filter=(
                                                    ResourceID eq 'CPCOV12.3' 
                                                  )   

                                          ",
                                   service_api_key = "3727dfa9d9f44874a510f426cd115b1c"))

print(Observations_CPCOV12.3)

Observations_CPCOV12.4<-  Filter(function(x)!all(is.na(x)),
                                 get_odata(
                                   service = "https://api.stats.govt.nz/opendata/v1",
                                   endpoint = "Covid-19Indicators",
                                   entity = "Observations",
                                   query_option = "$filter=(
                                                    ResourceID eq 'CPCOV12.4' 
                                                  )   

                                          ",
                                   service_api_key = "3727dfa9d9f44874a510f426cd115b1c"))

print(Observations_CPCOV12.4)

Observations_CPCOV9<-  Filter(function(x)!all(is.na(x)),
                               get_odata(
                                 service = "https://api.stats.govt.nz/opendata/v1",
                                 endpoint = "Covid-19Indicators",
                                 entity = "Observations",
                                 query_option = "$filter=(
                                                    ResourceID eq 'CPCOV9' 
                                                  )   

                                          ",
                                 service_api_key = "3727dfa9d9f44874a510f426cd115b1c"))

print(Observations_CPCOV9)

Observations_CPCOV10<-  Filter(function(x)!all(is.na(x)),
                               get_odata(
                                 service = "https://api.stats.govt.nz/opendata/v1",
                                 endpoint = "Covid-19Indicators",
                                 entity = "Observations",
                                 query_option = "$filter=(
                                                    ResourceID eq 'CPCOV10' 
                                                  )   

                                          ",
                                 service_api_key = "3727dfa9d9f44874a510f426cd115b1c"))

print(Observations_CPCOV10)
