require "yaml"
def load_library(file_path)
  emos = YAML.load_file("lib/emoticons.yml")
  output = {"get_meaning" => {}, "get_emoticon" => {}}
  emos.each { |meaning, emo|
    english = emo[0]
    japanese = emo[1]
    output["get_meaning"][japanese] = meaning
    output["get_emoticon"][english] = japanese
  }
  output
end

def get_japanese_emoticon(file, emo)
  emos = load_library(file)
  if emos["get_emoticon"][emoticon] == nil
    return "Sorry, that emoticon was not found"
  else
    emos["get_emoticon"][emoticon]
  end
end

def get_english_meaning
  # code goes here
end