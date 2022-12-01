def validBraces(string)
  return false if string.length.odd?
  return false if [')', '}', ']'].include? string[0]

  while closed_brackets?(string)
    string = delete_closed_brackets(string)
  end
  string.length.zero?
end

# this method needs refactoring PRONTO
def closed_brackets?(string)
  if string.include? "()"
    true
  elsif string.include? "[]"
    true
  elsif string.include? "{}"
    true
  else
    false
  end
end

def delete_closed_brackets(string)
  string.gsub(/(\{\})|(\[\])|(\(\))/, '')
end


p validBraces("((({[]}))){}[]")
p validBraces("({(({[]}}))){}[]")
p validBraces("(({[]}))){}[]")
