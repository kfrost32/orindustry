class AddDescriptionToLink < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :description, :string
  end
end
