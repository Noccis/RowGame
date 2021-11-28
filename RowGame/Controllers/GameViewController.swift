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
    
    // Skapa ett RowGame objekt
    let gameBoard = RowGame()
    
    // Skapa 2 spelare
    let player1 = Player(playerID: 1, playerImage: "xgreen")
    let player2 = Player(playerID: 2, playerImage: "cirkle")

    @IBOutlet weak var gameTextLabel: UILabel!
    
    
    
    @IBOutlet weak var imageZero: UIImageView!
    
    @IBOutlet weak var imageOne: UIImageView!
    
    @IBOutlet weak var imageTwo: UIImageView!
    
    @IBOutlet weak var imageThree: UIImageView!
    
    @IBOutlet weak var imageFour: UIImageView!
    
    @IBOutlet weak var imageFive: UIImageView!
    
    @IBOutlet weak var imageSix: UIImageView!
    
    @IBOutlet weak var imageSeven: UIImageView!
    
    @IBOutlet weak var imageEight: UIImageView!
    
    
    
    
    
    
    @IBAction func tapZero(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = 0
        let playerInt: Int?
        
        if playerActive == true {
            playerInt = 1
        }else {
            playerInt = 2
        }
        guard let playerInt = playerInt else {
            return
        }
        if gameBoard.isSpotOpen(arrayNr: arrayNr, playerActive: playerInt) == true {
            setPlayerImage(imageOutlet: imageZero, playerInt: playerInt)
            
        }
        
    }
    
    @IBAction func tapOne(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = 1
        let playerInt: Int?
        
        if playerActive == true {
            playerInt = 1
        }else {
            playerInt = 2
        }
        guard let playerInt = playerInt else {
            return
        }
        if gameBoard.isSpotOpen(arrayNr: arrayNr, playerActive: playerInt) == true {
            setPlayerImage(imageOutlet: imageOne, playerInt: playerInt)
            
        }
    }
    
    
    @IBAction func tapTwo(_ sender: UITapGestureRecognizer) {
        let arrayNr = 2
        let playerInt: Int?
        
        if playerActive == true {
            playerInt = 1
        }else {
            playerInt = 2
        }
        guard let playerInt = playerInt else {
            return
        }
        if gameBoard.isSpotOpen(arrayNr: arrayNr, playerActive: playerInt) == true {
            setPlayerImage(imageOutlet: imageTwo, playerInt: playerInt)
            
        }
       
    }
    
    
    @IBAction func tapThree(_ sender: UITapGestureRecognizer) {
        let arrayNr = 3
        let playerInt: Int?
        
        if playerActive == true {
            playerInt = 1
        }else {
            playerInt = 2
        }
        guard let playerInt = playerInt else {
            return
        }
        if gameBoard.isSpotOpen(arrayNr: arrayNr, playerActive: playerInt) == true {
            setPlayerImage(imageOutlet: imageThree, playerInt: playerInt)
            
        }
      
    }
    
    @IBAction func tapFour(_ sender: UITapGestureRecognizer) {
        let arrayNr = 4
        let playerInt: Int?
        
        if playerActive == true {
            playerInt = 1
        }else {
            playerInt = 2
        }
        guard let playerInt = playerInt else {
            return
        }
        if gameBoard.isSpotOpen(arrayNr: arrayNr, playerActive: playerInt) == true {
            setPlayerImage(imageOutlet: imageFour, playerInt: playerInt)
            
        }
       
    }
    
    
    @IBAction func tapFive(_ sender: UITapGestureRecognizer) {
        let arrayNr = 5
        let playerInt: Int?
        
        if playerActive == true {
            playerInt = 1
        }else {
            playerInt = 2
        }
        guard let playerInt = playerInt else {
            return
        }
        if gameBoard.isSpotOpen(arrayNr: arrayNr, playerActive: playerInt) == true {
            setPlayerImage(imageOutlet: imageFive, playerInt: playerInt)
            
        }
       
    }
    
    
    @IBAction func tapSix(_ sender: UITapGestureRecognizer) {
        let arrayNr = 6
        let playerInt: Int?
        
        if playerActive == true {
            playerInt = 1
        }else {
            playerInt = 2
        }
        guard let playerInt = playerInt else {
            return
        }
        if gameBoard.isSpotOpen(arrayNr: arrayNr, playerActive: playerInt) == true {
            setPlayerImage(imageOutlet: imageSix, playerInt: playerInt)
            
        }
     
    }
    
    @IBAction func tapSeven(_ sender: UITapGestureRecognizer) {
        let arrayNr = 7
        let playerInt: Int?
        
        if playerActive == true {
            playerInt = 1
        }else {
            playerInt = 2
        }
        guard let playerInt = playerInt else {
            return
        }
        if gameBoard.isSpotOpen(arrayNr: arrayNr, playerActive: playerInt) == true {
            setPlayerImage(imageOutlet: imageSeven, playerInt: playerInt)
            
        }
       
    }
    
    
    @IBAction func tapEight(_ sender: UITapGestureRecognizer) {
        let arrayNr = 8
        let playerInt: Int?
        
        if playerActive == true {
            playerInt = 1
        }else {
            playerInt = 2
        }
        guard let playerInt = playerInt else {
            return
        }
        if gameBoard.isSpotOpen(arrayNr: arrayNr, playerActive: playerInt) == true {
            setPlayerImage(imageOutlet: imageEight, playerInt: playerInt)
            
        }
        
    }
    
    // ----------------------------------------------------------------
    // ----------------------------------------------------------------
    // ----------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameTextLabel.text = "Welcome \(player1.playerID) & \(player2.playerID)!"
        
       
        
        

    }
    
    
    func setPlayerImage(imageOutlet: UIImageView, playerInt: Int) {
        if playerInt == 1 {
            
            imageOutlet.image = UIImage(named: "xgreen")
            playerActive.toggle()
        }else if playerInt == 2{
            imageOutlet.image = UIImage(named: "cirkle")
            playerActive.toggle()
        }else {
            print("setPLayerImage ERROR")
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
