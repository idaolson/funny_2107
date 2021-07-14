require './lib/joke'
require './lib/user'

RSpec.describe do
  it "exists" do
    user_1 = User.new("Sal")

    expect(user_1).to be_a(User)
  end

  it "has a name and jokes" do
      user_1 = User.new("Sal")

    expect(user_1.name).to eq("Sal")
    expect(user_1.jokes).to eq([])
  end

  it "can learn new jokes" do
    user_1 = User.new("Sal")
    joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")
    user_1.learn(joke_1)
    user_1.learn(joke_2)

    expect(user_1.jokes).to eq([joke_1, joke_2])
  end
end
