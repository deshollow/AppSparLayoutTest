//
//  ContentView.swift
//  AppSparLayoutTest
//
//  Created by deshollow on 02.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 0
    @State var segmentedChoise = 0
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    CustomNavigationBarView()
                        .padding(.trailing)
                        .padding(.leading)
                        .padding(.bottom, 4)
                    Divider()
                    CardPriceButtonView()
                        .padding(.bottom, 1)
                    ProductImageView()
                        .padding()
                    StarRaitingAndSaleView()
                        .padding()
                    TitleView()
                        .padding()
                    CircleIconSettings()
                    MainСharacteristicsView()
                    AllСharacteristicsView()
                        .padding()
                    FeedBackAllView()
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            FeedBackCardScrollView()
                                .padding(1)
                            FeedBackCardScrollView()
                        }
                    }
                    .frame(width: 370, height: 150)
                    CustomFeedBackButtonView()
                    LinearGradient(gradient: Gradient(colors: [Color.clear, Color.gray.opacity(0.06)]), startPoint: .top, endPoint: .bottom)
                        .padding(1)
                    
                    Picker("", selection: $segmentedChoise) {
                        Text("Шт").tag(1)
                        Text("Кг").tag(2)
                    }
                    .padding().pickerStyle(SegmentedPickerStyle())
                    
                    CustomPlusMinusZoneView()
                        .padding()
                }
            }
            .padding()
            CustomTabsView(tabIndex: self.$tabIndex)
                .padding(.all, 15)
        }
    }
    
    //MARK: Custom Navigation Bar settings
    
    struct CustomNavigationBarView: View {
        var body: some View {
            HStack {
                Button(action: {}, label:  {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 23, height: 23)
                        .foregroundColor(.green)
                })
                Spacer()
                Button(action: {}, label:  {
                    Image(systemName: "menucard")
                        .resizable()
                        .frame(width: 23, height: 23)
                        .foregroundColor(.green)
                        .padding(.trailing)
                })
                Button(action: {}, label:  {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 23, height: 23)
                        .foregroundColor(.green)
                        .padding(.trailing)
                })
                Button(action: {}, label:  {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 23, height: 23)
                        .foregroundColor(.green)
                })
            }
        }
    }
    
    //MARK: Card price button settings
    
    struct CardPriceButtonView: View {
        var body: some View {
            HStack {
                Button(action: {}) {
                    ZStack {
                        Text("Цена по карте")
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(width: 100, height: 25)
                            .background(Color.green)
                            .cornerRadius(5)
                            .padding()
                    }
                    
                }
                Spacer()
            }
        }
    }
    
    //MARK: Product image settings
    
    struct ProductImageView: View {
        var body: some View {
            Image("lipa")
                .resizable()
                .frame(width: 270, height: 240, alignment: .center)
        }
    }
    
    //MARK: Star raitings and sale settings
    
    struct StarRaitingAndSaleView: View {
        var body: some View {
            HStack {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.yellow)
                Text("|")
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("19 отзывов")
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()
                Image("5sale")
                    .resizable()
                    .frame(width: 45, height: 27)
                    .clipShape(Rectangle())
            }
        }
    }
    
    //MARK: Title text settings
    
    struct TitleView: View {
        var body: some View {
            HStack {
                Text("Добавка 'Липа'\nк чаю 200 г")
                    .bold()
                    .font(.title)
                Spacer()
            }
        }
    }
    
    //MARK: Circle icon settings
    
    struct CircleIconSettings: View {
        var body: some View {
            HStack {
                Image("spain")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("Испания, Риоха")
                    .font(.caption)
                Spacer()
            }
            .padding()
        }
    }
    
    //MARK: Main Сharacteristics text settings
    
    struct MainСharacteristicsView: View {
        var body: some View {
            
            VStack {
                VStack {
                    HStack {
                        Text("Описание")
                            .bold()
                        Spacer()
                    }
                    .padding(.bottom)
                    HStack {
                        Text("Флавоноиды липового цвета обладают противовоспалительным действием, cпособствуют укреплению стенки сосудов.")
                        Spacer()
                    }
                }
                .padding(.bottom)
                HStack {
                    Text("Основные характеристики")
                        .bold()
                    Spacer()
                }
                .padding(.bottom)
                HStack {
                    Text("Производство")
                        .font(.caption)
                    Spacer()
                    Text("................")
                        .font(.caption)
                    Spacer()
                    Text("Россия, Краснодарский край")
                        .font(.caption)
                }
                .padding(.bottom)
                HStack {
                    Text("Энергетическая ценность, ккал/100 г")
                        .font(.caption)
                    Spacer()
                    Text("................")
                        .font(.caption)
                    Spacer()
                    Text("25 ккал 105 кДЖ")
                        .font(.caption)
                }
                .padding(.bottom)
                HStack {
                    Text("Жиры/100 г")
                        .font(.caption)
                    Spacer()
                    Text("................................................................")
                        .font(.caption)
                    Spacer()
                    Text("0,1 г")
                        .font(.caption)
                }
                .padding(.bottom)
                HStack {
                    Text("Белки/100 г")
                        .font(.caption)
                    Spacer()
                    Text("................................................................")
                        .font(.caption)
                    Spacer()
                    Text("1,3 г")
                        .font(.caption)
                }
                .padding(.bottom)
                HStack {
                    Text("Углеводы/100 г")
                        .font(.caption)
                    Spacer()
                    Text(".........................................................")
                        .font(.caption)
                    Spacer()
                    Text("3,3 г")
                        .font(.caption)
                }
                .padding(.bottom)
                
            }
            .padding(.leading)
            .padding(.trailing)
        }
    }
    
    //MARK: ALL Сharacteristics button settings
    
    struct AllСharacteristicsView: View {
        var body: some View {
            HStack {
                Button(action: {}) {
                    Text("Все характеристики")
                        .foregroundColor(.green)
                        .bold()
                }
                Spacer()
            }
        }
    }
    
    //MARK: Feedback All settings
    
    struct FeedBackAllView: View {
        var body: some View {
            HStack {
                Text("Отзывы")
                
                    .bold()
                Spacer()
                Button(action: {}) {
                    Text("Все 152")
                        .foregroundColor(.green)
                        .bold()
                }
            }
            .padding()
        }
    }
    
    //MARK: Feedback Card Scroll settings
    
    struct FeedBackCardScrollView: View {
        
        var body: some View {
            Spacer()
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                    VStack {
                        Text("Александр В.")
                            .foregroundColor(.black)
                            .bold()
                            .padding(.trailing, 90)
                        Text("7 мая 2021")
                            .font(.caption)
                            .padding(.trailing, 135)
                        HStack {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 15, height: 15, alignment: .center)
                                .foregroundColor(.yellow)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 15, height: 15, alignment: .center)
                                .foregroundColor(.yellow)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 15, height: 15, alignment: .center)
                                .foregroundColor(.yellow)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 15, height: 15, alignment: .center)
                                .foregroundColor(.yellow)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 15, height: 15, alignment: .center)
                                .foregroundColor(.gray.opacity(0.1))
                        }
                        .padding(.trailing, 90)
                        Text("Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими!")
                            .foregroundColor(.black)
                            .font(.caption)
                            .padding(.trailing, 16)
                            .padding(.top, 1)
                    }
                }
            }
            .frame(width: 220, height: 140)
            .foregroundColor(.black)
            .cornerRadius(20)
            .shadow(color: .gray.opacity(0.3), radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        }
    }
    
    //MARK: Feedback Button settings
    
    struct CustomFeedBackButtonView: View {
        var body: some View {
            Button(action: {}) {
                Text("Оставить отзыв")
                    .bold()
                    .foregroundColor(.green)
                    .frame(width: 333, height: 40)
                    .background(Color(.white))
                    .cornerRadius(50)
                    .overlay(RoundedRectangle(cornerRadius: 50).stroke(.green, lineWidth: 5))
                    .padding()
            }
        }
    }
    
    //MARK: PlusMinus zone settings
    
    struct CustomPlusMinusZoneView: View {
        
        var body: some View {
            HStack {
                VStack {
                    HStack {
                        Text("55.9")
                            .font(.title)
                            .bold()
                        Text("р/кг")
                            .font(.caption)
                            .padding(.trailing, 50)
                    }
                    Text("199,0")
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                        .strikethrough()
                        .padding(.trailing, 100)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(.green)
                    HStack {
                        HStack {
                            Button(action: {}) {
                                Image(systemName: "minus").resizable().frame(width: 23, height: 3)
                                    .foregroundColor(.white)
                            }
                            VStack {
                                Text("1 шт")
                                    .font(.subheadline)
                                    .bold()
                                    .foregroundColor(.white)
                                Text("120,0 р")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }.frame(width: 75)
                            
                            Button(action: {}) {
                                Image(systemName: "plus").resizable().frame(width: 23, height: 23)
                            }
                            .foregroundColor(.white)
                        }
                    }
                }
            }
        }
    }
    
    //MARK: TabBar settings
    
    struct CustomTabsView: View {
        
        @Binding var tabIndex: Int
        
        var body: some View {
            HStack {
                Button(action: {
                    self.tabIndex = 0
                }) {
                    VStack {
                        Image(systemName: "sparkle")
                            .resizable()
                            .frame(width: 23, height: 23)
                        Text("Главная")
                            .font(.system(size: 13))
                    }
                }
                .foregroundColor(Color.green.opacity(self.tabIndex == 0 ? 1 : 0.5))
                Spacer(minLength: 0)
                
                Button(action: {
                    self.tabIndex = 1
                }) {
                    VStack {
                        Image(systemName: "filemenu.and.selection")
                            .resizable()
                            .frame(width: 23, height: 23)
                        Text("Каталог")
                            .font(.system(size: 13))
                    }
                }
                .foregroundColor(Color.black.opacity(self.tabIndex == 1 ? 1 : 0.5))
                Spacer(minLength: 0)
                
                Button(action: {
                    self.tabIndex = 2
                }) {
                    VStack {
                        Image(systemName: "cart")
                            .resizable()
                            .frame(width: 23, height: 23)
                        Text("Корзина")
                            .font(.system(size: 13))
                    }
                }
                .foregroundColor(Color.black.opacity(self.tabIndex == 2 ? 1 : 0.5))
                Spacer(minLength: 0)
                
                Button(action: {
                    self.tabIndex = 3
                }) {
                    VStack {
                        Image(systemName: "person")
                            .resizable()
                            .frame(width: 23, height: 23)
                        Text("Профиль")
                            .font(.system(size: 13))
                    }
                }
                .foregroundColor(Color.black.opacity(self.tabIndex == 3 ? 1 : 0.5))
            }
            .padding(.horizontal, 14)
        }
    }
    
    struct Content_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
