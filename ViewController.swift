//
//  ViewController.swift
//  accessibilityIds
//
//  Created by William Miller on 10/26/19.
//  Copyright © 2019 William Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //outlets
    
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var hSliderBar: UISlider!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        /*
         In the viewDidLoad function of the UIViewController class, write a function
         that traverses the hiearchy of views. The output should be sent to the
         debug console with a print statement, and it should look as follows:
         
         View type is UIView at level 0
         View type is UIImageView at level 1
         View type is UIStackView at level 1
         View type is UILabel at level 2
         View type is UISlider at level 2
         View type is UITextView at level 2
         View type is UIImageView at level 3
         View type is UIImageView at level 3
         View type is _UITextContainerView at level 3
         View type is UITextSelectionView at level 4
         View type is UISwitch at level 2
         View type is UISwitchModernVisualElement at level 3
         View type is UIImageView at level 4
         View type is UIView at level 4
         View type is UIImageView at level 5
         View type is UIImageView at level 5
         View type is UIView at level 4
         View type is UIView at level 5
         View type is UIView at level 4
         View type is UIView at level 5
         View type is UITextField at level 2
         View type is _UITextFieldContentView at level 3
         View type is _UITextFieldRoundedRectBackgroundViewNeue at level 3
         View type is UIButton at level 2
         
         */
        
        // Call the function to print the view hierarchy
        printViewLevels(view: view, level: 0)
    }

    // Recursive function to print the view hierarchy
    func printViewLevels(view: UIView, level: Int) {
        // Print the current view type and level
        print("View type is \(String(describing: type(of: view))) at level \(level)")

        // Recursively print the subviews
        for subview in view.subviews.reversed() {
            printViewLevels(view: subview, level: level + 1)
        }
    }

}




