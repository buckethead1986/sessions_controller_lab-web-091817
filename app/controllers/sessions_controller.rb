class SessionsController < ApplicationController
  def new

  end

  def create
    if !params[:name] #if its nil
      redirect_to '/login' #redirect to login to try again
    elsif params[:name].empty? #else if its empty
      redirect_to '/login'  #redirect to login to try again
    else                  #else if it exists and isnt empty
      session[:name] = params[:name] #set session name equal to params name
      redirect_to '/' #redirect to home page
    end

  end

  def destroy
    session.delete :name
  end
end
