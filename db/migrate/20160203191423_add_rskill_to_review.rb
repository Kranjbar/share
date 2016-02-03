class AddRskillToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :rskill, :string
  end
end
