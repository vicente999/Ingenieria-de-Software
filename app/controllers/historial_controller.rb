class HistorialController < ApplicationController
  before_action :authenticate_user!
  def index
    @publications = Publication.all
  end
end
