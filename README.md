{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\froman\fcharset0 Times-Bold;\f2\froman\fcharset0 Times-Roman;
\f3\fmodern\fcharset0 Courier;\f4\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red0\green0\blue0;\red179\green179\blue179;
\red109\green109\blue109;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c0\c0\c0\c84706;\cssrgb\c75294\c75294\c75294;
\cssrgb\c50196\c50196\c50196;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # \uc0\u55356 \u57101  Countries iOS App\
\
An iOS app built using **Swift**, **MVVM architecture**, and **URLSession** to fetch and display country data from a REST API. The app includes a **search feature**, a **custom table view cell**, and **unit tests** for the ViewModel.\
\
---\
\
## \uc0\u55357 \u56561  Features\
\
- Fetches live country data (JSON) using `URLSession`\
- MVVM architecture (Model-View-ViewModel)\
- Displays country list with name, capital, code, and region\
- Real-time search filtering\
- Custom `UITableViewCell` layout\
- Unit tested ViewModel and repository layer\
\
---\
\
## \uc0\u55357 \u57056  Architecture\
\
- **Model**: Defines `Country`, `Currency`, and `Language` structs conforming to `Codable`.\
- **ViewModel**: Manages business logic and filtering, exposes data to the ViewController.\
- **Repository**: Handles network requests using `URLSession` and a configurable API endpoint.\
- **View (Controller)**: Displays data using `UITableView` and custom cell.\
- **Protocol-Oriented Networking**: Repository interface for mocking and testing.\
\
---\
\
## \uc0\u55357 \u56550  Dependencies\
\
- None! Pure Swift + Foundation + UIKit.\
- You may optionally use libraries like `SDWebImage` for better image caching.\
\
\
\pard\pardeftab720\sa298\partightenfactor0

\f1\b\fs36 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \uc0\u55357 \u56615  Configuration\
\pard\pardeftab720\sa280\partightenfactor0

\fs28 \cf0 Base URL Enum\
\pard\pardeftab720\sa240\partightenfactor0

\f2\b0\fs24 \cf0 API base URL is defined in an enum for easy modification:\
\pard\pardeftab720\partightenfactor0

\f3\fs26 \cf0 swift\
\pard\pardeftab720\partightenfactor0

\f4\fs22 \cf3 \cb4 \strokec3 CopyEdit
\f3\fs26 \cf0 \cb1 \strokec2 \
enum API \{\
    static let baseURL = "https://your-api.com"\
\}\
\pard\pardeftab720\sa240\partightenfactor0

\f2\fs24 \cf0 Update as needed for production or testing environments.\
\pard\pardeftab720\partightenfactor0
\cf5 \strokec5 \
\pard\pardeftab720\sa298\partightenfactor0

\f1\b\fs36 \cf0 \strokec2 \uc0\u55357 \u56514  Project Structure\
\pard\pardeftab720\partightenfactor0

\f3\b0\fs26 \cf0 markdown\
\pard\pardeftab720\partightenfactor0

\f4\fs22 \cf3 \cb4 \strokec3 CopyEdit
\f3\fs26 \cf0 \cb1 \strokec2 \
CountriesApp/\
\uc0\u9500 \u9472 \u9472  Model/\
\uc0\u9474    \u9492 \u9472 \u9472  Country.swift\
\uc0\u9500 \u9472 \u9472  ViewModel/\
\uc0\u9474    \u9492 \u9472 \u9472  CountriesViewModel.swift\
\uc0\u9500 \u9472 \u9472  Repository/\
\uc0\u9474    \u9500 \u9472 \u9472  CountryRepositoryProtocol.swift\
\uc0\u9474    \u9500 \u9472 \u9472  CountryRepository.swift\
\uc0\u9474    \u9492 \u9472 \u9472  NetworkService.swift\
\uc0\u9500 \u9472 \u9472  View/\
\uc0\u9474    \u9500 \u9472 \u9472  CountriesViewController.swift\
\uc0\u9474    \u9492 \u9472 \u9472  CountryCell.swift\
\uc0\u9500 \u9472 \u9472  Resources/\
\uc0\u9474    \u9492 \u9472 \u9472  Assets, LaunchScreen\
\uc0\u9492 \u9472 \u9472  Tests/\
    \uc0\u9492 \u9472 \u9472  CountriesViewModelTests.swift\
\pard\pardeftab720\partightenfactor0

\f2\fs24 \cf5 \strokec5 \
\pard\pardeftab720\sa298\partightenfactor0

\f1\b\fs36 \cf0 \strokec2 \uc0\u55357 \u56568  UI Preview\
### \uc0\u55356 \u57253  Demo Video\
\
}