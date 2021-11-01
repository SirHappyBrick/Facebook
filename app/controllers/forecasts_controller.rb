class ForecastsController < ApplicationController
  def index
    uri = URI('http://api.openweathermap.org/data/2.5/forecast?cnt=7&id=3081368&appid=9be9a5f01d38ec5e6d840aa2175994ee')

    response = Net::HTTP.get_response(uri)

    body = JSON.parse(response.body)
    binding.pry
    @forecasts = body['list']
  end
end
