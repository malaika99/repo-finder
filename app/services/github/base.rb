require 'httparty'

module Github
  class Base
    include HTTParty

    base_uri 'https://api.github.com'
  end
end
