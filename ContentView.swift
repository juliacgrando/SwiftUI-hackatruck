import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding()
                    Spacer()
                    Image(systemName: "dumbbell")
                        .resizable()
                        .frame(width: 40, height: 24)
                        .padding()
                }
                
                Text("Olá, ActivoVo!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    VStack {
                        NavigationLink(destination: ExerciseView()) {
                            InfoCard(number: "2", label: "Próximos exercícios")
                        }
                        NavigationLink(destination: ActivitiesView()) {
                            InfoCard(number: "3", label: "Novas atividades")
                        }
                    }
                    VStack {
                        NavigationLink(destination: RemindersView()) {
                            InfoCard(number: "6", label: "Lembretes pendentes")
                        }
                        NavigationLink(destination: MessagesView()) {
                            InfoCard(number: "+99", label: "Notícias de esportes")
                        }
                    }
                }
                .padding()
                
                Text("As atividades de hoje")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ActivityCard(
                    title: "Aula de exercício",
                    time: "9:30 - 11:00",
                    type: "Tutorial",
                    icon: "play",
                    category: "Iniciar Exercícios")
                ActivityCard(
                    title: "Rastreamento de progresso",
                    time: "13:00 - 15:30",
                    type: "Tutorial",
                    icon: "play",
                    category: "Iniciar Exercícios")

                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct InfoCard: View {
    let number: String
    let label: String
    
    var body: some View {
        VStack {
            Text(number)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(label)
                .font(.subheadline)
        }
        .frame(width: 150, height: 100)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct ActivityCard: View {
    let title: String
    let time: String
    let type: String
    let icon: String
    let category: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(type)
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(5)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                
                Text(title)
                    .font(.headline)
                Text(time)
                    .font(.subheadline)
            }
            Spacer()
            VStack {
                Image(systemName: icon)
                    .frame(width: 24, height: 24)
                Text(category)
                    .font(.caption)
            }
            Spacer()
            Image(systemName: "bell")
                .frame(width: 24, height: 24)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding([.leading, .trailing, .top])
    }
}


#Preview {
    ContentView()
}
