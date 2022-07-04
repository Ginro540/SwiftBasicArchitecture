//
//  HomeViewModel.swift
//  SwiftBasicArchitecture
//
//  Created by 古賀貴伍社用 on 2022/06/17.
//

import Foundation
import RxSwift
import RxRelay
import RxCocoa


public final class HomeViewModel:ViewModelProtocol {

    private let userInfoUserCase: UserInfoUserCase
    
    public struct Input {
        
        // UserToken
        let userToken: String
        // 画面ロード時
        let viewLoaded: Driver<Void>
        
        
        public init (
            token: String,
            viewLoaded : Driver<Void>
        ) {
            self.userToken = token
            self.viewLoaded = viewLoaded
        }
    }
    
    
    public struct Output {
        let trigger : Driver<Bool>
     //   let test: Driver<Void>
    }
    
    init(userInfoUserCase: UserInfoUserCase) {
        self.userInfoUserCase = userInfoUserCase
    }

    

    public func setup(input: Input) -> Output {
        
        let errorTracker = ErrorTracker()
        
        let trigger = input.viewLoaded
            .asObservable()
            .flatMapLatest {
                self.userInfoUserCase.run(token: input.userToken)
            }
            .trackError(errorTracker)
            .asDriverOnErrorJustComplete()
        
        
        
        
        
        
        return Output(trigger: trigger)
    }
}
