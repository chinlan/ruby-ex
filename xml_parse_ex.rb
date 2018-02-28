require 'rexml/document'

# file = File.open('text.xml')
# doc = REXML::Document.new(file)

# element = doc.elements['Envelope/Body/part']
# element.text = nil
# element.add_text("Yeah!")

# File.write('text.xml', doc)

doc = REXML::Document.new File.new("text.xml")
doc.elements.each("inventory/section") { |element| puts element.attributes["name"]}
doc.elements.each("*/section/item") { |element| puts element.attributes["upc"]}
root = doc.root
puts root.attributes["title"]
puts root.elements["section/item[@stock='44']"].attributes["upc"]

