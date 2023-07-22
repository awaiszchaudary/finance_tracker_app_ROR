class Stock < ApplicationRecord

    def self.new_lookup(ticker)
        client = IEX::Api::Client.new(
            publishable_token: 'pk_cae64d3af563401d97c30bba0442963d',
            secret_token: 'sk_01f50f90161d4b9f86b045edcfc28560',
            endpoint: 'https://cloud.iexapis.com/v1'
          )

          client.price(ticker)
    end


end
