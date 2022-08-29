require 'rails_helper'

RSpec.describe Student, type: :model do
  subject { create(:student) }

  describe "associations" do
    it { should have_many(:attended_subjects) }
    it { should have_many(:subjects).through :attended_subjects }
  end

  describe "#cr" do
    it "returns the student's cr" do
      expect(subject.cr).to be_kind_of(Integer)
    end
  end
end
