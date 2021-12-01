//
//  GameViewController.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-25.
//

import UIKit

class GameViewController: UIViewController {
    
    var isGameOver = false
    var playerActive = true // true = player 1, false = player 2
    
    // Create a RowGame object
    let gameBoard = RowGame()
    
    // Create 2 players
    let player1 = Player(playerID: 1, playerImage: "xgreen")
    let player2 = Player(playerID: 2, playerImage: "cirkle")

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
    

    
    
   
    
   
    
    // ----------------------------------------------------------------
    // ----------------------------------------------------------------
    // ----------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameTextLabel.text = "Welcome \(player1.playerID) & \(player2.playerID)!"
        
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
        
        
        
        
        
        
        

    }
    
    @IBAction func getUIImageViewTag(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = sender.view?.tag
        
        guard let arrayNr = arrayNr else{
            print("func TAPIMAGE, the sender tag is NIL")
            return
        }
        imageIsTapped(arrayNr: arrayNr)
        print("func getUIImageTag, sender tag: \(arrayNr)")
    }
    
    
    
    
    
    func imageIsTapped(arrayNr: Int) {
      
        let playerInt: Int?
        // Desides if player one or two is active.
        if playerActive == true {
            playerInt = 1
        }else {
            playerInt = 2
        }
        guard let playerInt = playerInt else {
            return
        }
        if gameBoard.isSpotOpen(arrayNr: arrayNr, playerActive: playerInt) == true {
            
            gameBoard.setPlayerIntInArray(arrayNr: arrayNr, playerNr: playerInt)
            
            setPlayerImage(ImageViewTag: arrayNr, playerInt: playerInt)
            
            if gameBoard.isThereAWinner(player: playerInt) == true {
                
                isGameOver = true
                gameBoard.gameOver()
                setWinnerText(player: playerInt)
                
            }else if gameBoard.isThereATie() == true {
                
                isGameOver = true
                gameBoard.gameOver()
                setTieText()
                
            }else{
                playerActive.toggle()
                playerTurnInformationText()
            }
        }
        
    }
    
    
    func setPlayerImage(ImageViewTag: Int, playerInt: Int) {
        
        let imageOutlet = imageViewArray[ImageViewTag]
        guard let imageOutlet = imageOutlet else { return }
       
        if playerInt == 1 {
           
            imageOutlet.image = UIImage(named: "xgreen")
            
        }else if playerInt == 2{
            
            imageOutlet.image = UIImage(named: "cirkle")
            
        }else {
            print("setPLayerImage ERROR")
        }
        
    }
    
    func playerTurnInformationText() {
        
        if playerActive == true {
            
            informationTextLabel.text = "Player one, go!"
            
        }else if playerActive == false {
            
            informationTextLabel.text = "Player two, go!"
            
        }else {
            informationTextLabel.text = "Error"
        }
       
    }
    
    func setTieText() {
      
        informationTextLabel.text = "Tie!"
        
    }
    
    func setWinnerText(player: Int) {
        
        if player == 1 {
            informationTextLabel.text = "Player one won!"
            
        }else if player == 2 {
            
            informationTextLabel.text = "Player two won!"
        }else{
            informationTextLabel.text = "SetWinnerText ERROR!"
        }
        
    }
    
    func imageReset() {
        // reloada första aktiviteten?
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
