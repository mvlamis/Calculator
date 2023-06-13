//
//  ContentView.swift
//  Calculator
//
//  Created by Michael Vlamis on 2023-06-07.
//

import SwiftUI
import MathParser

struct ContentView: View {
    @State private var expression = ""
    @State private var result = ""
    @State private var buttonSize: CGFloat = 90
    @State private var buttonTextSize: CGFloat = 45
    
    @State var show = false
    @GestureState var press = false
    var body: some View {
        VStack {
            HStack {
                TextField("Enter an expression", text: $expression)
                    .font(.title)
                    .padding()
                Button(action: {
                    expression = ""
                    result = ""
                }) {Image(systemName:"delete.backward")}
                    .frame(width:50, height:50)
                    .foregroundColor(.white)
                    .background(show ? .black : .red)
                    .mask(Circle())
                
                
            }
            
            Text(result)
                .font(.title)
            
            HStack {
                Button(action: {
                    expression.append("+")
                }) {
                    Text("+")
                        .font(.title)
                        .padding()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
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
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(Circle())
                }
                Button(action: {
                    expression.append("*")
                }) {
                    Text("✕")
                        .font(.title)
                        .padding()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(Circle())
                }
                Button(action: {
                    expression.append("/")
                }) {
                    Text("÷")
                        .font(.title)
                        .padding()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
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
                                .foregroundColor(.white)
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
                                .foregroundColor(.white)
                                .background(.orange)
                                .clipShape(Circle())
                        }
                    }
                    
                }
            }
        }
        
        .padding()
    }
    
    func calculateExpression(_ expression: String) -> String? {
        print(NSExpression(format: "(1)*(2)").expressionValue(with: nil, context: nil) as? Float ?? 0)
        
        if expression.first == "+" || expression.first == "-" || expression.first == "/" || expression.first == "*" {
            return "Expression cannot begin with an operator."
        } else if expression.last == "+" || expression.last == "-" || expression.last == "/" || expression.last == "*" || expression.last == "." {
            return "Expression cannot end with an operator or decimal."
        } else {
            
            let expressionWithoutSpaces = expression.replacingOccurrences(of: " ", with: "")
            
            let mathExpression = NSExpression(format: expressionWithoutSpaces)
            
            guard let result = mathExpression.expressionValue(with: nil, context: nil) as? Double else {
                return nil
            }
            return String(result)
            
        }
    }
    func parserCalc(_ expression: String) -> String {
        do {
            let value = try expression.evaluate()
            return String(value)
        } catch {
            return("oops")
        }

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


