require "uri"
require 'net/http'
require "json"

class UrlParse
  def get_json_data(name)
   uri = URI.parse("http://data.moviebuff.com/#{name.parameterize.downcase}")
   http = Net::HTTP.new(uri.host, uri.port)
   request = Net::HTTP::Get.new(uri.request_uri)
   response = http.request(request)
    if response.code == "200"
       JSON.parse(response.body)
    else
       puts "ERROR!!!"
    end
  end
end
