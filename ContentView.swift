//
//  ContentView.swift
//  statusAndBinding
//
//  Created by nasir on 16/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isDarkmode = false
    @State private var showDetailScreen: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color( isDarkmode ? Color.black : Color.white)
                VStack {
                    
                    Toggle(isOn: $isDarkmode, label:{
                        if isDarkmode == false {
                            Text("On Dark Mode")
                        }else{
                            Text("Off Dark Mode")
                                .foregroundColor(.white)
                        }
                    }
                    )
                    Button ("Show Detail Screen"){
                        showDetailScreen = true
                    }
                }
                .padding()
                

                  
            }
            .ignoresSafeArea()
            .sheet(isPresented: $showDetailScreen, content: {
                BindingView(
                    isActive: $showDetailScreen
            
                )
            })
            
            .toolbar{
                NavigationLink {
                    EmptyView()
                } label: {
                    Image(systemName: "moon")
                }
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}
