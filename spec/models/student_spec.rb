require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "associations" do
    it { should have_many(:attended_subjects) }
    it { should have_many(:subjects).through :attended_subjects }
  end
end
