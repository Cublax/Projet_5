//
//  ViewController.swift
//  CountOnMe
//
//  Created by Alexandre Quiblier on 23/04/2019.
//  Copyright © 2019 Ambroise Collon. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet private var buttonZero: UIView!
    @IBOutlet private var buttonOne: UIView!
    @IBOutlet private var buttonTwo: UIView!
    @IBOutlet private var buttonThree: UIView!
    @IBOutlet private var buttonFour: UIView!
    @IBOutlet private var buttonFive: UIView!
    @IBOutlet private var buttonSix: UIView!
    @IBOutlet private var buttonSeven: UIView!
    @IBOutlet private var buttonHeight: UIView!
    @IBOutlet private var buttonNine: UIView!
    
    @IBOutlet private var buttonPlus: UIView!
    @IBOutlet private var buttonMinus: UIView!
    @IBOutlet private var buttonTime: UIView!
    @IBOutlet private var buttonEqual: UIView!
    
    
    // MARK: - Private Properties
    
    private var viewModel: ViewModel!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind(to: viewModel)
        viewModel.viewDidLoad()
    }
    
    private func bind(to viewModel: ViewModel) {
        
        viewModel.displayText = { [weak self] text in
            //Ajouter le texte
        }
        
        //navigate to screen
        
    }
    
    
    // MARK: - Actions
    
    @IBAction func pressedNumber(_ sender: UIButton) {
        viewModel.didPressOperand(at: sender.tag)
    }
    
    @IBAction func pressedOperator(_ sender: UIButton) {
        viewModel.didPressOperator(at: sender.tag)
    }
    
    // MARK: - Display alerts
    
}
