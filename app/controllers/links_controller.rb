class LinksController < ApplicationController
  autocomplete :link, :site
  def index
    @links = Link.page(params[:page]).per(20).order('created_at DESC')
  end

  def new
    @link = Link.new

  end

  def create
    @link = Link.new(params.require(:link).permit(:title, :site, :url, :description))
      if @link.save
        redirect_to root_path
      else
        render "new"
      end
  end
end
