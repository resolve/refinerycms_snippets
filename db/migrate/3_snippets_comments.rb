class CreateSnippetsSnippets < ActiveRecord::Migration

  def change
    add_column :refinery_snippets, :description, :string
  end

end
