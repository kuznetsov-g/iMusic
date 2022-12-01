//
//  SearchInteractor.swift
//  iMusic
//
//  Created by Георгий Кузнецов on 13.09.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol SearchBusinessLogic {
  func makeRequest(request: Search.Model.Request.RequestType)
}

class SearchInteractor: SearchBusinessLogic {

    var networkService = NetworkServie()
  var presenter: SearchPresentationLogic?
  var service: SearchService?
  
  func makeRequest(request: Search.Model.Request.RequestType) {
    if service == nil {
      service = SearchService()
    }
      
      
      switch request {
      case .getTracks(let searchTerm):
          print("interactor .getTracks")
          presenter?.presentData(response: Search.Model.Response.ResponseType.presentFooterView)
          networkService.fetchTracks(searchText: searchTerm) { [weak self](searchResponse) in
              self?.presenter?.presentData(response: Search.Model.Response.ResponseType.presentTracks(searchResponse: searchResponse))
          }
      }
  }
  
}
