//
//  ContentView.swift
//  DungeonDice
//
//  Created by Jeremy Taylor on 1/7/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var resultMessage = ""
    
    
    var body: some View {
        VStack {
            titleView
            
            Spacer()
            
            resultMessageView
            
            Spacer()
            
            ButtonLayout(resultMessage: $resultMessage)
            
            
        }
        .padding()
        
        
    }
}

extension ContentView {
    private var titleView: some View {
        Text("Dungeon Dice")
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(.red)
    }
    
    private var resultMessageView: some View {
        Text(resultMessage)
            .font(.largeTitle)
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .frame(height: 150)
    }
    
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
