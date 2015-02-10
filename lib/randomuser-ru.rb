require 'net/http'
require 'uri'
require 'json'
require 'randomuser-ru/version'

module RandomuserRu

  def self.generate(number=1)
    request("results=#{number}")
  end

  def self.generate_female(number=1)
    request("results=#{number}&gender=female")
  end

  def self.generate_male(number=1)
    request("results=#{number}&gender=male")
  end

  private

  def self.api_url(query='')
    "http://randomuser.ru/api.json?#{query}"
  end

  def self.request(query='')
    uri  = URI.parse(self.api_url(query))
    http = Net::HTTP.new(uri.host, uri.port)

    http.start do |connection|
      response = connection.send_request('GET', uri.request_uri)
      response = JSON.parse(response.body, symbolize_names: true)
      response[:results]
    end
  end
end