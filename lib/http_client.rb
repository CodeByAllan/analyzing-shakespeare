# frozen_string_literal: true

require 'net/http'

# class http cliente generica para injecao de dependecia
class HttpCliente
  def get(url)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
