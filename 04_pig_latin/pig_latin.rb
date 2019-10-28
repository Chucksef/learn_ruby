def translate_word(str)
    vowels = ["a","e","i","o","u"]
    consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
    if vowels.include? str[0]
        "#{str}ay"
    elsif consonants.include? str[0] and str[1..2] == "qu"
        "#{str[3..-1]}#{str[0..2]}ay"
    elsif consonants.include? str[1] and consonants.include? str[2]
        "#{str[3..-1]}#{str[0..2]}ay"
    elsif consonants.include? str[1] or str[0..1] == "qu"
        "#{str[2..-1]}#{str[0..1]}ay"
    else
        "#{str[1..-1]}#{str[0]}ay"
    end
end

def translate(str)
    word_list = str.split
    if word_list.length > 1
        sentence = ""
        word_list.each do |word|
            sentence += "#{translate_word(word)} "
        end
        sentence[0..sentence.length-2]
    else
        translate_word(word_list[0])
    end
end

puts translate("big strong happy olivia")