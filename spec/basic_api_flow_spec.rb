require 'airborne'

describe 'sample spec' do
  it 'should validate get' do
    get 'http://localhost:3000/api/flights'
    # expect_json_types(name: :string)
  end

end