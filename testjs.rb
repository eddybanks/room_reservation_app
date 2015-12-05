require 'json/stream'
stream = File.open('test1.json')
obj = JSON::Stream::Parser.parse(stream)
