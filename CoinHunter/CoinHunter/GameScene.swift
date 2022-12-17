//
//  GameScene.swift
//  CoinHunter
//
//  Created by Muharrem Köroğlu on 15.12.2022.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate{

    
    var bar = SKSpriteNode()
    var ball = SKSpriteNode()
    var coin1 = SKSpriteNode()
    var coin2 = SKSpriteNode()
    var coin3 = SKSpriteNode()
    var coin4 = SKSpriteNode()
    var coin5 = SKSpriteNode()
    var coin6 = SKSpriteNode()
    var coin7 = SKSpriteNode()
    var coin8 = SKSpriteNode()
    var coin9 = SKSpriteNode()
    
   
    var ballLocation : CGPoint?
    var barLocation : CGPoint?
    var removedCoinArray = [SKNode]()
    var score = 0
    var scoreLabel = SKLabelNode()
    
    
    
    enum ColliderType : UInt32 {
        case Bar = 1
        case Ball = 2
        case Coin = 4
    }
    
    
    
    override func didMove(to view: SKView) {
        
        
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.physicsWorld.contactDelegate = self
       
        
        //Bar
        let bartexture = SKTexture(imageNamed: "bar")
        let barSize = CGSize(width: bartexture.size().width, height: bartexture.size().height)
        
        bar = childNode(withName: "bar") as! SKSpriteNode
        bar.physicsBody = SKPhysicsBody(rectangleOf: barSize)
        bar.physicsBody?.affectedByGravity = false
        bar.physicsBody?.isDynamic = false
        barLocation = bar.position
        
        bar.physicsBody?.collisionBitMask = ColliderType.Ball.rawValue
      
            
        //Ball
        let ballTexture = SKTexture(imageNamed: "ball")
        
        ball = childNode(withName: "ball") as! SKSpriteNode
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ballTexture.size().height / 3)
        ball.physicsBody?.affectedByGravity = true
        ball.physicsBody?.isDynamic = true
        ball.physicsBody?.mass = 0.15
        ballLocation = ball.position
        
        ball.physicsBody?.categoryBitMask = ColliderType.Ball.rawValue
        ball.physicsBody?.contactTestBitMask = ColliderType.Ball.rawValue
        ball.physicsBody?.collisionBitMask = ColliderType.Bar.rawValue
        
            
        
        //Coins
        let coinTexture = SKTexture(imageNamed: "coin")
        
        coin1 = childNode(withName: "coin1") as! SKSpriteNode
        coin1.physicsBody = SKPhysicsBody(circleOfRadius: coinTexture.size().height)
        coin1.physicsBody?.affectedByGravity = false
        coin1.physicsBody?.isDynamic = false
        
        coin1.physicsBody?.collisionBitMask = ColliderType.Ball.rawValue
        
        coin2 = childNode(withName: "coin2") as! SKSpriteNode
        coin2.physicsBody = SKPhysicsBody(circleOfRadius: coinTexture.size().height)
        coin2.physicsBody?.affectedByGravity = false
        coin2.physicsBody?.isDynamic = false
        
        coin2.physicsBody?.collisionBitMask = ColliderType.Ball.rawValue

        coin3 = childNode(withName: "coin3") as! SKSpriteNode
        coin3.physicsBody = SKPhysicsBody(circleOfRadius: coinTexture.size().height)
        coin3.physicsBody?.affectedByGravity = false
        coin3.physicsBody?.isDynamic = false
        
        coin3.physicsBody?.collisionBitMask = ColliderType.Ball.rawValue
        
        coin4 = childNode(withName: "coin4") as! SKSpriteNode
        coin4.physicsBody = SKPhysicsBody(circleOfRadius: coinTexture.size().height)
        coin4.physicsBody?.affectedByGravity = false
        coin4.physicsBody?.isDynamic = false
        
        coin4.physicsBody?.collisionBitMask = ColliderType.Ball.rawValue
        
        coin5 = childNode(withName: "coin5") as! SKSpriteNode
        coin5.physicsBody = SKPhysicsBody(circleOfRadius: coinTexture.size().height)
        coin5.physicsBody?.affectedByGravity = false
        coin5.physicsBody?.isDynamic = false
        
        coin5.physicsBody?.collisionBitMask = ColliderType.Ball.rawValue
        
        coin6 = childNode(withName: "coin6") as! SKSpriteNode
        coin6.physicsBody = SKPhysicsBody(circleOfRadius: coinTexture.size().height)
        coin6.physicsBody?.affectedByGravity = false
        coin6.physicsBody?.isDynamic = false
        
        coin6.physicsBody?.collisionBitMask = ColliderType.Ball.rawValue
        
        coin7 = childNode(withName: "coin7") as! SKSpriteNode
        coin7.physicsBody = SKPhysicsBody(circleOfRadius: coinTexture.size().height)
        coin7.physicsBody?.affectedByGravity = false
        coin7.physicsBody?.isDynamic = false
        
        coin7.physicsBody?.collisionBitMask = ColliderType.Ball.rawValue
        
        coin8 = childNode(withName: "coin8") as! SKSpriteNode
        coin8.physicsBody = SKPhysicsBody(circleOfRadius: coinTexture.size().height)
        coin8.physicsBody?.affectedByGravity = false
        coin8.physicsBody?.isDynamic = false
        
        coin8.physicsBody?.collisionBitMask = ColliderType.Ball.rawValue
        
        coin9 = childNode(withName: "coin9") as! SKSpriteNode
        coin9.physicsBody = SKPhysicsBody(circleOfRadius: coinTexture.size().height)
        coin9.physicsBody?.affectedByGravity = false
        coin9.physicsBody?.isDynamic = false
        
        coin9.physicsBody?.collisionBitMask = ColliderType.Ball.rawValue
    
        scoreLabel.fontName = "Helvetica"
        scoreLabel.fontSize = 60
        scoreLabel.fontColor = UIColor.blue
        scoreLabel.text = "0"
        scoreLabel.position = CGPoint(x: 0, y: self.frame.height / 3)
        scoreLabel.zPosition = 2
        self.addChild(scoreLabel)

        
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        
        if contact.bodyA.collisionBitMask == ColliderType.Ball.rawValue {
            
            ball.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 190))
            let jumpSound = SKAction.playSoundFileNamed("jump", waitForCompletion: false)
            run(jumpSound)
            
        }else if contact.bodyB.collisionBitMask == ColliderType.Ball.rawValue{
  
            if let coinName = contact.bodyB.node {
                
                let coinSound = SKAction.playSoundFileNamed("coin", waitForCompletion: false)
                run(coinSound)
                
                coinName.removeFromParent()
                self.removedCoinArray.append(coinName)
                score += 10
                scoreLabel.text = String(score)
                
            }
        }
    }

    func touchDown(atPoint pos : CGPoint) {

    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        for touch in touches {
            let location = touch.location(in: self)
            if bar.contains(location) {
                bar.position.x = location.x
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self)
            if bar.contains(location) {
                bar.position.x = location.x
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
        if let ballPhysicsBody = ball.physicsBody {
            
            if ballPhysicsBody.velocity.dx == 0.0 && ballPhysicsBody.velocity.dy == 0.0 && ballPhysicsBody.angularVelocity == 0.0 {
                
                bar.position = barLocation!
                ball.position = ballLocation!
                score = 0
                scoreLabel.text = String(score)

                for coinRestart in removedCoinArray {
                    coinRestart.removeFromParent()
                    scene!.addChild(coinRestart)
                }
            }
        }
    }
}
