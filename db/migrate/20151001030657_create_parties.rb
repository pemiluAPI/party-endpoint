class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string	:name
      t.text	:vision
      t.text	:mission
      t.text	:program
      t.text	:adart
      t.text	:address_central_secretariat	
      t.text	:structure_central_party
      t.timestamps
    end
  end
end
