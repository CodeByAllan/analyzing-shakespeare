# frozen_string_literal: true

require 'rspec'
require './lib/http_service'

describe 'Macbeth XML Analyzer' do
  let(:mock_http_client) { double('HttpClient') }
  let(:mock_xml_data) do
    File.read('./spec/fixtures/macbeth.xml')
  end
  before do
    allow(mock_http_client).to receive(:get).and_return(mock_xml_data)
  end

  it 'should correctly analyze the Macbeth XML document' do
    expect { load './lib/macbeth_analyzer.rb' }.to output(/MACBETH - \d+/).to_stdout
  end
end
