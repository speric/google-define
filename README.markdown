google-define
============

*Get word definitions from Google*

**Required gems**

*hpricot

**Install**
	git submodule add git://github.com/speric/google-define.git vendor/plugins/google-define

**Use**
	GoogleDefine::define("tasty") #returns the <li> elements of http://www.google.com/search?q=define%3Atasty

**TODO**
* remove markup from definitions (HTML, etc)
* add validation methods (word.valid? or word.has_definitions?)
* documentation

