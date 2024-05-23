//
//  EditProfileViewModel.swift
//  Threads
//
//  Created by Victor Chang on 23/05/2024.
//

import SwiftUI
import PhotosUI

class EditProfileViewModel: ObservableObject {
    @Published var selectedItem: PhotosPickerItem? {
        didSet { Task { await loadImage() } }  // whenever the item is set, the loadImaege is called
    }
    
    @Published var profileImage: Image?
    
    private func loadImage() async {
        guard let item = selectedItem else { return }
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }
        self.profileImage = Image(uiImage: uiImage)
    }
}
