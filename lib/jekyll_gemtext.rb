# frozen_string_literal: true

require 'gmi2html'

class JekyllGemtext < Jekyll::Converter
  def matches(ext)
    extname_list.include?(ext.downcase)
  end

  def output_ext(_ext)
    '.html'
  end

  def extname_list
    %w[.gemini .gmni .gmi]
  end

  def convert(content)
    ::Gmi2html::Document.new(content).to_html
  end
end
