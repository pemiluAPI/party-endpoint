class CreateVisionMissions < ActiveRecord::Migration
  def change
    create_table :vision_missions do |t|
      t.references	:party
      t.text	:vision
      t.text	:mission
      t.text	:program
      t.text	:adart
      t.text	:address_central_secretariat	
      t.text	:structure_central_party
      t.string	:resource
      t.timestamps
    end
    add_index :vision_missions, :party_id
  end
end
