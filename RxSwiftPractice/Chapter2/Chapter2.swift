//
//  Chapter2.swift
//  RxSwiftPractice
//
//  Created by 장혜준 on 2018. 3. 8..
//  Copyright © 2018년 장혜준. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class Chapter2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Challenges 1
        
        // never 형식의 obesrvable 선언
        /* let observable = Observable<Any>.never()
        
        // dispose 생성
        let disposeBag = DisposeBag()
        
        // .do 연산자는 괄호 안에 있는 내용을 무조건 한번은 실행하게 한다.
        observable.do(
            onSubscribed: { print("test") })
            .subscribe(
                onNext: { (element) in
                    print(element)
            },
                onCompleted: {
                    print("Completed")
            }
        ).disposed(by: disposeBag) */
        
        
        // Challenges 2

        // never 형식의 obesrvable 선언
        let observable = Observable<Any>.never()
 
        // dispose 생성
        let disposeBag = DisposeBag()
        
        // .debug 연산자는 모든 이벤트를 프린트 해줌
        observable
            .debug("TEST never")
            .subscribe()
            .disposed(by: disposeBag)
    }
    
}
