class Appointment < ApplicationRecord
	def self.search(term)
  		if term
    		where('title LIKE ?', "%#{term}%")
  		else
    		all
  		end
	end	
	
    def self.search2(term)
  		if term
    		where('description LIKE ?', "%#{term}%")
  		else
    		all
  		end
	end

    def self.search3(term)
  		if term
    		where('date LIKE ?', "%#{term}%")
  		else
    		all
  		end
	end		
	
	def create
    @appointments = Appointment.new(params[:appointment])

    respond_to do |format|
      if @appointments.save
        format.html { redirect_to @appointments, notice: 'Appointment was successfully created.' }
        format.json { render json: @appointments, status: :created, location: @appointments }
      else
        format.html do 
          @appointments = appointments.all #or whatever query you do for new
          render action: "new"
        end
        format.json { render json: @appointments.errors, status: :unprocessable_entity }
      end
    end
  end
end
