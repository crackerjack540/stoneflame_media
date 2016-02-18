class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
      t.string :name
      t.text :topic

      t.timestamps null: false
    end
  end
end
