class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/appointments" do
    Appointment.all.to_json(:include=> [:salon, :service])
  end

  get "/salons" do
    salons = Salon.all
    salons.to_json
  end

  get "/services" do 
    services = Service.all
    services.to_json
  end 


  post "/appointments" do 
    new_appointment = Appointment.create(
      username: params[:username],
      date: params[:date],
      service_id: params[:service_id]
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
     likes: params[:likes]
    )
    appointment.to_json
  end
end 
