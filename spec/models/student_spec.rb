require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "associations" do
    it { should have_many :attended_subjects }
  end
end
