# frozen_string_literal: true

require_relative 'rails_helper'
require_relative 'spec_helper'

RSpec.describe ArticlesController, type: 'controller' do
  describe 'GET index' do
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq(200)
    end
  end
end

RSpec.describe FormsController, type: 'controller' do
  describe 'GET result' do
    it 'has a 200 status code' do
      get :result
      expect(response.status).to eq(200)
    end
  end
  describe 'GET form' do
    it 'has a 200 status code' do
      get :form
      expect(response.status).to eq(200)
      assert_response :success
    end
  end

  it 'checks whether the number is prime and returns true or false ' do
    expect(FormsController.new.prime?(-1)).to eq(false)
    expect(FormsController.new.prime?(0)).to eq(false)
    expect(FormsController.new.prime?(1)).to eq(false)
    expect(FormsController.new.prime?(2)).to eq(true)
    expect(FormsController.new.prime?(7)).to eq(true)
    expect(FormsController.new.prime?(21)).to eq(false)
  end
end

RSpec.describe FormsController, type: 'request' do
  it 'expects to see Mersenne\'s numbers' do
    get '/forms/result?num=150000'
    expect(assigns[:result_m]).to eq([3, 7, 31, 127, 8191, 131_071])
  end
end
