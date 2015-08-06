require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin_counter')
  @coins = params.fetch('coins').coin()
  erb(:coin_counter)
end
