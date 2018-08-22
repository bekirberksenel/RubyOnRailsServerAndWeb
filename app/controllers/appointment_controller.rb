class AppointmentController < ApplicationController
   def list
	@appointments = Appointment.search(params[:search])
   end
   
   def list2
	@appointments = Appointment.search(params[:search])
   end
   
   def list3
	@appointments = Appointment.search(params[:search])
   end
   
   def listp
   @appointment = Appointment.find(params[:date])
	end
   
   def show
	@appointment = Appointment.find(params[:id])
   end
   
   def new
    @appointment = Appointment.new
   end
   
   def create
    @appointment = Appointment.new(appointment_params)
	if @appointment.save
      redirect_to :action => 'list'
	end
   end
   
   def appointment_params
	params.require(:appointments).permit(:title, :description, :date)
   end

   def edit
    @appointment = Appointment.find(params[:id])
   end
   
   def update
    @appointment = Appointment.find(params[:id])
	if @appointment.update_attributes(appointment_param)
      redirect_to :action => 'show', :id => @appointment
	end
   end
   
   def appointment_param
	params.require(:appointment).permit(:title, :description, :date)
   end
   
   def delete
    Appointment.find(params[:id]).destroy
    redirect_to :action => 'list'
   end
end
