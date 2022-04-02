class HomeController < ApplicationController
  def index

  end

  def about
    @about_me = "My name is sAcay"
    @answer = "I just trying to become Web Developer"
  end

end

