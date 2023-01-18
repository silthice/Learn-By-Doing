//
//  ContentView.swift
//  Learn By Doing
//
//  Created by Giap on 18/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    var cards: [Card] = cardData
    
    //MARK: - BODY
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { card in
                    CardView(card: card)
                } //: End of ForEach
            } //: End of HStack
            .padding(20)
        } //: End of ScrollView
        
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}
