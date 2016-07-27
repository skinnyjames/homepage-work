require 'sinatra'
require 'yaml'
require 'kramdown'
require 'json'

get '/' do 
  erb :index
end

get '/work' do 
  @jobs = JSON.dump(YAML.load_file('data/work.yml'))
  erb :work
end
