class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create 
    @link = Link.new(links_params)
    if @link.save
      redirect_to link_path(@link), notice: "Saved!"
    else
      render "new"
    end
  end 

  def show
    @link = Link.find(params[:id])
  end

  def redirect
    @link = Link.find_by_short_url(params[:short_url])
    redirect_to @link.original_url
  end

  
  private

  def links_params
    params.require(:link).permit(:original_url, :short_url)
  end


end