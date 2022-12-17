# Coin Hunter
### Hi there, I'm Muharrem <img src = "https://raw.githubusercontent.com/MartinHeinz/MartinHeinz/master/wave.gif" width = "42"> 
#### Thank You for taking the time to view my repository 

## <h2> About This App <img src = "https://c.tenor.com/JsoERRQcZqYAAAAi/thumbs-up-joypixels.gif" width = "42"></h2>
This is a coin hunting game. It shows developers how to work with the SpriteKit framework. Our game has a background, bar, ball and nine coin images. Jump and win sound effects were used in addition to the images. We got these from the opengameart website. First of all, we designed our game on Game Scene. We've given all of them a special zPosition so they can appear properly. Then we defined all the objects that will move into the code as SKSpriteNode(). Then we created a physical structure for the objects we defined. In this way, bars and gold coins do not have any mass and are not affected by gravity. Here the ball is given the effect of mass and gravity just to make the ball bounce. After the rendering was finished, we first moved the bar to the right and left. We used the touchesBegan and touchesMoved functions for this. In this way, we took the location where the screen was touched and checked whether the bar is in this location. If it is in it, the x-axis of the location becomes the new position of the bar. After the process of moving the bar is finished, it's time to bounce the ball. For this, we must first look at how the collision is perceived. We need the following three methods for collision detection. The first is categoryBitMask, the second is contactTestBitMask, and the third is collisionBitMask. But these functions require UInt32 category. We use the enum structure for this. After creating this structure, we give the ball three collision methods. We only give collisionBitMask to the objects that the ball will collide with. When this process is completed, it's time to decide what to do when a collision occurs. We use the didBegin function for this. But before using it we should inherit SKPhysicsContactDelegate class and say physicsWorld.contactDelegate = self in didMove. In the didBegin function, we write what happens when the ball collides with the gold coins and the bar. Accordingly, when the ball collides with the bar, an impulse will be created that acts on it in the y-axis. If the ball collides with coins, we first get the name of the coin it collided with. After receiving it, we save it to an array. In this way, we have the information of the coins that we delete from the screen. When the player could not catch the ball, we wrote a replay algorithm using the update function. According to this, when the x, y and angular velocity of the ball is 0, the ball and the bar come to their initial position. Then, with a for loop, we enter the sequence of the coins we removed from the screen and show them on the screen again. Apart from these, we added a bouncing sound when the ball hits the bar and a winning sound when it hits the coins to add fun to the game. In addition, we have added a SKLabelNode to the top of the screen. In this way, our score increases as we hunt coins. Finally, we designed an icon for our game.

<a href="https://opengameart.org/" target="_blank">Visit OpenGameArt</a><br>


<h2> Used Technologies <img src = "https://media2.giphy.com/media/QssGEmpkyEOhBCb7e1/giphy.gif?cid=ecf05e47a0n3gi1bfqntqmob8g9aid1oyj2wr3ds3mg700bl&rid=giphy.gif" width = "42"> </h2>
<div class="row">
      <div class="column">
<img width ='72px' src 
     ='https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/swift-icon.svg'>
  </div>
</div>

<h2> Used Language <img src = "https://media.giphy.com/media/Zd6jPg8hcp4Q3vrvjo/giphy.gif" width = "42"> </h2>
<div class="row">
      <div class="column">
<img width ='82px' src 
     ='https://raw.githubusercontent.com/MuharremKoroglu/Bitcoin/main/Flag_of_the_United_Kingdom.svg'>
  </div>
</div>

<h2> Images <img src = "https://media2.giphy.com/media/psneItdLMpWy36ejfA/source.gif" width = "62"> </h2>
  <div class="column">

https://user-images.githubusercontent.com/68854616/208233098-32217b88-0998-41ac-819f-b22966779916.mp4


  </div>
<h2> Connect with me <img src='https://raw.githubusercontent.com/ShahriarShafin/ShahriarShafin/main/Assets/handshake.gif' width="100"> </h2>
<a href = 'mailto:muharremkoroglu245@gmail.com'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/gmail-logo-2561.svg"/></a> &nbsp;
<a href = 'https://www.linkedin.com/in/muharremkoroglu/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/rahulbanerjee26/githubAboutMeGenerator/main/icons/linked-in-alt.svg"/></a> &nbsp;
<a href = 'https://muharremkoroglu.medium.com/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/rahulbanerjee26/githubAboutMeGenerator/main/icons/medium.svg"/></a> &nbsp;
<a href="https://www.instagram.com/m.koroglu99/" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg" alt="_._.adam._"  width="32px" align= 'center' /></a> &nbsp;
<a href = 'https://synta-x.com/'> <img align="center" width = '32px' align= 'center' src="https://raw.githubusercontent.com/MuharremKoroglu/MuharremKoroglu/main/internet-svgrepo-com%20(2).svg"/></a> &nbsp;





















