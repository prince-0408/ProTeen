//
//  WelcomeView.swift
//  ProTeen
//
//  Created by Prince Yadav on 24/09/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        ZStack {
            
                Image("ProTeen")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            HStack {
                Text("ProTeen")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 50)
                    .frame(maxHeight: .infinity, alignment: .top)
                    
            }
        VStack {
                
                Text("Welcome\nto our store")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top)
                    .multilineTextAlignment(.center)
                    
                
                Text("Get your favourite Smoothie and Juice here")
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                 // Push content to top
            Button(action: {
                                print("tapped!")
                            }, label: {
                                Text("Continue")
                                    .foregroundColor(.white)
                                    .frame(width: 340, height: 50)
                                    .background(Color.green)
                                    .background(.green)
                                    .cornerRadius(10)
                                    .padding(.all)
                            })
            .shadow(color: .green, radius: 15, y: 5)

            HStack{
                Text("Have an account?")
                    .font(.system(size: 20, weight: .medium))
                    .padding(.bottom)
            }
            .frame(alignment: .bottom)
            .padding(.bottom, 20)
            }
        .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}



struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
