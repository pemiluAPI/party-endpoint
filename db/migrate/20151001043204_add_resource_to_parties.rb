class AddResourceToParties < ActiveRecord::Migration
  def change
  	add_column :parties, :resource, :string
  end
end
