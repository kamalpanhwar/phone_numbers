# spec/integration/phones_spec.rb
require 'swagger_helper'

describe 'Get details of phone number and MCC and MCN codes' do

  path '/api/v1/checknumber/{phone_number}' do

    get 'Retrieve phone number' do
      tags 'Phones'
      produces 'application/json'
      parameter name: :phone_number, :in => :path, :type => :string

    response '200', 'number found' do
      schema type: :object,
        properties: {
          id: { type: :integer }
      },
      required: [ 'phone number', 'name', 'status' ]
      run_test!
    end

    response '404', 'pet not found' do

    end
  end
end
end

