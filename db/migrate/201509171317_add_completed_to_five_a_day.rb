class AddCompletedToFiveADay < ActiveRecord::Migration
  def change
  	add_column :five_a_day_counts, :completed, :boolean, :default => false
  end
end
