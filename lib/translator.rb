# require modules here

# def load_library(file_path)
#   emos = YAML.load_file("lib/emoticons.yml")
#   output = {
#     "get_meaning" => {},
#     "get_emoticon" => {},
#   }
#   emos.each { |meaning, emo|
#     english = emo[0]
#     japanese = emo[1]
#     output["get_meaning"][japanese] = meaning
#     output["get_emoticon"][english] = japanese
#   }
#   output
# end
def load_library(file)
  emojis = YAML.load_file("lib/emoticons.yml")
  result = {
    "get_meaning" => {},
    "get_emoticon" => {},
  }
  emojis.each do |definition, emoji|
    english = emoji[0]
    japanese = emoji[1]
    result["get_meaning"][japanese] = definition
    result["get_emoticon"][english] = japanese
  end
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end