//
//  CardView.swift
//  Learn By Doing
//
//  Created by Giap on 18/01/2023.
//

import SwiftUI

struct CardView: View {
    
    //MARK: - PROPERTIES
    var card: Card
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Image(card.imageName)
            
            VStack {
                Text(card.title)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .italic()
            } //: End of VStack
            .offset(y: -218)
            
            Button(action: {
                playSound(sound: "sound-chime", type: "mp3")
            }, label: {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .accentColor(.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(.title)
                        .fontWeight(.medium)
                        .accentColor(.white)
                } //: End of HSTack
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            })
            .offset(y: 210)
            
        } //: End of ZStack
        .frame(width: 335, height: 535)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(15)
        .shadow(radius: 8)
    }
}

//MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[0])
            .previewLayout(.sizeThatFits)
    }
}
