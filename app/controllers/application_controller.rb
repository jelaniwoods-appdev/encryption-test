class ApplicationController < ActionController::Base
  def index
    render plain: "Home"
  end
end
