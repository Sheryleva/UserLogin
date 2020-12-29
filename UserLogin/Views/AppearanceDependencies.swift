//
//  AppearanceDependencies.swift
//  UserLogin
//
//  Created by Jerry Ren on 11/12/20.
//

import UIKit

// MARK: - TXF
@IBDesignable class RTextfield: UITextField {
    @IBInspectable var cRadio: CGFloat = 2.22 {
        didSet {
            self.layer.cornerRadius = cRadio
        }}
    @IBInspectable var borColo: UIColor? {
        didSet {
            self.layer.borderColor = borColo?.cgColor
        }}
    
    @IBInspectable var borWii: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borWii
        }}
}

// MARK: - IMV
@IBDesignable class RImageView: UIImageView {
    @IBInspectable var cRadio: CGFloat = 5.55 {
        didSet {
            self.layer.cornerRadius = cRadio
    }}}

// MARK: - BTN
@IBDesignable class RButton: UIButton {
    @IBInspectable var cRadio: CGFloat = 3.33 {
        didSet {
            self.layer.cornerRadius = cRadio
    }}}
