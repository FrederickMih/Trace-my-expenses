require 'rails_helper'

RSpec.describe OutlaysController, type: :routing do
  describe 'routing' do
    it 'routes to #new' do
      expect(get: '/outlays/new').to route_to('outlays#new')
    end

    it 'routes to #index' do
      expect(get: '/outlays').to route_to('outlays#index')
    end
  end
end
