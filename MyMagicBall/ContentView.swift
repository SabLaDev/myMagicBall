//
//  ContentView.swift
//  MyMagicBall
//
//  Created by Apprenant 77 on 23/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isShaked = "MAYBE"
    private var messages = [
        "MAYBE",
        "NOT\n A CHANCE",
        "IN\n YOUR DREAM",
        "CERTAINLY",
        "DON'T\n COUNT ON IT",
        "YES",
        "UNLIKELY",
        "NO",
        "AS I\n SEE IT YES",
        "ASK\n AGAIN LATER",
        "I HAVE\n NO IDEA"]
    var body: some View {
        VStack {
            Text("My Magic Ball")
                   .bold()
                   .font(.largeTitle)
            Spacer()
            ZStack(alignment: .center) {
                 
                Circle()
                    .frame(width: 400, height: 400)
                
                Circle()
                    .foregroundColor(.secondary)
                        .frame(width: 200, height: 400)
                
                Image(systemName: "triangle.fill")
                    .resizable()
                    .frame(width: 150, height: 155, alignment: .center)
                    //.aspectRatio(contentMode: .fit)
                    .foregroundColor(.blue)
                    //.rotationEffect(.degrees(-00))
                   
     
                Text(isShaked)
                    .transition(.scale)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .position(x:200,y:370)
                    .bold()
                    .foregroundColor(.white)
             
                Button {
                    withAnimation(){
                        isShaked = messages.randomElement()!}
                    }
                label:{
                    Text("Shake Me")
                        .foregroundColor(.white)
                        .bold()
                        
                }.position(x:200, y:500)
            }
            
          
         
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
