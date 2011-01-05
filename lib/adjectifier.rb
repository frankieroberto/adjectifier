module Adjectifier
  def self.extract(text, options = {})
    
    adjectives = []
    
    # single word sentences
    single_words = %r{
      \A
      ([a-z]+)
      [\.\?\!]?
      \Z
      }xi
    
        
    # words following 'very'
    very = %r{\bvery\s+([a-z]+)\b}xi
    
    # First check to see if text consists of single words
    single_words_match = text.scan(single_words)
    
    if single_words_match.size > 0
      single_words_match.each do |word|
        word = word[0].downcase
        adjectives << word unless adjectives.include?(word)
      end
    
    # If text doesn't contain just single words, continue on to do more complex searching.
    else

      text.scan(very) do |match|
        word = match[0].downcase
        adjectives << word unless adjectives.include?(word)
      end 
          
    end
    
     
    return adjectives 
  end
end
