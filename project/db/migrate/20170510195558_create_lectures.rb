class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :contents
      t.string :attachments

      t.timestamps null: false
    end
  end
end
