require 'omniauth-oauth2'

module Omniauth

  module Strategies
    
    class Beddit < OmniAuth::Strategies::OAuth2

      option :name, 'beddit'

      option :client_options, {
        
        site:          'https://api.beddit.com/api2/',
        authorize_url: 'https://api.beddit.com/api2/oauth/authorize/',
        token_url:     'https://api.beddit.com/api2/oauth/access_token'

      }

      uid { raw_info[ "id" ] }

      info do

        # Resources to be return to your API consumers
        {
          email: raw_info[ "email" ]
        }

      end

      def raw_info

        # @raw_info ||= access_token.get('/api/v1/me.json').parsed

      end

      def request_phase

        options[ :authorize_params ] = client_params.merge( options[ :authorize_params ] )
        
        super

      end

      def auth_hash

        OmniAuth::Utils.deep_merge( super, client_params.merge( { grant_type: 'code' } ) )

      end

      private

      def client_params

        { client_id: options[ :client_id ], redirect_uri: callback_url, response_type: 'code' }

      end
  
    end
  
  end

end