require 'rails_helper'

describe ApiConstraints do
  let(:api_constraintsi_v1) { ApiConstraints.new(version: 1) }
  let(:api_constraintsi_v1) { ApiConstraints.new(version: 2) }

  describe 'matches?' do
    it "returns true when the version matches the 'Accept' header" do
      request = double(host: 'http://localhost:3000',
                      headers: { 'Accept': 'localhost:3000/products' })
      
      api_constraintsi_v1.matches?(request).to be_truthy
    end

    it "returns the default version when 'Default' option is specified" do
      request = double(host: 'http://localhost:3000')
      api_constraintsi_v2.matches?(request).to be_truthy
    end
  end
end