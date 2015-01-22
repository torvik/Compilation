class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nome
      t.string :status
      t.string :technology
      t.references :source, index: true

      t.timestamps
    end
  end
end
