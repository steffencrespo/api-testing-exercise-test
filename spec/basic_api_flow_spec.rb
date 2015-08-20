require 'airborne'

describe 'sample spec' do
  it 'should validate get' do
    get 'http://localhost:3000/api/flights'
    expect(json_body[0][:data_partida]).to eq("2015-10-10T00:00:00.000Z")

    # expect_json_types(name: :string)
  end

end