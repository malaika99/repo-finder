require 'httparty'

class GithubService
  include HTTParty

  base_uri 'https://api.github.com'

  def self.search_repositories(query)
    response = get('/search/repositories', query: { q: query })

    if response.success?
      response.parsed_response['items']
    else
      []
    end
  end
end
