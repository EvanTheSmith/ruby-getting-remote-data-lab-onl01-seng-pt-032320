require 'open-uri'
require 'net/http'
require 'json'
require 'pry'

class GetRequester
    attr_accessor :url

    def initialize(string_url)
        @url = string_url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
        
    end

    def parse_json
        JSON.parse(get_response_body)
    end

end