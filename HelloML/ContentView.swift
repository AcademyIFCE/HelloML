//
//  ContentView.swift
//  HelloML
//
//  Created by Gabriela Bezerra on 11/06/24.
//

import SwiftUI
import UIKit

struct ContentView: View {

    let image: UIImage = UIImage(named: "mensagem")!

    @State var text: String = "Texto reconhecido aqui"

    @State var sentiment: String = "Resultado da análise de sentimento"

    var body: some View {
        List {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(text)
            Text(sentiment)
        }
        .onAppear {
            let imageData = image.jpegData(compressionQuality: 0.5)
            // código de ML aqui
            // VNRecognizeTextRequest https://developer.apple.com/documentation/vision/vnrecognizetextrequest
            // Sentiment Analysis https://developer.apple.com/documentation/naturallanguage/nltagscheme/3113856-sentimentscore
        }
    }
}

#Preview {
    ContentView()
}
