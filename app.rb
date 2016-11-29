require('sinatra')
require('sinatra/reloader')
require('./lib/places_ib')
also_reload("lib/**/*.rb")

get('/') do
  @places = Places_ib.all()
  erb(:index)
end

post("/been_there") do
  place = params.fetch("place")
  new_place = Places_ib.new(place)
  new_place.save()
  erb(:been_there)
end
