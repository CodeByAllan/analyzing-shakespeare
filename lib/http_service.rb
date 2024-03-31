# frozen_string_literal: true

# Class for HTTP service
class HttpService
  def initialize(http_client)
    @http_client = http_client
  end

  def get(url)
    @http_client.get(url)
  end
end
