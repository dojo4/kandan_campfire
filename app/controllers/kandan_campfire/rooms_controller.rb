module KandanCampfire
  class RoomsController < ApplicationController

    def index
      render :json => { :rooms => Channel.all }#, :root => 'rooms'
    end

  end
end
