//
//  PhoneListPresenter.swift
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

protocol PhoneListPresentationLogic
{
  func presentSomething(response: PhoneList.Something.Response)
}

class PhoneListPresenter: PhoneListPresentationLogic
{
  weak var viewController: PhoneListDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: PhoneList.Something.Response)
  {
    let viewModel = PhoneList.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
