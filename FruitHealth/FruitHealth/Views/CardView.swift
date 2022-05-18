//
//  CardView.swift
//  FruitHealth
//
//  Created by 陈武怿 on 2022/5/16.
//

import SwiftUI

struct CardView: View {
    
    var fruitInfo: FruitInfo
    
    var body: some View {
        HStack{
            ZStack{
                Circle()
                    .frame(width: 80.0, height: 80.0)
                fruitInfo.listImage
                    .resizable()
                    .frame(width: 80, height: 80)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(40)
                    .shadow(radius: 5)
                    .padding()
                
            }
            .frame(width: 100, height: 100)
            
           
            VStack(alignment: .leading){
                Label("为你推荐",systemImage: "heart.text.square")
                Text(fruitInfo.title)
                    .font(.title)
                    .bold()
                Text(fruitInfo.intro)
                    .font(.footnote)
                    .foregroundColor(Color.gray)
                Text("\(fruitInfo.heat) 千卡 / 100 克")
                    .font(.title2)
            }
            .padding([.top, .bottom, .trailing])
            
        }
        .frame(width: 330, height: 160, alignment: .center)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding(.vertical, 10)
        .padding(.horizontal,10)
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruitInfo: fruitInfos[0])
    }
}
