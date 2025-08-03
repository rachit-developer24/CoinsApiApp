# Cryptocurrency Tracker Application

## Project Overview
This iOS application provides real-time cryptocurrency market data using the CoinGecko API. The app allows users to browse popular cryptocurrencies and view detailed information about each coin.

## Technical Architecture
The application is built using the MVVM (Model-View-ViewModel) architectural pattern, providing clean separation of concerns and improved testability. Key components include:

### Core Architecture
- **Protocol-Oriented Design**: Used protocols for dependency injection and interface abstraction
- **SOLID Principles**: Applied throughout the codebase to ensure maintainability and extensibility
- **Dependency Injection**: Implemented via protocols to allow for easy testing and component swapping

### Networking Layer
- **Protocol Abstraction**: Created `httpdownloader` protocol for standardized network operations
- **Error Handling**: Comprehensive error handling with custom `CoinAPIError` enum and descriptive error messages
- **Asynchronous Programming**: Utilized Swift's modern async/await for concurrent network calls
- **Generic API Client**: Implemented type-safe network requests with generic decoding

### Data Management
- **Caching System**: Custom `CoinDetailCache` singleton using NSCache for efficient memory management
- **Model Structures**: Clean, Codable-conforming data models for serialization/deserialization
- **Protocol-Based Data Service**: `CoinsDataProtocol` defines the contract for data operations

### UI Implementation
- **SwiftUI Views**: Modern declarative UI with navigation and list handling
- **State Management**: Proper use of @Published, @StateObject, and @ObservedObject for reactive UI updates
- **Navigation**: Implemented type-safe navigation with NavigationStack

### Testing Strategy
- **Mock Services**: Created `MockDataTesting` class implementing the data protocol for isolated testing
- **Testable Architecture**: Design patterns chosen specifically to enable comprehensive unit testing

## Technical Challenges Solved
- Implemented efficient caching to minimize network requests and improve performance
- Created a robust error handling system with meaningful error messages
- Designed a flexible architecture that allows for easy feature expansion
- Utilized Swift concurrency features for responsive UI during network operations


