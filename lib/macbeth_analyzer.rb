# frozen_string_literal: true

require './lib/http_client_net'
require './lib/http_service'
require 'rexml/document'

client = HttpClienteNet.new
service = HttpService.new(client)
xml_data = service.get('https://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml')
doc = REXML::Document.new(xml_data)
speakers = Hash.new(0)
doc.elements.each('PLAY/ACT/SCENE/SPEECH/SPEAKER') do |e|
  speaker = e.text
  if speaker != 'ALL'
    if speakers.key?(speaker)
      speakers[speaker] += 1
    else
      speakers[speaker] = 1
    end
  end
end
speakers.each do |key, value|
  puts "#{key} - #{value}"
end
