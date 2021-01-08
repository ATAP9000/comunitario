class AddUserIdToArticulo < ActiveRecord::Migration[6.0]
  def change
  add_reference :articulos, :user, index: true, foreign_key: true
  end
end
