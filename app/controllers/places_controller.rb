class PlacesController < ApplicationController
  def index
    year = params[:year]
    @places = if year.nil?
                  Place.where("is_2017", true)
                 else
                  Place.where("is_#{year} = ?", true)
                 end
  end

  def show
    @place = Place.find(params[:id])
    @places = Place.where(latitude: @place.latitude, longitude: @place.longitude, name: @place.name)

  end

  def home
    api_key = 'cc38c00429dc4dee93ba2451d77f9ae5'
    client = NewsService::Client.new(api_key)
    result = client.fetch_pogo_news
    @news = result[:data]['articles'] if result[:status] == 'Success'
    @error_message = result[:data] unless result[:status] == 'Success'
  end

  def report
  end

  def timeline
  end
end
