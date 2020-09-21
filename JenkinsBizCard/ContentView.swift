//
//  ContentView.swift
//  JenkinsBizCard
//
//  Created by John Jenkins on 9/21/20.
//  Copyright © 2020 John Jenkins. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.17, green: 0.24, blue: 0.31)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("jenkins")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                )
                Text("John Jenkins")
                    //todo fix font issue
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Software Engineer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "713 703 7286", imageName: "phone.fill")
                InfoView(text: "john.jenkins@logicode.dev", imageName: "envelope.fill")

            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

