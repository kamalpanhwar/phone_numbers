class Api::V1::PhonesController < ApplicationController


  def show
    phone_object = TelephoneNumber.parse(params[:id])
    phnumber = {}

    p phone_object
    phnumber['is_valid'] = phone_object.valid?
    phnumber['type'] = phone_object.valid_types
    phnumber['nation_number'] = phone_object.national_number
    phnumber['international_number'] = phone_object.international_number
    phnumber['e164'] = phone_object.e164_number
    phnumber['code'] = phone_object.country.country_code
    phnumber['country_id'] = phone_object.country.country_id
    phnumber['normalized_number'] = phone_object.parser.normalized_number
    phnumber['timezone'] = phone_object.timezone
    country = Country.where(code: phnumber['code']).first
    phnumber['mcc'] = country['mcc']
    phnumber['mcci'] = country['mcci']

    prefixes = City.where(Country_id: country).all

    prefixes.each do |n|
      if phnumber['normalized_number'].start_with?(n.area_code.to_s)
        phnumber['mcn'] = n.mnc
        phnumber['mcc_mnc'] = "#{phnumber['mcc']}#{n.mnc}"
      end
    end

    
    render json: phnumber 

  end

end
