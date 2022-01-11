class CreateSnippetsSnippets < ActiveRecord::Migration

  def change
    add_column :refinery_snippets, :slug, :string, unique: true
  end

end
