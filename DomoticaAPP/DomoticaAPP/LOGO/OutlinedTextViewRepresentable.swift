//
//  OutlinedTextViewRepresentable.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 03/07/24.
//
import SwiftUI

struct OutlinedTextViewRepresentable: UIViewRepresentable {
    
    var text: String
    var textColor: UIColor
    var outlineColor: UIColor
    var font: UIFont
    var outlineWidth: CGFloat
    
    func makeUIView(context: Context) -> linedTextView {
        return linedTextView(
            frame: .zero,
            text: text,
            textColor: textColor,
            outlineColor: outlineColor,
            font: font,
            outlineWidth: outlineWidth
        )
    }
    
    func updateUIView(_ uiView: linedTextView, context: Context) {
        uiView.text = text
        uiView.textColor = textColor
        uiView.outlineColor = outlineColor
        uiView.font = font
        uiView.outlineWidth = outlineWidth
        uiView.setNeedsDisplay()
    }
}

