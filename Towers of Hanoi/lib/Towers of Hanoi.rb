class TowersofHanoi

    attr_reader :grid

    def self.populate

        arr = Array.new(3) { Array.new }

        3.times do |i|
            arr[0].unshift(i)
        end 
        arr

        #[2, 1, 0]
        #[ _ _ _ ] 
        #[ _ _ _ ]


    end 


    def initialize
        @grid = TowersofHanoi.populate
    end 


    def move
        
       
    end 



    def won?
        return true if @grid[2] == [2,1,0]
        false
    end 

end 