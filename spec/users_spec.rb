
require_relative '../config/environment'

require 'rspec'



describe User do 
    user = User.new(age: 0)
    # binding.pry
    describe "increment_age" do
        it "returns true when age increments" do
        expect(user.increment_age).to eql(true)
      end
    end
      describe "increment_age" do
        it "returns 10" do
        expect(user.age).to eql(10)
        end
    end
    describe "increment happiness" do
        it "returns true when happiness is increasing" do
            binding.pry
         expect(user.assign_job(med_school)).to eql(true)
        end
    end

end

