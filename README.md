# 💰 Coins API App  

A SwiftUI app that fetches cryptocurrency data from an API using **async/await** and displays it in a clean UI with navigation to detail views. Built with **MVVM architecture**, it demonstrates API integration, JSON decoding, state management, and navigation in SwiftUI.  

---

## 🚀 Features
- **MVVM Architecture** – clean separation of data, logic, and UI  
- **Async/Await Networking** – modern Swift concurrency with `URLSession`  
- **JSON Decoding** – maps API responses into Swift models (`Coins`)  
- **List & Detail Views** – tap on a coin to view its detail page  
- **State Management** – handles loading and displaying dynamic API data  
- **NavigationStack** – modern navigation flow with typed destinations  

---

## 🛠️ Tech Stack
- Swift 5.9+  
- SwiftUI  
- MVVM  
- URLSession + async/await  
- Codable for JSON parsing  

---

## 📂 Project Structure
- `Coins` → model struct conforming to `Codable`, `Identifiable`, and `Hashable`  
- `CoinsService` → fetches coin data from the API  
- `CoinsViewModel` → manages app state and data fetching  
- `CoinsView` → list of coins with navigation  
- `CoinsDetailView` → displays details of a selected coin  

---

## 📷 Screenshots
<img width="1470" height="956" alt="Screenshot 2025-08-28 at 17 04 31" src="https://github.com/user-attachments/assets/2271433e-67eb-4eba-8cac-fdeb5d0f4d22" />
<img width="1470" height="956" alt="Screenshot 2025-08-28 at 17 04 59" src="https://github.com/user-attachments/assets/d6d9adf4-2672-43c5-89ed-2d566d5132f1" />


---

## 📝 Future Improvements
- Add caching layer to reduce API calls  
- Add pull-to-refresh functionality  
- Display more coin details (price, symbol, market cap)  
- Add search and filter options  
- Implement unit tests for API calls and ViewModel  

---

## 🎯 Learning Highlights
This project demonstrates:  
- How to fetch and decode JSON data with **async/await**  
- Managing app state with **MVVM in SwiftUI**  
- Using **NavigationStack** with type-safe destinations  
- Building a list/detail UI flow in SwiftUI  


