class Api::V1::YelpsController < ApplicationController
  require 'rest-client'

  def fetch

    token = 'Bearer ObrlkAALBoMK0N4Vl6ngHFGu2gHhO_sdsjDmxLvJkRWnfcfRKdWK3X5xWGSaPL8-q2Y9GADK3JsIXu8t8JhjqEuJJxIZCUXObvhlP_IVMoWmHvShRCVUKiHyBGbKWnYx'
     url = "https://api.yelp.com/v3/businesses/search?term=#{params[:food]}&limit=5&location=#{params[:location]}"
     response = RestClient.get(url, headers={'Accept' => 'application/json','Authorization' => token})
     response = JSON.parse(response)


     render json: response["businesses"] , status:200
  end

  
end
