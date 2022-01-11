module Refinery
  module Snippets
    module Admin
      class SnippetsController < ::Refinery::AdminController

        crudify :'refinery/snippets/snippet',
                :title_attribute => 'name',
                order: 'created_at DESC'

        def searchable?
          true
        end

        private


        # Only allow a trusted parameter "white list" through.
        def snippet_params
          params.require(:snippet).permit(:name, :scope, :value, :description)
        end
      end
    end
  end
end
