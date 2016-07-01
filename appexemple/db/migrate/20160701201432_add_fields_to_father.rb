class AddFieldsToFather < ActiveRecord::Migration
  def change
    add_column :fathers, :cpf, :string
    add_column :fathers, :email, :string
    add_reference :fathers, :occupation, index: true
  end
end
