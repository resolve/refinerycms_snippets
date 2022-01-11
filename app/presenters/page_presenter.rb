Refinery::Page.class_eval do
  include Snippetizable

  def content_for(part_slug)
    part_with_slug(part_slug).try(:body)
  end
end
