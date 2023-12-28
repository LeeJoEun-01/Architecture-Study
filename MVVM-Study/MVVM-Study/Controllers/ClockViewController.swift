//
//  ClockViewController.swift
//  MVVM-Study
//
//  Created by 이조은 on 12/28/23.
//

import UIKit

import SnapKit

final class ClockViewController: UIViewController {
    let clockView: UIView = ClockView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
    }

    func setUI() {
        self.view.backgroundColor = .white
        
        setHierarchy()
        setConstraints()
    }

    func setHierarchy() {
        self.view.addSubview(clockView)
    }

    func setConstraints() {
        clockView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

