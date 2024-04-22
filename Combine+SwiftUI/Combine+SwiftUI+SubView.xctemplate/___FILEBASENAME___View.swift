//___FILEHEADER___

import SwiftUI
import Combine

/**
 ## 클래스 설명
 * ___VARIABLE_productName___View
 * <# 요약 #>
 
 ## 기본정보
 * Note: APP
 * See: <# 제플린 없음 #>
 * Author:  ___FULLUSERNAME___
 * Since: ___DATE___
 */
struct ___FILEBASENAMEASIDENTIFIER___: View{
    private var cancellables = Set<AnyCancellable>()
    @ObservedObject var viewModel = ___VARIABLE_productName:identifier___ViewModel()

    init(viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        Text("___FILEBASENAMEASIDENTIFIER___")
    }
}

#Preview {
    @StateObject var viewModel = ___VARIABLE_productName:identifier___ViewModel()
    return ___FILEBASENAMEASIDENTIFIER___(viewModel: viewModel)
}