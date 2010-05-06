require 'hpricot'
require 'open-uri'

class GoogleDefine
  def self.define(word)
    doc = Hpricot(open("http://www.google.com/search?hl=en&q=define%3A#{word}&btnG=Google+Search"))
    doc.search("//ul[@type='disc']").search("//li").collect {|item| item.inner_html}
  end
end