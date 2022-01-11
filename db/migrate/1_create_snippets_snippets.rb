class CreateSnippetsSnippets < ActiveRecord::Migration

  def up
    create_table :refinery_snippets do |t|
      t.string :name
      t.string :scope
      t.string :value
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-snippets"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/snippets/snippets"})
    end

    drop_table :refinery_snippets

  end

end
