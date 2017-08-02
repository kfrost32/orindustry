class LinksController < ApplicationController
  autocomplete :link, :site
  def index
    @links = Link.page(params[:page]).per(20).order('created_at DESC')
    @links_by_date = Link.all.group_by { |link| link.created_at.strftime("%A %D") }
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
