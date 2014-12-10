#! /usr/bin/env ruby

require 'Sass'
require 'Sass/scss'

def transmogrify(node)
	case node.class.to_s
	when "Sass::Tree::RootNode"
		output = ""
		node.children.each{|node| output << transmogrify(node)}
		return "<dict>" + output + "</dict>"
	when "Sass::Tree::RuleNode"
		output = ""
		node.children.each{|node| output << transmogrify(node)}
		return "<key>#{node.rule[0].to_s.sub(/#|\./,"")}</key><dict>#{output}</dict>"
	when "Sass::Tree::PropNode"
		return "<key>#{node.name[0].to_s}</key><string>#{node.value.to_s.gsub(/#|"/,"")}</string>"
	else
		return ""
	end
end

require "rexml/document"
include REXML

rootNode = Sass::Engine.new(File.read(ARGV[0]), {:syntax => :sass}).render
plist = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
plist += "<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">"
plist += transmogrify(Sass::SCSS::CssParser.new(rootNode, nil).parse)

puts plist