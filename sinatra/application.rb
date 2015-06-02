require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'logstash-logger'



class Application < Sinatra::Base
  set :bind, '0.0.0.0'

  get '/' do
    logger = LogStashLogger.new([
      { type: :file, path: '/tmp/logs/production.json', sync: true },
      { type: :stdout }
    ])
    message = "Awesome message #{Time.now.to_i}"
    logger.info(message)
    message
  end
end
