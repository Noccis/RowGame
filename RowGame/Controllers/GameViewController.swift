//
//  GameViewController.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-25.
//
import AVFoundation
import UIKit

class GameViewController: UIViewController {
    
    var player: AVAudioPlayer?
    

    var playerActive = true // true = player 1, false = player 2
    
    var locked = false // Bool to prevent player 1 from clicking views if Robot player is active
    
    // Create a RowGame object
    let gameBoard = RowGame()
    
    //Take in player name from last VC
    var p1Name: String?
    var p2Name: String?
    
   
    var player1 = Player(playerID: 1, playerImage: "xgreen2")
    var player2 = Player(playerID: 2, playerImage: "circle2")
    // Robot Player:
    let r1 = RobotPlayer(playerID: 2, playerName: "Beep",playerImage: "circle2")

    

    

    @IBOutlet weak var gameTextLabel: UILabel!
    
    
    @IBOutlet weak var informationTextLabel: UILabel!
    
    
    
    @IBOutlet weak var imageZero: UIImageView!
    
    @IBOutlet weak var imageOne: UIImageView!
    
    @IBOutlet weak var imageTwo: UIImageView!
    
    @IBOutlet weak var imageThree: UIImageView!
    
    @IBOutlet weak var imageFour: UIImageView!
    
    @IBOutlet weak var imageFive: UIImageView!
    
    @IBOutlet weak var imageSix: UIImageView!
    
    @IBOutlet weak var imageSeven: UIImageView!
    
    @IBOutlet weak var imageEight: UIImageView!
    
    var imageViewArray: [UIImageView?] = []
    

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPlayers()
        
        setPlayerTextLabel()
        
        playerTurnInformationText()
        
        imageViewArray.append(imageZero)
        imageViewArray.append(imageOne)
        imageViewArray.append(imageTwo)
        imageViewArray.append(imageThree)
        imageViewArray.append(imageFour)
        imageViewArray.append(imageFive)
        imageViewArray.append(imageSix)
        imageViewArray.append(imageSeven)
        imageViewArray.append(imageEight)
        
        startAndStopPlayer()
        
        
        

    }
    
    func createPlayers() {
        
        guard let name1 = p1Name else { return }
        
        let name2 = p2Name
        
        if name2 == "" {
            // Create Robot Player
            player1.playerName = name1
            player2 = r1
            print("Robot: I AM ALIVE!!!")
       
            
        }else{
            
             // Create 2 "regular" players
            player1.playerName = name1
            
            guard let name2 = name2  else { return }
            player2.playerName = name2
            
        }
       
    }
    
    @IBAction func getUIImageViewTag(_ sender: UITapGestureRecognizer) {
        
        
        // **************** If Bool locked is false, player 1 can click image view.
        if !locked {
        let arrayNr = sender.view?.tag
        
        guard let arrayNr = arrayNr else{
            print("func TAPIMAGE, the sender tag is NIL")
            return
        }
        imageIsTapped(arrayNr: arrayNr)
            
            // **************** Checks if player 2 is a robot and locks Bool locked.
            if player2 is RobotPlayer {
                locked = true
            }
        print("func getUIImageTag, sender tag: \(arrayNr)")
        }
    }
    
    
    
    
    
    func imageIsTapped(arrayNr: Int) {
      
        let playerInt: Int?
        
        // ******** Desides if player one or two is active.
        if playerActive == true {
            playerInt = 1
        }else {
            playerInt = 2
        }
        guard let playerInt = playerInt else {
            return
        }
        // **************** Checks if the chosen spot is open (0)
        if gameBoard.isSpotOpen(arrayNr: arrayNr, playerActive: playerInt) {
            
            gameBoard.setPlayerMark(arrayNr: arrayNr, playerNr: playerInt)
            
            setPlayerImage(ImageViewTag: arrayNr, playerInt: playerInt)
            
        // **************** Checks if there is a winner after placing mark.
            if gameBoard.isThereAWinner(player: playerInt) {
                
                thereIsAWinner(playerInt: playerInt)
        // **************** Checks if game is over if there is no winner.
            }else if gameBoard.isThereATie() {
                
                gameBoard.gameOver()
                setTieText()
                
        // **************** If there is no winner and game is not over, toggles player and information text.
            }else{
                playerActive.toggle()
                playerTurnInformationText()
                
                if !playerActive {
                    if player2 is RobotPlayer {
                  //  if player2.playerName == "Beep" {
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: { [self] in
                            self.getFakeUIImageTag()
                            locked = false
                        })
            
                    }
                }
            }
        }else {
           
            playErrorSound()
        }
        
        
    }
    
    func thereIsAWinner(playerInt: Int) {
        
        gameBoard.gameOver()
        setWinnerText(player: playerInt)
        addWinnerScore(player: playerInt)
        setPlayerTextLabel()
        
    }
    
    
    func setPlayerImage(ImageViewTag: Int, playerInt: Int) {
        
        let imageOutlet = imageViewArray[ImageViewTag]
        guard let imageOutlet = imageOutlet else { return }
       
        if playerInt == 1 {
           
            imageOutlet.image = UIImage(named: player1.playerImage)
            
        }else if playerInt == 2{
            
            imageOutlet.image = UIImage(named: player2.playerImage)
            
        }else {
            print("setPLayerImage ERROR")
        }
        
    }
    
    func playerTurnInformationText() {
        
        if playerActive == true {
            
            informationTextLabel.text = "\(player1.playerName), go!"
            
        }else if playerActive == false {
            
            informationTextLabel.text = "\(player2.playerName), go!"
            
        }else {
            informationTextLabel.text = "Error"
        }
       
    }
    
    func setTieText() {
      
        informationTextLabel.text = "Tie!"
        
    }
    
    func setWinnerText(player: Int) {
        
        if player == 1 {
            informationTextLabel.text = "\(player1.playerName) won!"
            
        }else if player == 2 {
            
            informationTextLabel.text = "\(player2.playerName) won!"
        }else{
            informationTextLabel.text = "SetWinnerText ERROR!"
        }
        
    }
    
    func addWinnerScore(player: Int) {
        if player == 1 {
            player1.addWinToScore()
        }else if player == 2 {
            player2.addWinToScore()
        }else{
            print("addWinnerScore ERROR")
        }
    }
    
    func setPlayerTextLabel() {
        
        gameTextLabel.text = "\(player1.playerName) score: \(player1.playerScore)\n \(player2.playerName) score: \(player2.playerScore)"
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        
        gameBoard.resetGame()
      
        locked = false
        playerActive = true
        playerTurnInformationText()
          
          for outlet in imageViewArray {
          
              guard let outlet = outlet else { return }
              outlet.image = UIImage(named: "emptyframe2")
          
          }
    
    }
    
    func getFakeUIImageTag() {
        
        let arrayNr = r1.randomAvailableNr(game: gameBoard)
        
        imageIsTapped(arrayNr: arrayNr)
        
        print("func getFakeUIImageTag, sender tag: \(arrayNr)")

    }
    
    func playErrorSound() {

            guard let player = player else { return }
            
            player.play()
    }
    
    func startAndStopPlayer() {
        
        guard player == player else { return }
       
        let urlString = Bundle.main.path(forResource: "invalid", ofType: "mp3")
        do {
          try AVAudioSession.sharedInstance().setMode(.default)
            
          try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
            
            guard let urlString = urlString else { return }

            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
            
            guard let player = player else { return }
            
            player.play()
            player.stop()

        }
        catch {
            print("playback ERROR")
        }
        
        
    }
    

}
