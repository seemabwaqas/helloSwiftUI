//
//  ContentView.swift
//  Hello SwiftUI
//
//  Created by Hafiza Seemab on 16/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    let list = Hike.all()
    
    @State var buttonText = 0
    @State var welcomeSwiftText = "Welcome to SwiftUI"
    @State var helloSwiftText = "Hello, SwiftUI"
    @State var tapMeText = "Tap Me!"
    @State var cherryImageName = "cherry"
    @State var lemonImageName = "lemon"
    
    var body: some View {
        
        
        ZStack {
            
            Color(.systemPink)
            
            VStack{
                ScrollView{
                
                //MARK: - List in SwiftUI
                List(self.list, id: \.name){hike in
                    Text(hike.name)
                }
                .font(.title)
                    
                    
                    
                //MARK: - Image in SwiftUI
                Image(cherryImageName)
                    .resizable()
                    .scaledToFit()
                
                    
                //MARK: - Text in SwiftUI
                Text(helloSwiftText)
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                
                    
                //MARK: - Button in SwiftUI
                Button(action: {
                    buttonText = buttonText + 1
                    helloSwiftText = welcomeSwiftText
                    tapMeText = "Tapped Times: "
                    cherryImageName = lemonImageName
                    
                }, label: {
                    VStack{
                        Text(tapMeText)
                        
                    }
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
                    .padding()
                    .background(Color.yellow)
                    .foregroundColor(.black)
                    .cornerRadius(12)
                    .font(.title)
                    .shadow(radius: 5)
                    
                })
                    
                //MARK: - Conditional Text in SwiftUI
                if(buttonText > 0){
                    Text("\(buttonText)")
                        .padding()
                        .background(Color.white)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    
                }
            }
        }
        .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
