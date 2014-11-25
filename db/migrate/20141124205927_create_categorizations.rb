class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.belongs_to :category
      t.belongs_to :kitten
      t.timestamps
    end
  end
end
