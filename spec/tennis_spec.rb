require_relative '../tennis_scores'

describe "tennis scores" do
    it 'returns "0" given an empty string' do
        expect(score_board).to eq(0)
    end

    it 'returns a dictionary' do
        expect(score_board.class).to be_instance_of(hash)
    end
end


