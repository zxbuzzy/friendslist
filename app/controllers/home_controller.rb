class HomeController < ApplicationController
  def index; end

  def about
    @about_me = 'Nikita Andriyannikov'
  end
end
