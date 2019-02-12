# spec/integration/phones_spec.rb
require 'swagger_helper'

describe 'Phone Number checking API' do

  path '/api/v1/checknumber/{id}' do

    get 'Retrieve phone number' do
      tags 'Phones'
      produces 'application/json'
      parameter name: :id, :in => :path, :type => :string

    response '200', 'number found' do
      schema type: :object,
        properties: {
          id: { type: :integer }
      },
      required: [ 'id', 'name', 'status' ]
      run_test!
    end

    response '404', 'pet not found' do

    end
  end
end
end

