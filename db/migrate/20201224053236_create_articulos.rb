class CreateArticulos < ActiveRecord::Migration[6.0]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.text :body

      t.timestamps
    end
  end
end
