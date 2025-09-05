# DoneFlowApp 

A **SwiftUI-based task management application** designed to provide a seamless and intuitive to-do list experience.  
DoneFlow allows users to authenticate securely, create tasks with precise deadlines and manage their daily workflow efficiently.  

---

## ✨ Features

- **Authentication**
  - Secure sign-up and sign-in with Firebase Authentication.
- **Task Management**
  - Create to-do items with titles.
  - Assign exact deadlines (**date, hour, and minute**) via a built-in calendar and time picker.
  - Mark tasks as completed.
  - Delete tasks when they are no longer needed.
- **Cloud Integration**
  - Real-time synchronization with Firebase Firestore.
  - Persistent data accessible across devices.

---

## 🛠️ Technology Stack

- **Language:** Swift  
- **Framework:** SwiftUI  
- **State Management:** `@State`, `@StateObject`, `@FirestoreQuery`  
- **Backend & Database:** Firebase Firestore  
- **Authentication:** Firebase Auth  

---

## 📸 Screenshots


<div style="display: flex; flex-wrap: wrap; gap: 30px; justify-content: center;">

  <div>
    <h4 style="text-align: center;">Authentication</h4>
    <div style="display: flex; gap: 15px;">
      <img src="signin.png" alt="Sign In Screen" width="180"/>
      <img src="signup.png" alt="Sign Up Screen" width="180"/>
    </div>
  </div>

  <div>
    <h4 style="text-align: center;">Task List</h4>
    <img src="tasklist.png" alt="Task List" width="200"/>
  </div>

  <div>
    <h4 style="text-align: center;">New List Item</h4>
    <img src="newlistitem.png" alt="New List Item" width="200"/>
  </div>

  <div>
    <h4 style="text-align: center;">Profile View</h4>
    <img src="profileview.png" alt="Profile View" width="200"/>
  </div>

  <div>
    <h4 style="text-align: center;">Launch Screen</h4>
    <img src="launchscreen.png" alt="Launch Screen" width="200"/>
  </div>

</div>



