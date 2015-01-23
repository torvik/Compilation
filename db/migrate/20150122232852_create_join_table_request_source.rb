class CreateJoinTableRequestSource < ActiveRecord::Migration
  def change
    create_join_table :requests, :sources do |t|
      # t.index [:request_id, :source_id]
      # t.index [:source_id, :request_id]
    end
  end
end
