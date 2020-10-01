class HomesController < ApplicationController
  before_action :require_login
  def index
    binding.pry
  end
end
