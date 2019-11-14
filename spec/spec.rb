require_relative '../cli_methods.rb'


describe "WelcomeMethod" do 

    it "outputs 'Welcome to your new life!'"
    expect(welcome).to include("Welcome to your new life!")

end