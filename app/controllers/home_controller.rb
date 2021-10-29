require 'uri'
require 'net/http'
require 'json'

class HomeController < ApplicationController
  def index; end

  def about
    uri = URI('https://api.github.com/users/zxbuzzy')
    res = JSON.parse(Net::HTTP.get_response(uri).body)
    @login = res['login']
    @profile_picture = res['avatar_url']
    @url = res['html_url']
    @name = 'Nikita Andriyannikov'
  end
end
