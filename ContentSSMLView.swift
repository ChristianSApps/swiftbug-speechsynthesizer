//
//  ContentSSMLView.swift
//  SpeechSynthesizer
//
//  Created by Christian Schwind on 18/11/26.
//
//  12.10.2026
//  Based on a reply to my post in the Apple forum, I added 'width' and 'WIDTH'.
//
// https://www.w3.org/TR/2005/NOTE-ssml-sayas-20050526/#adef_interpret-as
//
//
// https://www.w3.org/TR/speech-synthesis11/
//
//

import SwiftUI
import AVFoundation
import Foundation

fileprivate let synthesizer: AVSpeechSynthesizer = AVSpeechSynthesizer()

struct ContentSSMLView: View {
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
                    utter("height")
                } label: {
                    Text("height")
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    utter("HEIGHT")
                } label: {
                    Text("HEIGHT")
                }
                .buttonStyle(.borderedProminent)
            }
            
            HStack {
                Button {
                    utter("world")
                } label: {
                    Text("world")
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    utter("WINTER")
                } label: {
                    Text("WINTER")
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
            
            HStack {
                Button {
                    utter("may")
                } label: {
                    Text("may")
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    utter("MAY")
                } label: {
                    Text("MAY")
                }
                .buttonStyle(.borderedProminent)
            }
            
            HStack {
                Button {
                    utter("_ö", lang: "de-DE")
                } label: {
                    Text("_ö")
                }
                .buttonStyle(.borderedProminent)
            }
            
        }
        .padding()
    }
    
    private func utter(_ text: String, lang: String = "en-US") {
        let ssml = """
        <speak>
                <say-as interpret-as="characters">\(text)</say-as>
            <break strength="weak"/>
            \(text)
                    <break strength="weak"/>
                <say-as interpret-as="characters" format="glyphs">\(text)</say-as>
                    <break strength="weak"/>
                        <say-as>\(text)</say-as>
        </speak>
        """
        
        if let utterance = AVSpeechUtterance(ssmlRepresentation: ssml) {
            utterance.voice = AVSpeechSynthesisVoice(language: lang)
            synthesizer.speak(utterance)
        }
        
    }
    
}

#Preview {
    ContentSSMLView()
}

