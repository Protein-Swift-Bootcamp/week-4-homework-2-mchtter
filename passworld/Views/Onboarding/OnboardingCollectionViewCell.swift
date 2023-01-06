//
//  OnboardingCollectionViewCell.swift
//  passworld
//
//  Created by Mücahit Alperen Eryılmaz on 13.11.2022.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    @IBOutlet weak var titleOneLabel: UILabel!
    @IBOutlet weak var titleTwoLabel: UILabel!
    @IBOutlet weak var titleThreeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    
    func setup(_ slide: OnboardingSlide) {
        titleOneLabel.text = slide.titleOne
        titleTwoLabel.text = slide.titleTwo
        titleThreeLabel.text = slide.titleThree
        descriptionLabel.text = slide.description
    }
}
