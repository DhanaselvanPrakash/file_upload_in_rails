require 'rails_helper'

RSpec.describe User, type: :model do
  context "When creating the new record" do 
    subject { user = User.new(first_name:"Dhana", last_name: "selvan", email_id: "dhana@gmail.com", gender: "Male", contact: "8428931872", role:"Fullstack") }

    it "all attributes are valid" do
      expect(subject).to be_valid
    end
    
    it "any one of the fields are empty" do
      subject.first_name = nil
      expect(subject).not_to be_valid
    end

    it "and email is already exists" do
      subject.save
      user2 = User.new(first_name: "Selvan", last_name:"prakash", email_id: "dhana@gmail.com", gender: "Female", role: "Data engineer", contact: "9876543210")
      expect(user2).not_to be_valid
    end
  end
end
