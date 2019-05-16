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
    
    @IBOutlet private weak var textView: UITextView!
    
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
    
    private lazy var viewModel = ViewModel()
    
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind(to: viewModel)
        viewModel.viewDidLoad()
    }
    
    private func bind(to viewModel: ViewModel) {
        
        viewModel.displayedText = { [weak self] text in
            self?.textView.text = text
        }
        
        viewModel.alert = { [weak self] alert in
            guard let self = self else { return }
            switch alert {
            case .error(title: let title, message: let message, actionTitle: let actionTitle):
                self.displayAlert(with: title, message: message, actionTitle: actionTitle)
            }
        }
    }
    
    // MARK: - Actions
    
    @IBAction func pressedNumber(_ sender: UIButton) {
        viewModel.didPressOperand(at: sender.tag)
    }
    
    @IBAction func pressedOperator(_ sender: UIButton) {
        viewModel.didPressOperator(at: sender.tag)
    }
    
    @IBAction func pressedClear(_ sender: UIButton) {
        viewModel.didPressButtonClear()
    }
    // MARK: - Display alerts
    
    private func displayAlert(with title: String, message: String, actionTitle: String) {
        let alertController = UIAlertController()
        alertController.title = title
        alertController.message = message
        let action = UIAlertAction(title: actionTitle, style: .cancel, handler: nil)
        alertController.addAction(action)
        self.show(alertController, sender: nil)
    }
}
