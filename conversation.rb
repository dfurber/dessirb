class Voice
  attr_accessor :person
  def say(words)
    raise ArgumentError.new('No voice without a person!')
    `say -v #{voice} "#{words}"`
  end
end

class BoyVoice < Voice
  def type
    :boy
  end
end

class GirlVoice < Voice
  def type
    :girl
  end
end

class ZarvoxVoice < BoyVoice
  def voice
    'Zarvox'
  end
end

class RalphVoice < BoyVoice
  def voice
    'Ralph'
  end
end

class VickyVoice < GirlVoice
  def voice
    'Vicki'
  end
end

class VictoriaVoice < GirlVoice
  def voice
    'Victoria'
  end
end

class PrincessVoice < GirlVoice
  def voice
    'Princess'
  end
end

class Person
  attr_accessor :voice, :name, :age
  def say(words)
    if voice
      voice.say words
    else
      puts "#{@name} is mute!"
    end
  end
  def set_voice(voice)
    self.voice = voice.new
    voice.person = self
  end
end

# dessi = Person.new
# dessi.name = 'Dessi'
# dessi.age = 9
# dessi.set_voice VickyVoice
# dessi.say "Don't be ridiculous!"

maxine = Person.new
maxine.name = 'maxine
maxine.age = '




