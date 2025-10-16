//
//  BindingView.swift
//  statusAndBinding
//
//  Created by nasir on 16/10/25.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var isActive:Bool
    var body: some View {
        Button {
            isActive = false
        } label: {
            Text("Toggle")
        }

        
    }
}

#Preview {
    BindingView(isActive: .constant(true))
}
