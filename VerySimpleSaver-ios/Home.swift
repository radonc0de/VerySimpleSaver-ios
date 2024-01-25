//
//  ContentView.swift
//  VerySimpleSaver-ios
//
//  Created by Keith L on 1/24/24.
//

import SwiftUI

struct Home: View {
	var body: some View {
		VStack {
			ProgressView(value: 69, total: 100)
			HStack {
				VStack(alignment: .leading) {
					Text("Seconds Elapsed")
						.font(.caption)
					Label("300", systemImage: "hourglass.tophalf.fill")
				}
				Spacer()
				VStack(alignment: .trailing) {
					Text("Seconds Remaining")
						.font(.caption)
					Label("600", systemImage: "hourglass.bottomhalf.fill")
				}
			}	
			.accessibilityElement(children: .ignore)
			.accessibilityLabel("Time remaining")
			.accessibilityValue("10 minutes")
			Circle()
				.strokeBorder(lineWidth: 24)
			HStack {
				Text("Speaker 1 of 3")
				Spacer()
				Button(action: {}) {
					Image(systemName: "forward.fill")
				}
				.accessibilityLabel("Next speaker")
			}
		}
		.padding()
	}
}

struct HomeView_Preview: PreviewProvider {

	static var previews: some View {

		Home()

	}

}
