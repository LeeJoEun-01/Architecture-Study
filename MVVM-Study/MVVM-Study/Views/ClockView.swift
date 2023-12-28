//
//  ClockView.swift
//  MVVM-Study
//
//  Created by 이조은 on 12/28/23.
//

import UIKit
import SnapKit

final class ClockView: UIView {

    private let ClosureLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 28)
        label.text = "Closure"
        label.textColor = .black

        return label
    }()

    private lazy var ClosureTime: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.text = "Time"
        label.textColor = .black

        return label
    }()

    private let ObservableLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 28)
        label.text = "Observable"
        label.textColor = .black

        return label
    }()

    private lazy var ObservableTime: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.text = "Time"
        label.textColor = .black

        return label
    }()

    private let RxSwiftLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 28)
        label.text = "RxSwift"
        label.textColor = .black

        return label
    }()

    private lazy var RxSwiftTime: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.text = "Time"
        label.textColor = .black

        return label
    }()

    private let CombineLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 28)
        label.text = "Combine"
        label.textColor = .black

        return label
    }()

    private lazy var CombineTime: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.text = "Time"
        label.textColor = .black

        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUI() {
        setHierarchy()
        setConstraints()
    }

    func setHierarchy() {
        self.addSubviews(ClosureLabel, ClosureTime, ObservableLabel, ObservableTime, RxSwiftLabel, RxSwiftTime, CombineLabel, CombineTime)
    }

    func setConstraints() {
        ClosureLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(210)
            $0.centerX.equalToSuperview()
        }
        ClosureTime.snp.makeConstraints {
            $0.top.equalTo(ClosureLabel.snp.bottom).offset(12)
            $0.centerX.equalToSuperview()
        }

        ObservableLabel.snp.makeConstraints {
            $0.top.equalTo(ClosureTime.snp.bottom).offset(50)
            $0.centerX.equalToSuperview()
        }
        ObservableTime.snp.makeConstraints {
            $0.top.equalTo(ObservableLabel.snp.bottom).offset(12)
            $0.centerX.equalToSuperview()
        }

        RxSwiftLabel.snp.makeConstraints {
            $0.top.equalTo(ObservableTime.snp.bottom).offset(50)
            $0.centerX.equalToSuperview()
        }
        RxSwiftTime.snp.makeConstraints {
            $0.top.equalTo(RxSwiftLabel.snp.bottom).offset(12)
            $0.centerX.equalToSuperview()
        }

        CombineLabel.snp.makeConstraints {
            $0.top.equalTo(RxSwiftTime.snp.bottom).offset(50)
            $0.centerX.equalToSuperview()
        }
        CombineTime.snp.makeConstraints {
            $0.top.equalTo(CombineLabel.snp.bottom).offset(12)
            $0.centerX.equalToSuperview()
        }
    }
}


