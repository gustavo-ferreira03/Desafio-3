class AddHoursToSubject < ActiveRecord::Migration[7.0]
  def change
    add_column :subjects, :hours, :integer
  end
end
