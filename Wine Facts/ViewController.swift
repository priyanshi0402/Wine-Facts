//
//  ViewController.swift
//  Wine Facts
//
//  Created by SARVADHI on 11/05/23.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var bottomView: UIView!
    
    var facts: [Facts] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            let alert = UIAlertController(title: "Winopedia", message: "Hi! Here you will get your facts\njust need to swipe up and down to get new quotes.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Get it", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)

        })
        
        self.bottomView.roundCorners(radius: 15, corners: [.topLeft, .topRight])
//        self.collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        self.facts = FactsHelper.getFacts().shuffled()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func reportAction(_ sender: Any) {
        
        let indexPath = self.collectionView.getCurrentIndex()
        let alert = UIAlertController(title: "Winopedia", message: "Are you sure you want to report this fact?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes, I want", style: .default, handler: { action in
            self.facts.remove(at: indexPath.row)
            self.collectionView.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "Nope", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func shareAction(_ sender: Any) {
        let indexPath = self.collectionView.getCurrentIndex()
        if let cell = self.collectionView.cellForItem(at: indexPath) as? CollectionViewCell {
            let text = cell.lblFact.text ?? ""
            print(text)
            // set up activity view controller
            let textToShare = [ text ]
            let activityViewController = UIActivityViewController(activityItems: textToShare as [Any], applicationActivities: nil)
            activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash

            // exclude some activity types from the list (optional)
            activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]

            // present the view controller
            self.present(activityViewController, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func saveImageAction(_ sender: Any) {
        let indexPath = self.collectionView.getCurrentIndex()
        if let cell = self.collectionView.cellForItem(at: indexPath) as? CollectionViewCell {
            let text = cell.asImage()
            // set up activity view controller
            let textToShare = [ text ]
            let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
            activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash

            // exclude some activity types from the list (optional)
            activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]

            // present the view controller
            self.present(activityViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func soundAction(_ sender: Any) {
        
        let indexPath = self.collectionView.getCurrentIndex()
        if let cell = self.collectionView.cellForItem(at: indexPath) as? CollectionViewCell {
            let indexPath = self.collectionView.getCurrentIndex()
            let string = cell.lblFact.text ?? ""
            print(string)
            let utterance = AVSpeechUtterance(string: string)
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")

            let synth = AVSpeechSynthesizer()
            synth.speak(utterance)
        }
        
    }
    
    @IBAction func copyTextAction(_ sender: Any) {
        let indexPath = self.collectionView.getCurrentIndex()
        if let cell = self.collectionView.cellForItem(at: indexPath) as? CollectionViewCell {
            let string = cell.lblFact.text ?? ""
            print(string)
            UIPasteboard.general.string = string

            let alert = UIAlertController(title: "", message: "Fact is copied.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }

        
    }
}


extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10000
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        let fact = self.facts.randomElement() ?? Facts(id: 1, resultDescription: "The term \"orange wine\" refers to wine made from white grapes that have been fermented with their skins.")
        cell.lblFact.text = "\"\(fact.resultDescription)\""
        cell.btnInfo.addTarget(self, action: #selector(self.infoAction), for: .touchUpInside)
        return cell
    }
    
    @objc func infoAction() {
        let alert = UIAlertController(title: "Welcome to Winopedia", message: "Hello User, \n Discover intriguing wine facts with our \"Winopedia\" app which tells you fact about wine. Explore the rich history, grape varieties, and unique characteristics of wines worldwide. Join our community of wine enthusiasts and expand your vinicultural knowledge today! ", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Understood", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}

extension UICollectionView {
    func getCurrentIndex() -> IndexPath {
        let visibleRect = CGRect(origin: self.contentOffset, size: self.bounds.size)
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        guard let visibleIndexPath = self.indexPathForItem(at: visiblePoint) else { return IndexPath(row: 0, section: 0) }
        return visibleIndexPath
    }
}
