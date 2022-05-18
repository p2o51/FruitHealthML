//
//  ContentView.swift
//  FruitHealth
//
//  Created by 陈武怿 on 2022/5/15.
//

import SwiftUI


struct ContentView: View {
    
    @State var showImagePicker: Bool = false
    @State var image: Image? = nil
    @State var isImagePicked: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                HStack(alignment:.center,spacing: 40){
                    VStack(alignment: .leading, spacing: 5){
                        Text("早上好。")
                            .font(.system(size: 48, weight: .bold, design: .rounded))
                            .foregroundColor(Color(hue: 0.344, saturation: 0.97, brightness: 0.589))
                         
                        Label("多吃水果有利于健康。", systemImage: "bubble.left")
                            .foregroundColor(.gray)
                    }
                    Image(systemName: "sun.max")
                        .padding()
                        .font(.system(size: 48, weight: .bold, design: .rounded))
                        .foregroundColor(Color(hue: 0.344, saturation: 0.97, brightness: 0.589))
            }
        }
            ScrollView(.vertical, showsIndicators: false){
                CardView(fruitInfo: fruitInfos[0])
                CardView(fruitInfo: fruitInfos[1])
                CardView(fruitInfo: fruitInfos[2])
                CardView(fruitInfo: fruitInfos[3])
            }
            
            
            
            HStack(alignment: .center, spacing: 40){
                Button(action: {
                    // 此处放置你希望按钮做什么
                }, label: {
                    Image(systemName: "camera.viewfinder")
                    Text("拍照识别")
                        .bold()
                })
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(15)
                    .shadow(color: Color.green, radius: 3)
                
                Button(action: {
                    self.showImagePicker.toggle()
                }, label: {
                    Image(systemName: "photo")
                    Text("选择图片")
                        .bold()
                })
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(15)
                    .shadow(color: Color.green, radius: 3)
                
            }
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePickerView(sourceType: .photoLibrary) { image in
                self.image = Image(uiImage: image)
                self.isImagePicked = true
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
.previewInterfaceOrientation(.portrait)
    }
}

