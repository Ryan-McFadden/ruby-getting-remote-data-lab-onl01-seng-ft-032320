require "open-uri"
require "net/http"
require "json"

class GetRequester
  
  def initialize(url)
    @url = url
  end
  
  def get_response_body
    uri = URI.parse(@url)
    response = NET::HTTP.get_response
  end
  
  def parse_json
    JSON.parse(get_response_body)
  end
  
end