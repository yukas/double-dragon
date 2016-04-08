class Api::V1::Private::LocationsController < Api::V1::Public::LocationsController
  protect_with_basic_authentication
end
