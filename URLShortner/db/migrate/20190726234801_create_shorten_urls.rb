class CreateShortenUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :shorten_urls do |t|
      t.string :long_url, :null false
      t.string :short_url, :null false
      t.timestamp
    end

    add_index :shorten_urls, :long_url, unique: true
  end
end
