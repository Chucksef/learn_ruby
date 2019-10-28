def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str, times=2)
    output = ""
    i=0

    while i < times
        output += "#{str} "
        i += 1
        puts "Runthru #:#{i} yields... #{output}"
    end
    output[0,output.length-1]
end

def start_of_word(str,ltrs)
    str[0,ltrs]
end

def first_word(str)
    str.split()[0]
end

def titleize(str)
    str = str[0].upcase+str[1..-1]
    stop_words = ["and","or","of","the","in","to","over"]
    title = str.split(" ").map {|word|
        if stop_words.include?(word)
            word
        else
            word.capitalize
        end
    }.join(" ")
    title
end