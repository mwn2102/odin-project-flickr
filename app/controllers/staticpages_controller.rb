class StaticpagesController < ApplicationController
  def index
    
    
    ENV["FlickRaw.api_key"]
    ENV["Flickraw.shared_secret"]
    

    if params[:user]
      photo = flickr.photos.search(:user_id => params[:user])
      first_photo = flickr.photos.getInfo(:photo_id => photo[0].id)
      @photos = FlickRaw.url(first_photo)
    end
    
  end

  def show
  end
end
