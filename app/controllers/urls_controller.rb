class UrlsController < ApplicationController
  def new
    @url=Url.new
  end

  def create
    long_url = params[:url][:long_url]
     @short_url = Url.generate_url
   @url = Url.new(long_url: long_url, short_url: @short_url)

    @url.save
    if @url.save
      redirect_to :action => :show, :id => @url.id
    else
      render 'new'
    end
  end

  def show
    @url = Url.find(params[:id])
  end

  def index
    @urls = Url.all
  end

  def destroy
    @url =Url.find(params[:id])
    @url.destroy
    redirect_to :action => :index
  end

  def short_url
    @url =  Url.find_by(short_url: params[:short_url])
    visitas = @url.visits + 1
    @url.update(visits: visitas)
    redirect_to(@url.long_url)
  end

end
