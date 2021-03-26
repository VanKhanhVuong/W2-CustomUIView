//
//  MyCustomView.swift
//  W2-CustomUIView
//
//  Created by Văn Khánh Vương on 26/03/2021.
//

import UIKit

class MyCustomView: UIView {
    
    @IBOutlet var containerView: UIView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureview()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureview()
    }
    
    private func configureview() {
        Bundle.main.loadNibNamed("MyCustomView", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    func configureview(title: String,subtitle: String) {
        self.titleLabel.text = title
        self.subtitleLabel.text = subtitle
    }
}

