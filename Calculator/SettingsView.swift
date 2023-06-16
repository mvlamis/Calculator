//
//  SettingsView.swift
//  Calculator
//
//  Created by Michael Vlamis on 2023-06-15.
//

import Foundation
import SwiftUI



struct SettingsView: View {
    
    let iconsize : CGFloat = 85

    var body: some View {
        ScrollView {
            VStack() {
                Text("App Icon")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                
                ScrollView([.horizontal]) {
                    HStack(spacing:15) {
                        Image("Pink Preview")
                            .resizable()
                            .scaledToFit()
                            .frame(width: iconsize, height: iconsize)
                            .onTapGesture {
                                UIApplication.shared.setAlternateIconName("Pink Icon") { (error) in
                                    // FIXME: Handle error
                                }
                            }
                        Image("Green Preview")
                            .resizable()
                            .scaledToFit()
                            .frame(width: iconsize, height: iconsize)
                            .onTapGesture {
                                UIApplication.shared.setAlternateIconName("Green Icon") { (error) in
                                    // FIXME: Handle error
                                }
                            }
                        Image("Cotton Candy Preview")
                            .resizable()
                            .scaledToFit()
                            .frame(width: iconsize, height: iconsize)
                            .onTapGesture {
                                UIApplication.shared.setAlternateIconName("Cotton Candy Icon") { (error) in
                                    // FIXME: Handle error
                                }
                            }
                        Image("Light Grey Preview")
                            .resizable()
                            .scaledToFit()
                            .frame(width: iconsize, height: iconsize)
                            .onTapGesture {
                                UIApplication.shared.setAlternateIconName("Light Grey Icon") { (error) in
                                    // FIXME: Handle error
                                }
                            }
                        Image("Dark Grey Preview")
                            .resizable()
                            .scaledToFit()
                            .frame(width: iconsize, height: iconsize)
                            .onTapGesture {
                                UIApplication.shared.setAlternateIconName("Dark Grey Icon") { (error) in
                                    // FIXME: Handle error
                                }
                                
                            }
                        
                    }
                    .padding(.leading)
                }
                Text(
                """
By Michael Vlamis
Includes DDMathParser
"""
                )
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.top)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
