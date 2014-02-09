module KandanCampfire
  class RoomController < ApplicationController

    def speak
      Channel.find(params[:room_id]).activities.create(
        :content => params[:message][:body],
        :action => :message,
        :user_id => @user.id
      )

      render :nothing => true
    end

  end
end
