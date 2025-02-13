# BeyondPeace App

BeyondPeace is a comprehensive Flutter application designed to provide users with a variety of mental health resources, including music, videos, exercises, and more. This app integrates several features to help users improve their mental well-being.

## 💡 Introduction

**Problem Statement**: Addressing Mental Health Gaps Through Technology

Millions globally face mental health challenges, yet timely and effective support remains scarce due to stigma, lack of awareness, and limited resources. Many regions lack access to qualified professionals, reliable information, and holistic wellness tools.  

Existing solutions often miss integrated care, such as hospital locators, medical record management, crisis support, relaxation tools, mental health exercises, and emergency protocols. There is a growing need for an accessible, user-friendly platform that bridges these gaps.

**Solution**: **BeyondPeace** is an Android app addressing mental health challenges by offering holistic support through nearby hospital locators, medical report storage, brain music therapy, and relaxation exercises. The platform promotes mental wellness, accessibility, and emergency assistance, contributing to the UN's Sustainable Development Goal 3: Good Health and Well-being by 2030. BeyondPeace empowers users with innovative tools to foster emotional resilience and create a supportive community for better mental health outcomes.

A **Google Solution Challenge Project'25** Organised By Google Developer Student Clubs Project by **Team name From A. G. Patil Institute of Technology Solapur**

# Demo Video

[![Intro To BeyondPeace](https://i.postimg.cc/VNYQYmCV/Beyond-Peace-Thumbnail.webp)
](https://www.youtube.com/watch?v=V9X7qDZFSac)

## Our Target SDG Goals 🎯

<p align="center">
  <img src="https://sdgs.un.org/sites/default/files/goals/E_SDG_Icons-03.jpg" width="200"/>
  <!-- <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwqKfuiTX9zNEyuBpzS2jhkqa21_LdPqRMnDVMDf_-oA&s" width="200"/> -->
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwPfyIMD4sthlJSr1OPgV9DhC84VqzIzguaEVLABHn3Q&s" width="200"/>
</p>

## Features

### 1. Authentication
- **Login and Register**: Users can log in or register to access the app's features.
- **Firebase Authentication**: Integrated with Firebase for secure user authentication.

### 2. Video Content
- **Video List**: A list of videos related to mental exercises and brain training.
- **YouTube Player**: Embedded YouTube player to stream videos directly within the app.

### 3. Music
- **Music List**: A curated list of relaxing and focus-enhancing music tracks.
- **Music Player**: Integrated music player to play audio tracks.

### 4. Maps
- **Google Maps Integration**: Display nearby places of interest using Google Maps.
- **Custom Markers**: Custom markers to highlight specific locations on the map.

### 5. Special Events
- **Event List**: A list of special events related to mental health and well-being.
- **Event Details**: Detailed information about each event, including date, time, and location.

### 6. Assessment
- **Mental Health Assessment**: A series of questions to assess the user's mental health.
- **Suggestions**: Personalized suggestions based on the assessment results.

### 7. Doctor Consultation
- **Doctor List**: A list of available doctors for consultation.
- **Doctor Details**: Detailed information about each doctor, including specialization and contact information.

### 8. Firebase Integration
- **Firestore**: Save and retrieve user data using Firebase Firestore.
- **Firebase Storage**: Store and retrieve media files using Firebase Storage.

### 9. Custom Components
- **Custom Divider**: A reusable divider widget.
- **Exercise Container**: A container widget for displaying exercise images.
- **Music Container**: A container widget for displaying music images.
- **Special Component**: A widget for displaying special event details.

### 10. Splash Screen
- **Animated Splash Screen**: An animated splash screen that transitions to the authentication page.

## Installation

1. **Clone the repository**:
    ```sh
    git clone https://github.com/shoaib-inamdar/beyondpeaceapp.git
    cd beyondpeace
    ```

2. **Install dependencies**:
    ```sh
    flutter pub get
    ```

3. **Run the app**:
    ```sh
    flutter run
    ```

## Walkthrough

<table style="width: 100%;">
  <tr>
    <td align="center" width="25%">
      <img src="https://github.com/shoaib-inamdar/beyondPeace-website/blob/main/images/splashscreen.png?raw=true" width="120"/><br>
      <b>Splash Screen</b><br>
      Displays the BeyondPeace logo after launching the app.
    </td>
    <!-- <td align="center" width="25%">
      <img src="https://spoonshare.vercel.app/images/22.png" width="120"/><br>
      <b>Onboarding Screen</b><br>
      Allows users to create account or log.
    </td> -->
    <td align="center" width="25%">
      <img src="https://github.com/shoaib-inamdar/beyondPeace-website/blob/main/images/signup.png?raw=true" width="120"/><br>
      <b>Signup Screen</b><br>
       Create an account manually or use Google credentials.
    </td>
    <td align="center" width="25%">
      <img src="https://github.com/shoaib-inamdar/beyondPeace-website/blob/main/images/login.png?raw=true" width="120"/><br>
      <b>Login Screen</b><br>
       Log in via email or continue with Google credentials.
    </td>
  </tr>
  <tr>
    <td align="center" width="25%">
      <img src="https://github.com/shoaib-inamdar/beyondPeace-website/blob/main/images/homepage.png?raw=true" width="120"/><br>
      <b>Home Screen</b><br>
      It contains all the features of this application.
    </td>
    <td align="center" width="25%">
      <img src="https://github.com/shoaib-inamdar/beyondPeace-website/blob/main/images/assesment.png?raw=true" width="120"/><br>
      <b>Self Assessment Screen</b><br>
      Here the user can have a self assessment upon which the user will be suggested to use the specific feature to make their mental health better.
    </td>
    <td align="center" width="25%">
      <img src="https://github.com/shoaib-inamdar/beyondPeace-website/blob/main/images/exercise.png?raw=true" width="120"/><br>
      <b>Brain exercises Screen</b><br>
      This provides a list of videos to help improve the users mental health.
    </td>
    <td align="center" width="25%">
      <img src="https://github.com/shoaib-inamdar/beyondPeace-website/blob/main/images/music.png?raw=true" width="120"/><br>
      <b>Brain Health Music Screen</b><br>
      This contains a list of Brain Health music for meditation and relaxation.
    </td>
  </tr>
  <tr>
    <td align="center" width="25%">
      <img src="https://github.com/shoaib-inamdar/beyondPeace-website/blob/main/images/consult.png?raw=true" width="120"/><br>
      <b>Consulting a Specialist Screen</b><br>
      This contains a list of Specialist so that the user can have a one on one talk.
    </td>
    <td align="center" width="25%">
      <img src="https://github.com/shoaib-inamdar/beyondPeace-website/blob/main/images/events.png?raw=true" width="120"/><br>
      <b>Special Events Screen</b><br>
      This contains a list of special events currently happening in their location.
    </td>
    <td align="center" width="25%">
      <img src="https://github.com/shoaib-inamdar/beyondPeace-website/blob/main/images/reports.png?raw=true" width="120"/><br>
      <b>Medical Reports Screen</b><br>
       Here the user can save their medical reports and can also view them through the application itself.
    </td>
    <td align="center" width="25%">
      <img src="https://github.com/shoaib-inamdar/beyondPeace-website/blob/main/images/Screenshot%202024-04-16%20141704.png?raw=true" width="120"/><br>
      <b>Nearby Hospitals Screen</b><br>
      The user can find nearest hospital according to their location and can also get the route through Google Maps.
    </td>
  </tr>
  
</table>


## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## Contact

For any inquiries or feedback, please contact [shoaibinamdar14@gmail.com](mailto:shoaibinamdar14@gmail.com).
