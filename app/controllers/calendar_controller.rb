class CalendarController < ApplicationController
    before_filter :authenticate

  def calendar
  @title = "Kalender"
  @date = params[:month] ? Date.parse(params[:month]) : Date.today
  @tasks = Tasks.where(:user_email == current_user.email).all
  
  if params[:iddelete]
    @id = params[:iddelete]
   Tasks.delete(@id)
   flash[:success] = "Termin geloescht"
   redirect_to calendar_path
   end
  end
  
   
 def new_date
    @title = "Neuer Termin"
    
    if params[:tasks]
      params[:tasks][:user_email] = current_user.email
      @task = Tasks.new(params[:tasks])
        if @task.save
          flash[:success] = "Termin gespeichert!"
          redirect_to calendar_path
        end
    else
      @task = Tasks.new
    end
 end
 
end 
 
 
