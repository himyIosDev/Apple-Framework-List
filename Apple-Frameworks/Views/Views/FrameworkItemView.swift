//
//  FrameworkItemView.swift
//  Apple-Frameworks
//
//  Created by Hamza Mughal on 29/08/2024.
//

import SwiftUI

struct FrameworkItemView : View {
    //
    let farmeworkObj : Framework
    
    var body : some View {
        //
        HStack {
            //
            Image(farmeworkObj.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            
            Text(farmeworkObj.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

#Preview {
    FrameworkItemView(farmeworkObj: MockData.sampleFramework)
}
