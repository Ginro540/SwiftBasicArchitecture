//
//  ObservableType.swift
//  SwiftBasicArchitecture
//
//  Created by 古賀貴伍社用 on 2022/06/24.
//

import RxSwift
import RxCocoa

extension ObservableType {
    
    func catchErrorJustComplete() -> Observable<Element> {
        return catchError { _ in
            return Observable.empty()
        }
    }
    
    func asDriverOnErrorJustComplete() -> Driver<Element> {
        return asDriver { _ in
            return Driver.empty()
        }
    }
}
