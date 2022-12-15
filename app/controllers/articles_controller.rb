class ArticlesController < ApplicationController
  def index
    @publications = Publication.all
  end
end

