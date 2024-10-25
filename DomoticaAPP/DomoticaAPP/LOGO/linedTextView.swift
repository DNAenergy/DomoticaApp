//
//  OutlinedTextView.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 03/07/24.
//
import UIKit

class linedTextView: UIView {
    
    var text: String = ""
    var textColor: UIColor = .black
    var outlineColor: UIColor = .white
    var font: UIFont = UIFont.systemFont(ofSize: 20)
    var outlineWidth: CGFloat = 2.0
    
    init(frame: CGRect, text: String, textColor: UIColor, outlineColor: UIColor, font: UIFont, outlineWidth: CGFloat) {
        self.text = text
        self.textColor = textColor
        self.outlineColor = outlineColor
        self.font = font
        self.outlineWidth = outlineWidth
        super.init(frame: frame)
        self.backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: textColor
        ]
        
        let outlineAttributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .strokeColor: outlineColor,
            .strokeWidth: -outlineWidth // Negative to draw outside
        ]
        
        let attributedString = NSAttributedString(string: text, attributes: attributes)
        let outlineAttributedString = NSAttributedString(string: text, attributes: outlineAttributes)
        
        // Draw the outline
        context.saveGState()
        context.translateBy(x: rect.width / 2, y: rect.height / 2)
        context.translateBy(x: -attributedString.size().width / 2, y: -attributedString.size().height / 2)
        outlineAttributedString.draw(at: .zero)
        context.restoreGState()
        
        // Draw the text on top of the outline
        context.saveGState()
        context.translateBy(x: rect.width / 2, y: rect.height / 2)
        context.translateBy(x: -attributedString.size().width / 2, y: -attributedString.size().height / 2)
        attributedString.draw(at: .zero)
        context.restoreGState()
    }
}

