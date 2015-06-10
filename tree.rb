class Tree
    def initialize
        @inp = $stdin.read.split("\n")
    end
    def utopian_tree
        @inp.drop(1).each do |cycles|
            final_height(cycles.to_i)
        end
    end
    def final_height(cycles)
        if cycles == 0
            puts 1
        else
            height = 1
            (1..cycles).each  do |el|
                if el.even?
                    height = height + 1
                else
                    height = height * 2
                end
            end
             puts height
         end
    end
end

a = Tree.new
a.utopian_tree
