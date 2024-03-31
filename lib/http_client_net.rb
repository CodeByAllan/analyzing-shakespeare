# frozen_string_literal: true

require './lib/http_client'
# implementacao de um cliente httpcliente
class HttpClienteNet < HttpCliente
  def get(url)
    Net::HTTP.get(URI(url))
  end
end
