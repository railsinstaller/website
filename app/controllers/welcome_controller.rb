class WelcomeController < ApplicationController
  caches_page :index, :windows, :mac, gzip: :best_speed

  def index
  end

  def windows
  end

  def mac
  end

end
