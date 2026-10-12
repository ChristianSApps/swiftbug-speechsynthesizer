//
//  ContentView.swift
//  SpeechSynthesizer
//
//  Created by Christian Schwind on 13/1/26.
//
//  12.10.2026
//  Based on a reply to my post in the Apple forum, I added 'width' and 'WIDTH'.
//

import SwiftUI
import AVFoundation
import Foundation

let synthesizer: AVSpeechSynthesizer = AVSpeechSynthesizer()

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    utter("mon")
                } label: {
                    Text("mon")
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    utter("tue")
                } label: {
                    Text("tue")
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    utter("thu")
                } label: {
                    Text("thu")
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    utter("wed")
                } label: {
                    Text("wed")
                }
                .buttonStyle(.borderedProminent)
                
            }
            
            HStack {
                Button {
                    utter("feb")
                } label: {
                    Text("feb")
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    utter("feb", lang: "de-DE")
                } label: {
                    Text("feb DE")
                }
                .buttonStyle(.borderedProminent)
            }
            
            HStack {
                Button {
                    utter("width")
                } label: {
                    Text("width")
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    utter("WIDTH")
                } label: {
                    Text("WIDTH")
                }
                .buttonStyle(.borderedProminent)
            }
            
            HStack {
                Button {
                    utter("monday")
                } label: {
                    Text("monday")
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    utter("MONDAY")
                } label: {
                    Text("MONDAY")
                }
                .buttonStyle(.borderedProminent)
            }
            
        }
        .padding()
    }
    
    private func utter(_ text: String, lang: String = "en-US") {
        let utterance = AVSpeechUtterance(string: text)
        let voice = AVSpeechSynthesisVoice(language: lang)
        
        utterance.voice = voice
        synthesizer.speak(utterance)
    }
    
}

#Preview {
    ContentView()
}

