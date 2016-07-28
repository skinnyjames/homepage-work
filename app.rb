require 'sinatra'
require 'yaml'
require 'kramdown'
require 'json'

get '/' do 
  @jobs = JSON.dump(YAML.load_file('data/work.yml'))
  erb :work, :layout => :application
end

