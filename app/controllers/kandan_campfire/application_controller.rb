module KandanCampfire
  class ApplicationController < ActionController::Base
    before_filter :authenticate_user_by_campfire_token!

    private

      def authenticate_user_by_campfire_token!
        authenticate_with_http_basic do |u, p|
          unless @user = User.find_by_authentication_token(u)
            return render(:status => :unauthorized)
          end
        end
      end

  end
end
