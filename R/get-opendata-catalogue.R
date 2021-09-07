
# get cataloge of Stats NZ Open data datasets

source("get-opendata-catalogue-fun.R")


Catalogue <- get_odata_catalogue(
                          service="https://api.stats.govt.nz/opendata/v1",
                          endpoint="data.json",
                          service_api_key = "3727dfa9d9f44874a510f426cd115b1c"
                          )

