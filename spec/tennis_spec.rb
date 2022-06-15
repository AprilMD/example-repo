require_relative '../tennis_scores'

# input: 1,2,1,1,2

def tennis_score(*winner)
    player1_score = 0
    player2_score = 0

    player1_score += winner.count(1)
    player2_score += winner.count(2)

    displayed_score_options = ['love', 15, 30, 40]

    return "#{displayed_score_options[player1_score]}-#{displayed_score_options[player2_score]}"
end

describe "tennis score board" do
    it 'returns 0-0 when input "" ' do
        expect(tennis_score()).to eq('love-love')
    end

    it 'returns 1-0 when input "1" ' do
        expect(tennis_score(1)).to eq('15-love')
    end

    it 'returns 0-1 when input "2" ' do
        expect(tennis_score(2)).to eq('love-15')
    end

    it 'returns 2-0 when input "1,1"' do
        expect(tennis_score(1,1)).to eq('30-love')
    end

    it 'returns 0-3 when input "2,2,2"' do
        expect(tennis_score(2,2,2)).to eq('love-40')
    end    
end


