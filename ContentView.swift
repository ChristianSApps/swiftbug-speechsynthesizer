//
//  ContentView.swift
//  SpeechSynthesizer
//
//  Created by Christian Schwind on 13/1/26.
//

import SwiftUI
import AVFoundation
import Foundation
 
let synthesizer: AVSpeechSynthesizer = AVSpeechSynthesizer()
 
struct ContentView: View {
    var body: some View {
        VStack {
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
            
            Button {
                utter("wed")
            } label: {
                Text("wed")
            }
            .buttonStyle(.borderedProminent)
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

