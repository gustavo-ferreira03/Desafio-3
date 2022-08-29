require 'rails_helper'

RSpec.describe Course, type: :model do
  subject { create(:course, :with_students) }

  describe "associations" do
    it { should have_many(:students) }
  end

  describe "#average_cr" do
    it "returns the average cr" do
      expect(subject.average_cr).to be_kind_of(Integer)
      expect(subject.average_cr)
    end
  end
end
