class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|
      t.string  :name
      t.integer :document_count, :default => 0

      t.timestamps
    end
  end
end
