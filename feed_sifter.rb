require 'java'
require 'jars/boilerpipe-1.1.0.jar'
require 'jars/nekohtml-1.9.13.jar'
require 'jars/xerces-2.9.1.jar'

java_import "java.net.URL"
java_import "de.l3s.boilerpipe.extractors.ArticleExtractor"
java_import "de.l3s.boilerpipe.extractors.ArticleSentencesExtractor"
java_import "de.l3s.boilerpipe.extractors.KeepEverythingWithMinKWordsExtractor"
java_import "de.l3s.boilerpipe.extractors.DefaultExtractor"
java_import "de.l3s.boilerpipe.extractors.LargestContentExtractor"
java_import "de.l3s.boilerpipe.extractors.NumWordsRulesExtractor"
java_import "de.l3s.boilerpipe.sax.HTMLHighlighter"

class UnknownExtractor < Exception; end
class NoUrlPresent < Exception; end

url = URL.new("http://dojotoolkit.org/blog/")
hh = HTMLHighlighter.newExtractingInstance
content = hh.process(url, ArticleExtractor.instance)
puts content