class CreatePageVisitors < ActiveRecord::Migration[5.0]
  def change
    create_table :page_visitors do |t|
      t.string :RemoteIP
      t.string :Page

      t.timestamps
    end
  end
end
