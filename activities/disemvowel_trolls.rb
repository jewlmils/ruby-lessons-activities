#TODO write a method that takes a string and return a new string wil all vowel removed.

def disembowel(comment)
    vowels = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']
    trolls = ""
    
    comment.each_char do |char|
        trolls << char unless vowels.include?(char)
    end

    return trolls
end

comment = "lol, mama mo."
puts disembowel(comment) 

