class SessionsController < ApplicationController

    def new

    end

    def create
        if params[:name] && params[:name] != ""
            session[:name] = params[:name]
            redirect_to homepage_path
        else 
            redirect_to login_path
        end
    end

    def destroy
        if session[:name]
            session.delete :name
            redirect_to homepage_path
        else
            redirect_to homepage_path
        end
    end

end