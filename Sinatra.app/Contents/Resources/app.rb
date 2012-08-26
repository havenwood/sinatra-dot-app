#!/usr/bin/env ruby

require 'sinatra'

class App << Sinatra::Base
  get '/' do
    'hrmm'
  end
end

App.run!