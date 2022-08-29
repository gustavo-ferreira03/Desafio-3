require 'rails_helper'

RSpec.describe AttendedSubject, type: :model do
  describe "associations" do
    it { should belong_to(:subject) }
    it { should belong_to(:student) }
  end
end
