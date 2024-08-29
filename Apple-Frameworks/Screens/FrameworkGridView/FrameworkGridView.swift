//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Hamza Mughal on 28/08/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    //
    @StateObject var viewModel = FrameworkGridViewModel()
    

    
    var body: some View {
        //
        NavigationView {
            //
            List {
                //
                ForEach(MockData.frameworks) { frameworkObj in
                    //
                    NavigationLink(destination: FrameworkDetailVIew(framework: frameworkObj, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        //
                        FrameworkItemView(farmeworkObj: frameworkObj)
                    }
                }
            }
            .navigationTitle("🍏 Frameworks")
        }
        .accentColor(Color(.label))
    }
}
                                        

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
