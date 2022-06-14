require_relative '../tennis_scores'

def score_board(winner)
    scores = {
        player1: 0, player2: 0
        }
    if winner == 'player1'
        scores[:player1] += 15
        return scores
    else
        return scores
   end


end

describe "tennis scores" do
    it 'returns a dictionary' do
        expect(score_board.class).to eql(Hash)
    end

    it 'returns score 0 for player 1' do
        expect(score_board[:player1]).to eql(0)
    end

    it 'returns score 0 for player 2' do
        expect(score_board[:player2]).to eql(0)
    end

    it 'returns 15, 0 for player 1 wins first round' do
        expect(score_board('player1')).to eql({:player1 => 15, :player2 => 0})
        # expect{score_board('player1')}.to output({:player1 => 15, :player2 => 0}).to_stdout
    end

end


