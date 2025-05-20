# 🌍 Countries iOS App

An iOS app built using **Swift**, **MVVM architecture**, and **URLSession** to fetch and display country data from a REST API. The app includes a **search feature**, a **custom table view cell**, and **unit tests** for the ViewModel.

---

## 📱 Features

- Fetches live country data (JSON) using `URLSession`
- MVVM architecture (Model-View-ViewModel)
- Displays country list with name, capital, code, and region
- Real-time search filtering
- Custom `UITableViewCell` layout
- Unit tested ViewModel and repository layer

---

## 🛠 Architecture

- **Model**: Defines `Country`, `Currency`, and `Language` structs conforming to `Codable`.
- **ViewModel**: Manages business logic and filtering, exposes data to the ViewController.
- **Repository**: Handles network requests using `URLSession` and a configurable API endpoint.
- **View (Controller)**: Displays data using `UITableView` and custom cell.
- **Protocol-Oriented Networking**: Repository interface for mocking and testing.

---

## 📦 Dependencies

- None! Pure Swift + Foundation + UIKit.
- You may optionally use libraries like `SDWebImage` for better image caching.


🔧 Configuration
Base URL Enum
API base URL is defined in an enum for easy modification:
swift
CopyEdit
enum API {
    static let baseURL = "https://your-api.com"
}
Update as needed for production or testing environments.

📂 Project Structure
markdown
CopyEdit
CountriesApp/
├── Model/
│   └── Country.swift
├── ViewModel/
│   └── CountriesViewModel.swift
├── Repository/
│   ├── CountryRepositoryProtocol.swift
│   ├── CountryRepository.swift
│   └── NetworkService.swift
├── View/
│   ├── CountriesViewController.swift
│   └── CountryCell.swift
├── Resources/
│   └── Assets, LaunchScreen
└── Tests/
    └── CountriesViewModelTests.swift

📸 UI Preview
### 🎥 Demo Video

https://github.com/ThiruVanithaRani/SelectCountry/issues/1#issue-3077983186
