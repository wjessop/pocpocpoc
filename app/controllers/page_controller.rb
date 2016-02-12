class PageController < ApplicationController
  def public
  end

  def private
    if session[:knockknock] != "comein"
      flash.alert = "You don't have permission to view that page!"
      redirect_to action: 'public'
    end
  end

  def create_session
    session[:knockknock] = "comein"
    flash.alert = "You now have a session, you can view the private page"
    redirect_to action: 'public'
  end

  def delete_session
    session[:knockknock] = nil
    flash.alert = "Your session was removed, you no-longer have access to the private page"
    redirect_to action: 'public'
  end
end
