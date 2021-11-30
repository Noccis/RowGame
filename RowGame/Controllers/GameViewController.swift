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
    
    
    
    
    
    
    @IBAction func tapZero(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = sender.view?.tag
        guard let arrayNr = arrayNr else{
            return
        }
        imageTapped(arrayNr: arrayNr)
    }
    
    @IBAction func tapOne(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = sender.view?.tag
        guard let arrayNr = arrayNr else{
            return
        }
        imageTapped(arrayNr: arrayNr)
    }
    
    
    @IBAction func tapTwo(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = sender.view?.tag
        guard let arrayNr = arrayNr else{
            return
        }
        imageTapped(arrayNr: arrayNr)
       
    }
    
    
    @IBAction func tapThree(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = sender.view?.tag
        guard let arrayNr = arrayNr else{
            return
        }
        imageTapped(arrayNr: arrayNr)
      
    }
    
    @IBAction func tapFour(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = sender.view?.tag
        guard let arrayNr = arrayNr else{
            return
        }
        imageTapped(arrayNr: arrayNr)
       
    }
    
    
    @IBAction func tapFive(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = sender.view?.tag
        guard let arrayNr = arrayNr else{
            return
        }
        imageTapped(arrayNr: arrayNr)
    }
    
    
    @IBAction func tapSix(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = sender.view?.tag
        guard let arrayNr = arrayNr else{
            return
        }
        imageTapped(arrayNr: arrayNr)
    }
    
    @IBAction func tapSeven(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = sender.view?.tag
        guard let arrayNr = arrayNr else{
            return
        }
        imageTapped(arrayNr: arrayNr)
       
    }
    
    
    @IBAction func tapEight(_ sender: UITapGestureRecognizer) {

        let arrayNr = sender.view?.tag
        guard let arrayNr = arrayNr else{
            return
        }
        imageTapped(arrayNr: arrayNr)
    }
    
    // ----------------------------------------------------------------
    // ----------------------------------------------------------------
    // ----------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameTextLabel.text = "Welcome \(player1.playerID) & \(player2.playerID)!"
        
        playerTurnInformationText()
        
        
        
        
        
        
        
        

    }
    
    func imageTapped(arrayNr: Int) {
        
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
    
    
    func setPlayerImage(imageOutlet: UIImageView, playerInt: Int) {
        if playerInt == 1 {
            
            imageOutlet.image = UIImage(named: "xgreen")
            playerActive.toggle()
            playerTurnInformationText()
            
        }else if playerInt == 2{
            
            imageOutlet.image = UIImage(named: "cirkle")
            playerActive.toggle()
            playerTurnInformationText()
            
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
        // if player one= if player 2= else set winner
    }
    
    func finalInformationText() {
        if gameBoard.boardArray[0] == 10 {
            
        }
        
    }
    
    func setWinnerText() {
        
        informationTextLabel.text = ""
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
