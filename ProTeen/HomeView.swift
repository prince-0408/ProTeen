//
//  HomeView.swift
//  ProTeen
//
//  Created by Prince Yadav on 23/09/24.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Header Section
                HStack {
                    Text("HELLO ABHINAV!")
                        .font(.system(size: 24, weight: .bold))
                    Spacer()
                }
                .padding(.horizontal)

                HStack {
                    Text("Delivering to")
                        .font(.system(size: 14, weight: .regular))
                    Text("Sector 20")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.red)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom, 10)

                // Categories Section
                HStack(spacing: 20) {
                    CategoryView(imageName: "cart.fill", title: "Fruit Juice", color: .pink)
                    CategoryView(imageName: "cart.fill", title: "Nut Milk", color: .yellow)
                    CategoryView(imageName: "cart.fill", title: "Veggie Juice", color: .green)
                }
                .padding(.horizontal)

                // Most Popular Section
                HStack {
                    Text("MOST POPULAR")
                        .font(.system(size: 18, weight: .bold))
                    Spacer()
                }
                .padding(.horizontal)

                ScrollView {
                    VStack(spacing: 20) {
                        ProductView(productName: "Black Grape + Pomegranate Juice", price: "₹340", rating: 4.3, category: "Fruit Juice", imageName: "bottle", color: .pink)
                        ProductView(productName: "Spinach + Celery + Ginger Juice", price: "₹239", rating: 4.5, category: "Veggie Juice", imageName: "bottle", color: .green)
                        ProductView(productName: "Valencia Orange Extra", price: "₹300", rating: 4.4, category: "Fruit Juice", imageName: "bottle", color: .orange)
                    }
                    .padding()
                }

                // Bottom Tab Bar
                HStack {
                    TabBarButton(imageName: "house.fill")
                        .padding(30)
                    TabBarButton(imageName: "magnifyingglass")
                        .padding(30)
                    TabBarButton(imageName: "cart.fill")
                        .padding(30)
                    TabBarButton(imageName: "person.fill")
                        .padding(30)
                    }
                .frame(maxWidth: .infinity)
                .background(Color.white.shadow(radius: 2))
                .padding()
                .cornerRadius(40)
            }
            .navigationBarHidden(false)
            .cornerRadius(40)

        }
    }
}

// Category View
struct CategoryView: View {
    let imageName: String
    let title: String
    let color: Color

    var body: some View {
        VStack {
            Image(systemName: imageName)
                .font(.system(size: 30))
                .padding()
                .background(color.opacity(0.2))
                .cornerRadius(10)
            Text(title)
                .font(.system(size: 14, weight: .medium))
        }
        .frame(width: 100, height: 120)
    }
}

// Product View
struct ProductView: View {
    let productName: String
    let price: String
    let rating: Double
    let category: String
    let imageName: String
    let color: Color

    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 60, height: 60)
                .background(color.opacity(0.2))
                .cornerRadius(10)

            VStack(alignment: .leading) {
                Text(productName)
                    .font(.system(size: 16, weight: .medium))
                HStack {
                    Text(category)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Spacer()
                    Text(String(format: "%.1f", rating))
                    Image(systemName: "star.fill")
                        .font(.system(size: 12))
                        .foregroundColor(.yellow)
                }
                Text(price)
                    .font(.system(size: 16, weight: .bold))
            }
            Spacer()
            Button(action: {}) {
                Text("Add to cart")
                    .font(.system(size: 14, weight: .medium))
                    .padding(8)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 1)
    }
}

// Tab Bar Button
struct TabBarButton: View {
    let imageName: String

    var body: some View {
        Button(action: {}) {
            Image(systemName: imageName)
                .font(.system(size: 24))
                .foregroundColor(.black)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
