//
//  ContentView.swift
//  Calculator
//
//  Created by Michael Vlamis on 2023-06-07.
//

import Foundation
import SwiftUI
import MathParser

struct ContentView: View {
    @State private var expression = ""
    @State private var result = ""
    @State private var buttonSize: CGFloat = 90
    @State private var buttonTextSize: CGFloat = 45
    
    @State var showView = false
    @State var show = false
    @GestureState var press = false
    var body: some View {
        NavigationView(content: {
            VStack {
            
                HStack {
                    NavigationLink(destination: Text("hi")) {
                        Image(systemName:"cube.box.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gearshape")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }

                VStack {
                    HStack {
                        TextField("Enter an expression", text: $expression)
                            .font(.title)
                            .textFieldStyle(.roundedBorder)
                        Button(action: {}) {
                            Image(systemName:"delete.backward")
                                .onTapGesture {
                                    expression.remove(at: expression.index(before: expression.endIndex))
                                    result = ""
                                }
                                .onLongPressGesture(minimumDuration: 0.1) {
                                    expression = ""
                                    result = ""
                                }
                        }
                            .frame(width:50, height:50)
                            .foregroundStyle(.white)
                            .background(show ? .black : .red)
                            .mask(Circle())
 
                    }
                    .padding([.top], 40)
                    Spacer()
                    
                    Text(result)
                        .font(.title)
                }

                    
                HStack {
                    Button(action: {
                        expression.append("+")
                    }) {
                        Text("+")
                            .font(.title)
                            .padding()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(Circle())
                    }
                    Button(action: {
                        expression.append("-")
                    }) {
                        Text("–")
                            .font(.title)
                            .padding()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(Circle())
                    }
                    Button(action: {
                        expression.append("×")
                    }) {
                        Text("✕")
                            .font(.title)
                            .padding()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(Circle())
                    }
                    Button(action: {
                        expression.append("÷")
                    }) {
                        Text("÷")
                            .font(.title)
                            .padding()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(Circle())
                    }
                }
                Grid {
                    GridRow {
                        Button(action: {
                            let character = "7"
                            expression.append(character)
                        }) {
                            Text("7")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                        Button(action: {
                            let character = "8"
                            expression.append(character)
                        }) {
                            Text("8")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                        Button(action: {
                            let character = "9"
                            expression.append(character)
                        }) {
                            Text("9")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                    }
                    GridRow {
                        Button(action: {
                            let character = "4"
                            expression.append(character)
                        }) {
                            Text("4")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                        Button(action: {
                            let character = "5"
                            expression.append(character)
                        }) {
                            Text("5")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                        Button(action: {
                            let character = "6"
                            expression.append(character)
                        }) {
                            Text("6")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                    }
                    GridRow {
                        Button(action: {
                            let character = "1"
                            expression.append(character)
                        }) {
                            Text("1")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                        Button(action: {
                            let character = "2"
                            expression.append(character)
                        }) {
                            Text("2")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                        Button(action: {
                            let character = "3"
                            expression.append(character)
                        }) {
                            Text("3")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                    }
                    GridRow {
                        Button(action: {
                            let character = "0"
                            expression.append(character)
                        }) {
                            Text("0")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                            
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                        Button(action: {
                            let character = "."
                            expression.append(character)
                        }) {
                            Text(".")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                            
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                        Button(action: {
    //                        result = String(calculateExpression(expression)!)
                            result = parserCalc(expression)
                        }) {
                            Text("=")
                                .font(.system(size: buttonTextSize))
                                .padding()
                                .frame(width: buttonSize, height: buttonSize)
                            
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(Circle())
                        }
                        
                    }
                    
                    ScrollView([.horizontal]) {
                        HStack {
                            Button(action: {
                                expression.append("(")
                            }) {
                                Text("(")
                                    .font(.title)
                                    .padding()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.white)
                                    .background(.orange)
                                    .clipShape(Circle())
                            }
                            Button(action: {
                                expression.append(")")
                            }) {
                                Text(")")
                                    .font(.title)
                                    .padding()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.white)
                                    .background(.orange)
                                    .clipShape(Circle())
                            }
                            Button(action: {
                                expression.append("**")
                            }) {
                                Text("^")
                                    .font(.title)
                                    .padding()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.white)
                                    .background(.orange)
                                    .clipShape(Circle())
                            }
                            Button(action: {
                                expression.append("√")
                            }) {
                                Text("√")
                                    .font(.title)
                                    .padding()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.white)
                                    .background(.orange)
                                    .clipShape(Circle())
                            }
                            Button(action: {
                                expression.append("∛")
                            }) {
                                Text("∛")
                                    .font(.title)
                                    .padding()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.white)
                                    .background(.orange)
                                    .clipShape(Circle())
                            }
                            Button(action: {
                                expression.append("!")
                            }) {
                                Text("!")
                                    .font(.title)
                                    .padding()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.white)
                                    .background(.orange)
                                    .clipShape(Circle())
                            }
                            Button(action: {
                                expression.append("%")
                            }) {
                                Text("%")
                                    .font(.title)
                                    .padding()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.white)
                                    .background(.orange)
                                    .clipShape(Circle())
                            }
                            
                        }
                        
                    }
                }
            }
            .padding()
        })
    }
    

    func parserCalc(_ expression: String) -> String {
        do {
            var value = try expression.evaluate()
            
            if String(value).hasSuffix(".0") { // if value ends in .0
                return String(format: "%.0f", value)
            } else {
                return String(value)
            }
            
            
        } catch {
            return("Unable to calculate this expression.")
        }

    }
    
}

struct SettingsView: View {
    var body: some View {
        Text("hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        SettingsView()
    }
}


