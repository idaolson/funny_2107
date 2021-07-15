class OpenMic
  attr_reader :location, :date, :performers

  def initialize(param_hash)
    @location = param_hash[:location]
    @date = param_hash[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    jokes = []
    jokes = @performers.map do |perfomer|
      perfomer.jokes
    end
    jokes.flatten.size != jokes.uniq.size
  end
end
