with_fx :autotuner do
  play 50
end

live_loop :guit do
  with_fx :echo, phase: 0.25 do
    sample :glitch_robot1, rate: 0.5
  end
  #sample :boom, rate: -0.5
  sleep 0.5
end

live_loop :guit do
  with_fx :echo, phase: 0.25 do
    sample :guit_e_slide, rate: 0.5
  end
  #sample :boom, rate: -0.5
  sleep 0.5
end

live_loop :boom do
  with_fx :reverb, mix: 0.2, room: 1 do
    sample :guit_em9, amp: 10, rate: 1
    #sample :guit_em4, amp: 10, rate: 0.7
    sleep 0.2
    #sample :bd_boom, amp: 10, rate: 0.7
  end
  sleep 0.2
end
