require 'fantasydata/api/utils'

module Fantasydata
  module API
    module News
      include Fantasydata::API::Utils

      def news_by_player_id(player_id)
        objects_from_response(Fantasydata::News, :get, "/nfl/v2/XML/NewsByPlayerID/#{player_id}")
      end

    end
  end
end