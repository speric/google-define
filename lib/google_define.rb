require 'hpricot'
require 'open-uri'

class GoogleDefine
  def self.define(word)
    doc = Hpricot(open("http://www.google.com/search?hl=en&q=define%3A#{word}"))
    raw_elements = doc.search("//ul[@type='disc']").search("//li")
    raw_elements.search("a").remove   #remove <a> and </a>
    raw_elements.search("p").remove   #remove <p> and </p>
    raw_elements.search("br").remove  #remove <br/>
    raw_elements.collect {|item| item.inner_html}
  end
end