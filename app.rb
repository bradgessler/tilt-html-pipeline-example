require 'sinatra'
require 'tilt/html/pipeline'
require 'html/pipeline'

Tilt.register_html_pipeline :codedown, [
  HTML::Pipeline::MarkdownFilter,
  HTML::Pipeline::SyntaxHighlightFilter,
  HTML::Pipeline::TableOfContentsFilter
]

# Renders ./views/index.codedown
get "/" do
  render(:codedown, :index)
end
