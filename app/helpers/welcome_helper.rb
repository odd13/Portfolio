module WelcomeHelper
  #getRank returns a colour in relation to the skill rank that has ben set
  def getRank(sk)
    @colourArray = [
      "rgb(191,240,115)",
      "rgb(13,201,247)",
      "rgb(127,127,127)",
      "rgb(240,91,71)",
      "rgb(237,28,36)"]
    return @colourArray[sk]
  end
end
