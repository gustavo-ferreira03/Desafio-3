require 'rails_helper'

RSpec.describe Subject, type: :model do
  describe "associations" do
    it { should have_many(:attended_subjects) }
    it { should have_many(:students).through :attended_subjects }
  end
end
