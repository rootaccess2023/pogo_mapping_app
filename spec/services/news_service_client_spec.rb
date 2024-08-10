require 'rails_helper'

RSpec.describe NewsService::Client do
  let(:api_key) { 'test_api_key' }
  let(:client) { described_class.new(api_key) }
  let(:query) { { q: 'Philippine Offshore Gaming Operators' } }

  before do
    allow(NewsService::Request).to receive(:call).with(
      http_method: 'get',
      query: query,
      api_key: api_key
    ).and_return({ code: 200, status: 'Success', data: { articles: [] } })
  end

  describe '#fetch_pogo_news' do
    it 'makes a request to the NewsService::Request' do
      client.fetch_pogo_news
      expect(NewsService::Request).to have_received(:call).with(
        http_method: 'get',
        query: query,
        api_key: api_key
      )
    end

    it 'returns the response from NewsService::Request' do
      response = client.fetch_pogo_news
      expect(response).to eq({ code: 200, status: 'Success', data: { articles: [] } })
    end
  end
end