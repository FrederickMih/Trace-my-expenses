require 'rails_helper'

RSpec.describe UsersController, type: :routing do
  describe 'routing' do
    it 'routes to #new' do
      expect(get: '/sign_up').to route_to('users#new')
    end

    it 'routes to #index_no_group' do
      expect(get: 'outlays/index_no_group').to route_to('outlays#index_no_group')
    end

    it 'routes to #external_outlay' do
      expect(get: 'external').to route_to('outlays#external_outlay')
    end
  end
end
