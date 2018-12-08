class AddNewsletterIdToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :newsletter_id, :integer
    add_index :pages, :newsletter_id
  end
end
