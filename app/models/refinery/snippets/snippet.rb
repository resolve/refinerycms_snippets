require 'acts_as_indexed'

module Refinery
  module Snippets
    class Snippet < Refinery::Core::BaseModel
      self.table_name = 'refinery_snippets'
      extend FriendlyId

      friendly_id :name, use: :slugged

      alias_attribute :title, :name
      alias_attribute :body, :value

      validates :name, :slug, :presence => true, :uniqueness => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      acts_as_indexed :fields => [:title, :scope]

    end
  end
end
