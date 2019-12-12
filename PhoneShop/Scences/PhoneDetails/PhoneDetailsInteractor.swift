//
//  PhoneDetailsInteractor.swift
//  PhoneShop
//
//  Created by GABLET04690 on 12/12/2562 BE.
//  Copyright (c) 2562 Orathai Udomluk. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol PhoneDetailsBusinessLogic
{
  func doSomething(request: PhoneDetails.Something.Request)
}

protocol PhoneDetailsDataStore
{
  //var name: String { get set }
}

class PhoneDetailsInteractor: PhoneDetailsBusinessLogic, PhoneDetailsDataStore
{
  var presenter: PhoneDetailsPresentationLogic?
  var worker: PhoneDetailsWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: PhoneDetails.Something.Request)
  {
    worker = PhoneDetailsWorker()
    worker?.doSomeWork()
    
    let response = PhoneDetails.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
