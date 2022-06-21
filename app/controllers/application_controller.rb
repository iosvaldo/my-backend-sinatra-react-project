class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/appointments" do
    appointments = Appointment.all
    appointments.to_json
  end

  get "/salons" do
    salons = Salon.all
    salons.to_json
  end

  post "/appointments" do 
    new_appointment = Appointment.create(
      username: params[:username],
      date: params[:date],
      appointment_type: params[:appointment_type]
    )
    new_appointment.to_json
  end 


  delete '/appointments/:id' do 
    delete = Appointment.find(params[:id])
    delete.destroy
    delete.to_json
  end 

  patch '/appointments/:id' do 
    appointment = Appointment.find(params[:id])
    appointment.update(
      username: params[:username],
      date: params[:date],
      appointment_type: params[:appointment_type]
    )
    appointment.to_json
end
