//
//  OnboardingView.swift
//  Uti
//
//  Created by michellyes on 30/08/23.
//

import SwiftUI

struct OnboardingView: View {
   
    var body: some View {
        ZStack{
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        ZStack {
                            VStack() {
                                VStack (spacing: 12) {
                                    ZStack {
                                        Circle()
                                            .strokeBorder(Color.beige, lineWidth: 12)
                                            .frame(width: 84, height: 84)
                                        Circle()
                                            .trim(from: 0, to: (CGFloat(1.0)/28))
                                            .stroke(
                                                Color.lightBlue,
                                                style: StrokeStyle (
                                                    lineWidth: 12
                                                )
                                            )
                                            .padding(6)
                                            .frame(width: 84, height: 84)
                                            .rotationEffect(.degrees(-90))
                                        Text("1/28")
                                            .foregroundColor(.white)
                                            .font(.system(size: 14, weight: .semibold))
                                    }
                                    Text("MENSTRUAL")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .semibold))
                                }

                            }
                            .frame(maxWidth: .infinity, alignment: .center)
                            
                            VStack {
                                ZStack(alignment: .leading) {
                                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .frame(width: 64.0, height: 28.0)
                                        .foregroundColor(.beige).opacity(0.42)
                                    
                                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .frame(width: 32.0, height: 28.0)
                                        .foregroundColor(.lightBlue)
                                    
                                    HStack {
                                            Image("Health Icon")
                                    }
                                    .frame(width: 64.0, height: 28.0)
                                }
                                ZStack(alignment: .leading) {
                                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .frame(width: 64.0, height: 28.0)
                                        .foregroundColor(.beige).opacity(0.42)
                                    
                                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .frame(width: 32.0, height: 28.0)
                                        .foregroundColor(.lightBlue)
                                    
                                    HStack {
                                            Image("Food Icon")
                                    }
                                    .frame(width: 64.0, height: 28.0)
                                }
                                ZStack(alignment: .leading) {
                                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .frame(width: 64.0, height: 28.0)
                                        .foregroundColor(.beige).opacity(0.42)
                                    
                                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .frame(width: 32.0, height: 28.0)
                                        .foregroundColor(.lightBlue)
                                    
                                    HStack {
                                            Image("Party Icon")
                                    }
                                    .frame(width: 64.0, height: 28.0)
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    .padding(.bottom, Responsive.scale(s: Spacing.small))
                }
                VStack {
                    VStack {
                        Text("%#$%#%##$%#@#$%$#@#$%$#")
                            .bold()
                            .foregroundColor(.darkRed)
                            .padding(.horizontal, 8)
                    }
                    .padding(.horizontal, 4.0)
                    .frame(minWidth: 330, idealWidth: 330, maxWidth: 330, minHeight: 80, idealHeight: 80, maxHeight: 100, alignment: .center)
                    .background(.white)
                    .cornerRadius(20.0)
                    VStack {
                        Image("happy")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.accentColor)
                            
                            }
                        Ellipse()
                            .foregroundColor(.strongRed)
                            .blur(radius: 20)
                            .frame(width: 150, height: 40)
                            
                    }
                    
                    Button("Kit de Sobrevivência Uterina") {
                       // showingSheet.toggle()
                    }
                    .frame(maxHeight: 100)
                    .multilineTextAlignment(.center)
                    .buttonStyle(CustomButtonStyle())
                    .fontWeight(.medium)
//                    .sheet(isPresented: $showingSheet) {
//                        VStack{
//                            SurvivalKitView()
//                                .environmentObject(utiStore)
//                        }
//                        .edgesIgnoringSafeArea(.all)
//                        .presentationCornerRadius(32)
//                        .presentationBackground(.white)
//                        .overlay {
//                            GeometryReader { geometry in
//                                Color.clear.preference(key: SheetKitPreferenceKey.self, value: geometry.size.height)
//                            }
//                        }
//                        .onPreferenceChange(SheetKitPreferenceKey.self) { newHeight in
//                            sheetHeight = newHeight
//                        }
//                        .presentationDetents([.height(sheetHeight)])
//                    }
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .padding(.all, Responsive.scale(s: Spacing.large))
            .background(
                Image("standard_background")
                    .resizable()
                    .ignoresSafeArea()
            )
            
//            if isPopupVisible {
//                CycleChangePopupView(isPopupVisible: $isPopupVisible, uti: utiStore.uti)
//            }
        }
    
    struct CustomButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.white, lineWidth: 2) // Borda branca
                        .background(Color.clear) // Fundo transparente
                )
                .foregroundColor(.white)
                .accentColor(.white)
        }
    }
}


//struct OnboardingView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingView(uti: <#Uti#>)
//    }
//}
