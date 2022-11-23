//
//  ContentView.swift
//  Mobile App Project
//
//  Created by Edward Hyde on 11/21/22.
//

import SwiftUI

struct ContentView: View {
    
    //Create variables to hold the card and the score of the player and the computer.
    @State var playerCard = ""
    @State var computerCard = ""
    @State var playerScore = 0
    @State var computerScore = 0
    
    var body: some View {
        ZStack{
            //Set the background
            Image("background")
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                //The title of the game
                Text("War Card Game")
                
                    //Setting size and color of the text.
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 0.0)
                Spacer()
                
                HStack{
                    //Display the cards
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }
                Spacer()
            
                //This starts the game
                Button(action: {
                    
                    //Create two random numbers for the cards for each player
                    let playerRand = Int.random(in: 2...14)
                    let computerRand = Int.random(in: 2...14)
                    
                    //Add the to random numbers to variable
                    playerCard = "card" + String(playerRand)
                    computerCard = "card" + String(computerRand)
                    
                    //Conditions for if the player wins or the computer
                    if playerRand > computerRand {
                        playerScore += 1
                    }
                    
                    else if computerRand > playerRand {
                        computerScore += 1
                    }
                    
                }, label: {Text("Deal Cards")})
                    
                HStack{
                    Spacer()
                    VStack{
                        //Display the score of the player
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                    VStack{
                        //Display the score of the computer
                        Text("Computer")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(computerScore))
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                
                }
                Spacer()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
