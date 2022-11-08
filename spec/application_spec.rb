require_relative 'rails_helper'
require_relative 'spec_helper'

RSpec.describe ArticlesController, type: 'controller' do
    describe "GET index" do
        it "has a 200 status code" do
            get :index
            expect(response.status).to eq(200)
        end
    end
end

RSpec.describe FormsController, type: 'controller' do
    describe "GET form" do
        it "has a 200 status code" do
            get :form
            expect(response.status).to eq(200)
            assert_response :success
        end
    end
end

RSpec.describe ResultsController, type: 'controller' do
    describe "GET result" do
        it "has a 200 status code" do
            get :result
            expect(response.status).to eq(200)
        end
    end

    it 'checks whether the number is prime and returns true or false ' do
        expect(ResultsController.new.prime?(-1)).to eq(false)
        expect(ResultsController.new.prime?(0)).to eq(false)
        expect(ResultsController.new.prime?(1)).to eq(false)
        expect(ResultsController.new.prime?(2)).to eq(true)
        expect(ResultsController.new.prime?(7)).to eq(true)
        expect(ResultsController.new.prime?(21)).to eq(false)
    end

    # def result_params
    #     post :result, :params => { :widget => { :num => 6 } }
    #     controller.params.require(:result).permit(:num)
    # end
    # it 'expects to see Mersenne\'s numbers' do
    #     #
    #     p "a"
    #     @res = ResultsController.new(result_params)
    #     @res.save 
    #     p "b"
    #     #expect(res.result).to eq([3, 7, 31, 127, 8191, 131_071])
    # end

    
end

