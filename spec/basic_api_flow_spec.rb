require 'airborne'

describe 'sample spec' do

before :each do
	puts "inicia"
end

after :each do
	puts "finaliza"
end


  it 'should validate get' do
    get 'http://localhost:3000/api/flights'
    puts "roda teste 1"
    expect(json_body[0][:data_partida]).to eq("2015-10-10T00:00:00.000Z")

    # expect_json_types(name: :string)
  end

end