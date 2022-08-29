require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "associations" do
    it { should have_many :students }
  end
end
