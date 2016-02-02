class AddScrollToIntros < ActiveRecord::Migration
  def change
  	add_column :intros, :scroll, :string
  end
end
