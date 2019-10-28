class Book
    def initialize()
        @title = ""
    end

    def title=(str)
        str = str[0].upcase+str[1..-1]
        stop_words = ["and","a","an","or","of","the","in","to","over"]
        @title = str.split(" ").map {|word|
            if stop_words.include?(word)
                word
            else
                word.capitalize
            end
        }.join(" ")
    end

    def title
        @title
    end
end