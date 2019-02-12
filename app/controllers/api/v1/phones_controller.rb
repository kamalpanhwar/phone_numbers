class Api::V1::PhonesController < ApplicationController


  def show
    phone_object = TelephoneNumber.parse(params[:id])
    render json: phone_object 

  end

end
