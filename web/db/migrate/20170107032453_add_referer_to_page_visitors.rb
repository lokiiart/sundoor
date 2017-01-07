class AddRefererToPageVisitors < ActiveRecord::Migration[5.0]
  def change
    add_column :page_visitors, :referer, :string
  end
end
