require "open-uri"
require "net/http"
require "json"

class GetRequester
  
  def initialize(url)
    
  end
  
  def get_response_body
    @url = url
  end
  
  def parse_json
    JSON.parse(get_response_body)
  end
  
end