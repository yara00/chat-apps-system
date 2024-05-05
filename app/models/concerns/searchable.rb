module Searchable
    extend ActiveSupport::Concern
  
    included do
      include Elasticsearch::Model
      include Elasticsearch::Model::Callbacks
  
      mappings do
        indexes :body, type: 'text'
        indexes :chat_id, type: 'long'
      end
  
      def self.search(query, chat_id)
        params = {
          query: {
            bool: {
              must: {
                multi_match: {
                  query: "*"+query.to_s+"*",
                  fields: ['body'],
                  fuzziness: "AUTO"
                }
              },
              filter: {
                term: { chat_id: chat_id }
              }
            }
          }
        }
  
        self.__elasticsearch__.search(params).records.to_a
      end
    end
end
  