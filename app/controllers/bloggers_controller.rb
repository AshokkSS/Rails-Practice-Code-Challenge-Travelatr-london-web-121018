class BloggersController < ApplicationController
  def index
    @bloggers = Blogger.all
  end

  def show
    @bloggers = Blogger.find(params[:id])
  end
end
