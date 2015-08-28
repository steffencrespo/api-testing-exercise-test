require 'airborne'

describe 'flights' do
	context 'when no flights exist in the database' do

		before :all do
			puts "roda uma vez, antes de todos os testes"
		end

		after :each do
			puts "roda uma vez, depois de todos os testes"
			delete "http://localhost:3000/api/flights/2"
		end

		it 'should create a new flight from porto alegre to rio' do
			post "http://localhost:3000/api/flights",
		  	{
				data_partida: "2015-10-10",
				data_chegada: "2015-10-10",
				numero: "1",
				origem: "porto alegre",
				destino: "rio",
				duracao: 0,
				lugares: 0,
				companhia: "TAM",
				id: 2
			}
			expect(json_body[:destino]).to eq("rio")
		end

	end

	context 'when there are flights in the database' do
		before :each do
			puts "roda antes de cada um dos testes"	
			post "http://localhost:3000/api/flights",
				{
				data_partida: "2015-10-10",
				data_chegada: "2015-10-10",
				numero: "1",
				origem: "porto alegre",
				destino: "manaus",
				duracao: 0,
				lugares: 0,
				companhia: "TAM",
				id: 1
			}
		end

		after :each do
			puts "roda depois de cada um dos testes"	
			delete "http://localhost:3000/api/flights/1"
		end

		it 'should validate that get method returns flights' do
		    get 'http://localhost:3000/api/flights'
		    puts "roda teste 1"
		    expect(json_body[0][:data_partida]).to eq("2015-10-10T00:00:00.000Z")
		end

		it 'should validate that put method allows flight changes' do
			put "http://localhost:3000/api/flights",
		  	{
				data_partida: "2015-10-10",
				data_chegada: "2015-10-10",
				numero: "1",
				origem: "porto alegre",
				destino: "rio",
				duracao: 0,
				lugares: 0,
				companhia: "AMERICAN AIRLINES",
				sid: 1
			}

			expect(json_body[:companhia]).to eq("AMERICAN AIRLINES")
		end
	end
end