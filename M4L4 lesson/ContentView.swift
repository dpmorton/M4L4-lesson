//
//  ContentView.swift
//  M4L4 lesson
//
//  Created by dpm on 11/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            
                VStack{
                    GeometryReader { geo in
                        Rectangle()
                            .frame(width: geo.size.width/4, height: geo.size.height/8, alignment: .center)
                            .onTapGesture {
                                print("global x: \(geo.frame(in:.global).minX), y: \(geo.frame(in: .global).minY)")
                                
                                print("local x: \(geo.frame(in:.local).minX), y: \(geo.frame(in: .local).minY)")
                            }
                    }
                    GeometryReader { geo in
                        Rectangle()
                            .foregroundColor(.green)
                            .frame(width: geo.size.width/4, height: geo.size.height/8, alignment: .center)
                            .onTapGesture {
                                print("global x: \(geo.frame(in:.global).minX), y: \(geo.frame(in: .global).minY)")
                                
                                print("local x: \(geo.frame(in:.local).minX), y: \(geo.frame(in: .local).minY)")
                            }
                    }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
