User.destroy_all
GrahamMain.destroy_all
GrahamTutorial.destroy_all
GrahamOne.destroy_all
GrahamTwo.destroy_all
GrahamThree.destroy_all

tove = User.create({username: "Tove", password: "1234", tutorial: false, caseOne: false, caseTwo: false, caseThree: false})

GrahamMain.create!([
  {description: "Alright, so I take it you're the new kid? You know, From the head office? Did they fill you in at all or... 
Got it. So, just to catch you up..."},
  {description: "Welcome to the Pinkerton Agency. Founded 1850 in Chicago Illinois. Motto is: We Never Sleep. Bare bones of it, we're detectives for hire. 
So we get to handle cases the police can't or won't." },
{description: "Some new mob appeared and they're trying to be clever by using ciphers. I collect books so I guess the head office figured I might have something to help break these codes but, it's a lot." },
{description: "That's why you're here." },
{description: "We'll split the ciphers, I'll try to lead you in the right direction if you get stuck." },
{description: "So.. you ready, kid?" }])



GrahamTutorial.create!([
  { description: "Okay, so here's an introduction to the classic book cipher."},
  { description: "I set up this one with a copy of The Postman Always Rings Twice."},
{ description: "Alright, so see that weird list of numbers? Book ciphers break down the list into a way to find words hidden in paragraphs." },
{ description: "It only works if you have the exact same book edition, though."},
{ description: "So the first number is the page number, which I pulled for ya."},
{ description: "Second number is the line, count down from the top."},
{ description: "The last number is the word count starting from the left-hand side."},
{ description: "Pretty simple, right?"},
{ description: "Let's see if you get this one."},
{ description: "Feel free to scribble on the page if it helps you think."}])

GrahamOne.create!([
  { description:"Now this I think is the pigpen cipher."},
  { description: "Lucky for us I have a few books on how old this thing is. It may even go back to the crusades. Possibly Hebrew in origin, but no one knows for sure so-"},
{ description: "What? Oh right, anyway-"},
{ description: "Each alphabet is broken into a compartment, some have dots, and some don't."},
{ description: "Pay attention to the placement of the lines and dots, that will give you a hint on how to solve it."},
{ description: "What? What about me? You see this pile? I have to go through these first."},
{ description: "So..."},
{ description: "Pretty simple, right?"},
{ description: "I've drawn out the alphabet so you can draw on it."},
{ description: "See if you could solve it before we run out of coffee again."}])

GrahamTwo.create!([
  { description: "Well, this is definitely a Caesar cipher."},
  { description: "Now this is old. Julius Caesar used use something like this to send coded messages to his generals."},
{ description: "It was even used a couple hundred years after his death until someone figured it out."},
{ description: "Only problem is, I don't remember the trick to this one."},
{ description: "Pay attention to the placement of the lines and dots, that will give you a hint on how to solve it."},
{ description: "I'll leave it up to you."},
{ description: "If someone cracked it in the 9th century, you'll be fine."},
{ description: "Just remember-"},
{ description: "Watch the coffee."}])

GrahamThree.create!([
  { description: "Oh no..."},
  { description: "Now this is just a guess but this might be the Playfair cipher."},
{ description: "I honestly don't know much about this one."},
{ description: "But what I do know is, you can't solve it by looking for double letters like the Caesar cipher."},
{ description: "The Playfair cipher is smart enough to have a way around it. There are no doubles."},
{ description: "Wait here, I'm gonna dig around and see if I have anything about it."},
{ description: "Maybe give it a shot, see what you figure out."},
{ description: "Hang in there."},
{ description: "I've brought double strength coffee for this one."}])