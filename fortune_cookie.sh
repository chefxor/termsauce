# Author: Chef
# Github: https://github.com/chefxor

cookie=(

"I’m not saying I’m Batman, but have you ever seen us in the same room together?"
"It’s just a flesh wound."
"I have people skills! I am good at dealing with people!"
"If I’m not back in five minutes… just wait longer."
"I'm not arguing that with you. I'm just explaining why I'm right."
"Let me show you how the boss does it"
"Real eyes realize real lies"
"Now you see me now you dont. Now you see me, BOOM! you are dead"
"Give up on your dream and die"
"Hone that one thing to perfection"
"And so it goes..."
"You live only once"
"Dont worry, Im the strongest"
"What is the cost of lies"
"It's all right to cry. It's all right to run away. Just dont ever give up"
"Say my name"
"You get what you f**king deserve"
"Man plans, God laughs"
"Sometimes home is not a place, It's a person"
"Life’s too short for slow terminals, speed it up!" 
"Your terminal loves you, show it some respect!"
"Why browse when you can grep?"
"rm -rf negativity from your life!"
"404 Motivation Not Found... Try Again!"
"Exit vim? Nah, just live there now!"
"Git commit, because life’s all about changes!"
"You miss 100% of the commands you don’t alias!"
"Keep calm and sudo on!"
"I’m not superstitious, but I am a little stitious."
"It’s not that I can’t help myself. I just don’t want to."
"I’d agree with you, but then we’d both be wrong."
"You couldn’t handle my undivided attention."
)

rand=$[$RANDOM % ${#cookie[@]}]

# FEEL FREE TO COMMENT & UNCOMMENT STUFF BELOW. IT THROWS DIFFERENT TYPES OF OUTPUTS SOMETIMES FANCIER.

# large quotes in ascii art
# figlet -f slant "${cookie[rand]}" | lolcat

# animated quote
echo ${cookie[rand]} | lolcat -a

# quote in colors
# echo ${cookie[rand]} | lolcat

# cool username
figlet -f slant "$(whoami)" | lolcat

# Just username
# whoami

# current date
date
