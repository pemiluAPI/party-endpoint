class ModifyColumnParties < ActiveRecord::Migration
  def change
  	remove_column :parties, :vision
	  remove_column :parties, :mission
	  remove_column :parties, :program
	  remove_column :parties, :adart
	  remove_column :parties, :address_central_secretariat	
	  remove_column :parties, :structure_central_party
    remove_column :parties, :resource
	  add_column :parties, :full_name, :string
    add_column :parties, :url_website, :string
    add_column :parties, :url_facebook, :string
    add_column :parties, :url_twitter, :string
    add_column :parties, :url_logo_mini, :string
    add_column :parties, :url_logo_small, :string
    add_column :parties, :url_logo_medium, :string
  end
end
