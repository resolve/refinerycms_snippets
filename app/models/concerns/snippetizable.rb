module Snippetizable
  extend ActiveSupport::Concern

  def replace_with_snippet(content)
    return content unless snippet_for(content).present?

    snippet_for(content).map do |command|
      cmd, arg = command.gsub("'",'').split

      if cmd == 'render_snippet'
        content.gsub!("[ #{command.strip} ]", find_snippet(arg).value)
      end
    end
    content.html_safe
  end

  def snippet_for(content)
    return unless content.present?
    content.scan(/\[(.*?)\]/).flatten
  end

  private

  def find_snippet(slug)
    Refinery::Snippets::Snippet.friendly.find(slug)
  end
end
