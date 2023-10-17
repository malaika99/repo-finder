module Github
  class Repository < Base
    DEFAULT_RESULT = { 'items' => [], 'total_count' => 0 }

    def self.search(query, per_page: , page:)
      return DEFAULT_RESULT if query.blank?
      
      response = get('/search/repositories', query: { q: query, per_page: per_page, page: page })
      response.success? ? response.parsed_response.slice('items', 'total_count') : DEFAULT_RESULT
    end
  end
end
