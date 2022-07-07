class CreateShortenurls < ActiveRecord::Migration[6.1]
  def change
    create_table :shortenurls do |t|
      t.string :long_url
      t.string :short_url
      t.string :description
      t.belongs_to :user

      t.timestamps
    end
  end
end
