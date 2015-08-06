require('sinatra')
require('sinatra/reloader')
require('./lib/coin')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/coin_counter') do
  @coins = params.fetch('cents').to_i().coin()
  erb(:coin_counter)
end
