//
//  OnboardingViewController.swift
//  Yummi App
//
//  Created by Fernando González on 24/06/22.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    
    var onboardingSlideBrain: OnboardingSlideBrain = OnboardingSlideBrain()
    
    var currentPage: Int = 0 {
        didSet {
            if currentPage == self.onboardingSlideBrain.getCount() - 1 {
                self.nextButton.setTitle("Get Started", for: .normal)
            } else {
                self.nextButton.setTitle("Next", for: .normal)
            }
            self.pageControl.currentPage = currentPage // updating the pageControl with new index
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Note: The next two lines are not neccesary if you have linked the delegate and dataSource through drag
        // collectionView.delegate = self
        // collectionView.dataSource = self
        
        self.pageControl.numberOfPages = self.onboardingSlideBrain.getCount()
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        if self.currentPage < self.onboardingSlideBrain.getCount() - 1 {
            self.currentPage += 1 // Increase one to currentPage
            let indexPath: IndexPath = IndexPath(item: self.currentPage, section: 0) // Creating a indexPath from currentPage
            self.collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true) // Sending the new index to the collectionView
        } else {
            let controller: UINavigationController = storyboard?.instantiateViewController(withIdentifier: K.HomePage.storyboardHomePageIdentifier) as! UINavigationController
            
            controller.modalPresentationStyle = .fullScreen // To present in full Screen
            controller.modalTransitionStyle = .flipHorizontal // Transition very cool
            
            present(controller, animated: true, completion: nil)
        }
    }
}

// MARK: - UICollectionViewDelegate
extension OnboardingViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

// MARK: - UICollectionViewDataSource
extension OnboardingViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.onboardingSlideBrain.getCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.Onboarding.collectionCellIdentifier, for: indexPath) as! OnboardingCollectionViewCell
        
        // Sending the object to setup method of OnboardingCollectionViewCell: UICollectionViewCell
        cell.setup(self.onboardingSlideBrain.getSlideObject(atIndex: indexPath.row))
        
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
// This method is for specified the size of the element into collection view
extension OnboardingViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    // When is the end of current slide (tap and draw just one time)
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        self.currentPage = Int(scrollView.contentOffset.x / width)
        
    }
}
