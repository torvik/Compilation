class CreateJoinTableProductSource < ActiveRecord::Migration
  def change
    create_join_table :products, :sources do |t|
      # t.index [:product_id, :source_id]
      # t.index [:source_id, :product_id]
    end
  end
end
