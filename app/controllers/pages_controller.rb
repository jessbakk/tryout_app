class PagesController < ApplicationController
    before_action :authorize, except: [:show]

    def show
        page = params[:page]
 		render "pages/#{page}"
    end
    
end
