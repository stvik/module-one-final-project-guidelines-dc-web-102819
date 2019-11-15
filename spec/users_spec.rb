
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
        it "returns true when method is working" do
         expect(user.increment_user(Job.all[0])).to eql(true)
        end
    end

    describe "increment_money" do 
        it "returns true when method is working" do
            expect(user.increment_money(Job.all[0])).to eql(true)
        end
    end

    describe "increment_user" do 
        it "returns true when method is working" do 
            expect(user.increment_user(Job.all[0])).to be(true)
        end
    end

    describe "assign_job" do
        it "returns true when method is working" do 
            expect(user.assign_job(Job.all[0])).to eql(UserJob.last)
        end
    end

end

