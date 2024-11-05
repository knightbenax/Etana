//
//  Home.swift
//  Etana
//
//  Created by Bezaleel Ashefor on 2024-11-05.
//

import AVFoundation
import SwiftUI
import PencilKit

struct Home: View {
    @State var majorText: String = "Understanding"
    let synthesizer = AVSpeechSynthesizer()
    let buttonSize : CGFloat = 52
    let menuSize : CGFloat = 40
    let delegate = UIApplication.shared.delegate as! AppDelegate
    private var canvasView = PKCanvasView()
    @State var isWriting = false
    let drawingAreaHeight : CGFloat = 80
    let drawingAreaWidth : CGFloat = 80
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        withAnimation{
                            isWriting.toggle()
                        }
                    }){
                        HStack{
                            Image(systemName: "pencil.and.outline")
                        }.frame(width: menuSize, height: menuSize)
                            .background(Color.black)
                            .clipShape(Circle())
                            .foregroundStyle(.white)
                    }
                }.padding()
                Spacer()
                HStack{
                    Spacer()
                    VStack(alignment: .center, spacing: 20){
                        Text("\(majorText)").font(.system(size: 80, weight: .bold))
                        if (isWriting){
                            ZStack{
                                MyCanvas(canvasView: canvasView)
                                LazyHStack(spacing: 0){
                                    ForEach(Array(majorText.enumerated()), id: \.offset){ character in
                                        HStack{
                                            
                                        }
                                        .frame(width: drawingAreaWidth)
                                        .frame(maxHeight: .infinity)
                                        .border(Color.black, width: 1)
                                    }
                                }
                            }.frame(height: drawingAreaHeight)
                        }
                    }
                    Spacer()
                }.offset(y: -40)
                Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center).background(Color.secondaryBG).clipShape(RoundedRectangle(cornerRadius: 30)).padding(.horizontal, 40).padding(.vertical, 20)
            HStack{
                Button(action: {
                    speakLetters()
                }){
                    HStack{
                        Image(systemName: "speaker.wave.2.fill")
                    }.background(Color.black)
                        .frame(width: buttonSize, height: buttonSize)
                        .background(Color.black)
                        .clipShape(Circle())
                        .foregroundStyle(.white)
                }
                Spacer()
                Button(action: {
                    spinTheBlock()
                }){
                    HStack{
                        Image(systemName: "arrow.trianglehead.counterclockwise")
                    }.frame(width: buttonSize, height: buttonSize)
                        .background(Color.black)
                        .clipShape(Circle())
                        .foregroundStyle(.white)
                }
            }
            .padding(.bottom, 4).padding(.horizontal, 24)
        }.background(Color.BG).onAppear(perform: {
            spinTheBlock()
        })
    }
    
    func spinTheBlock(){
        majorText = delegate.getRandomWord().capitalized
    }
    
    func speakLetters(){
        let utterance = AVSpeechUtterance(string: majorText)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.5
        synthesizer.speak(utterance)
    }
}

#Preview {
    Home()
}

class HomeHostingController: UIHostingController<Home> {
    
    @objc required dynamic init?(coder: NSCoder) {
        super.init(coder: coder, rootView: Home())
    }
    
}

