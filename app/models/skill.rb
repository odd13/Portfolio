class Skill < ApplicationRecord
  #rgb_for_current_rank returns a colour in relation to the skill rank that has ben set
  def rgb_for_current_rank(rank)
    values = [
      "rgb(0, 153, 51)",
      "rgb(13,201,247)",
      "rgb(127,127,127)",
      "rgb(240,91,71)",
      "rgb(237,28,36)"
    ]

    values[rank]
  end
end
