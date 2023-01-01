//
//  ViewController.swift
//  passworld
//
//  Created by Mücahit Alperen Eryılmaz on 11.11.2022.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    
    var slides: [OnboardingSlide] = []
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextButton.setTitle("Get Started", for: .normal)
            } else {
                nextButton.setTitle("Next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [
        OnboardingSlide(titleOne: "GENERATE", titleTwo: "SECURE", titleThree: "PASSWORDS", description: "Stop using unsecure passwords for your online accounts, level up with Passworld. Get the most secure and difficult-to-crack passwords."),
        OnboardingSlide(titleOne: "ALL YOUR", titleTwo: "PASSWORDS", titleThree: "ARE HERE", description: "Store and manage all of your passwords from one place. Don’t remember hundreds of passwords, just remember one."),
        OnboardingSlide(titleOne: "DON'T TYPE,", titleTwo: "AUTOFILL YOUR", titleThree: "CREDENTIALS", description: "Don’t compromise your passwords by typing them in public, let Passworld autofill those and keep your credentials secure.")
        ]
        
        
    }

    @IBAction func nextButtonClicked(_ sender: Any) {
        if currentPage == slides.count - 1 {
            let controller = storyboard?.instantiateViewController(withIdentifier: "HomeNC") as! UITabBarController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            present(controller, animated: true)
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
}
