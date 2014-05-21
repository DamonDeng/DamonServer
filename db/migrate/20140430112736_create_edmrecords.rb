class CreateEdmrecords < ActiveRecord::Migration
  def change
    create_table :edmrecords do |t|
      t.string :mailid
      t.string :edmid

      t.timestamps
    end
  end
end
