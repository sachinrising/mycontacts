class AddRelationshipToContact < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :relationship, :string
  end
end
