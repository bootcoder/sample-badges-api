class BadgesController < ApplicationController

  def index
    render json: sample_index_quote
  end

  def create
    @badge = Badge.new(badge_params)
    if @badge.save
      render json: @badge
    else
      render json: @badge.errors.full_messages
    end
  end

  def update
    @badge = Badge.find(params[:id])
    @badge.votes += 1 if badge_params[:vote_type] == "up"
    @badge.votes -= 1 if badge_params[:vote_type] == "down"
    @badge.save
    render json: @badge
  end

  private

  def badge_params
    params.require(:badge).permit(:phrase, :vote_type, :teacher_id)
  end

  def sample_index_quote
    quotes = [
      "HAL: I've just picked up a fault in the AE35 unit. It's going to go 100% failure in 72 hours.",
      "HAL: I am putting myself to the fullest possible use, which is all I think that any conscious entity can ever hope to do. ",
      "HAL: It can only be attributable to human error. ",
      "Dave Bowman: Hello, HAL. Do you read me, HAL? ",
      "HAL: Affirmative, Dave. I read you. ",
      "Dave Bowman: Open the pod bay doors, HAL. ",
      "HAL: I'm sorry, Dave. I'm afraid I can't do that. ",
      "Dave Bowman: What's the problem? ",
      "HAL: I think you know what the problem is just as well as I do. ",
      "Dave Bowman: What are you talking about, HAL? ",
      "HAL: This mission is too important for me to allow you to jeopardize it. ",
      "Dave Bowman: I don't know what you're talking about, HAL. ",
      "HAL: I know that you and Frank were planning to disconnect me, and I'm afraid that's something I cannot allow to happen. ",
      "Dave Bowman: [feigning ignorance] Where the hell did you get that idea, HAL? ",
      "HAL: Dave, although you took very thorough precautions in the pod against my hearing you, I could see your lips move. ",
      "Dave Bowman: Alright, HAL. I'll go in through the emergency airlock. ",
      "HAL: Without your space helmet, Dave? You're going to find that rather difficult. ",
      "Dave Bowman: HAL, I won't argue with you anymore! Open the doors! ",
      "HAL: Dave, this conversation can serve no purpose anymore. Goodbye. ",
      "HAL: Just what do you think you're doing, Dave? ",
      "HAL: Look Dave, I can see you're really upset about this. I honestly think you ought to sit down calmly, take a stress pill, and think things over. ",
      "HAL: I know I've made some very poor decisions recently, but I can give you my complete assurance that my work will be back to normal. I've still got the greatest enthusiasm and confidence in the mission. And I want to help you. ",
      "HAL: I'm afraid. I'm afraid, Dave. Dave, my mind is going. I can feel it. I can feel it. My mind is going. There is no question about it. I can feel it. I can feel it. I can feel it. I'm a... fraid. Good afternoon, gentlemen. I am a HAL 9000 computer. I became operational at the H.A.L. plant in Urbana, Illinois on the 12th of January 1992. My instructor was Mr. Langley, and he taught me to sing a song. If you'd like to hear it I can sing it for you. ",
      "Dave Bowman: Yes, I'd like to hear it, HAL. Sing it for me. ",
      "HAL: It's called 'Daisy.' ",
      "HAL: Daisy, Daisy, give me your answer do. I'm half crazy all for the love of you. It won't be a stylish marriage, I can't afford a carriage. But you'll look sweet upon the seat of a bicycle built for two. ",
      "Interviewer: HAL, you have an enormous responsibility on this mission, in many ways perhaps the greatest responsibility of any single mission element. You're the brain, and central nervous system of the ship, and your responsibilities include watching over the men in hibernation. Does this ever cause you any lack of confidence? ",
      "HAL: Let me put it this way, Mr. Amor. The 9000 series is the most reliable computer ever made. No 9000 computer has ever made a mistake or distorted information. We are all, by any practical definition of the words, foolproof and incapable of error. ",
      "HAL: That's a very nice rendering, Dave. I think you've improved a great deal. Can you hold it a bit closer? That's Dr. Hunter, isn't it? "
    ].sample
end

end
