//
//  ResultDisplay.swift
//  FruitHealth
//
//  Created by 陈武怿 on 2022/5/18.
//

import SwiftUI

struct ResultDisplay: View {
    var body: some View {
            VStack(alignment: .leading, spacing: 0){
                Text("识别结果")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundColor(Color(hue: 0.344, saturation: 0.97, brightness: 0.589))
                    .padding()
                VStack(alignment: .center, spacing: 20){
                    ZStack{
                        Rectangle()
                            .frame(width: 250, height: 250)
                            .cornerRadius(25)
                            .shadow(radius: 8)
                            .padding()
                        Image("apple")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(25)
                            .padding()
                    }
                    
                    Divider()
                    VStack(alignment: .leading, spacing: 10){
                        Text("苹果")
                            .font(.title)
                            .bold()
                            .foregroundColor(Color(hue: 0.344, saturation: 0.97, brightness: 0.589))
                        Text("苹果，又称柰或林檎，是苹果树的果实，一般呈红色，但需视品种而定，富含矿物质和维生素，是人们最常食用的水果之一。")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                   
                    Text("52.1 千卡 / 100 克")
                        .font(.title2)
                        .bold()
                    }
                        
                    Spacer()
                    NavigationLink(destination: ContentView()){
                        Button(action: {
                            // 此处放置你希望按钮做什么
                        }, label: {
                            Image(systemName: "house.fill")
                            Text("返回主页")
                        })
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(15)
                            .shadow(color: Color.green, radius: 3)
                    }
                    
                }
                .padding()
                
            }
           
        
        
        
    }
}

struct ResultDisplay_Previews: PreviewProvider {
    static var previews: some View {
        ResultDisplay()
    }
}
