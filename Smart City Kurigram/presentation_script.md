
## 🎞️ Smart City Kurigram 

---

### 🟦 Slide 1: Introduction

> **Project Name:** Smart City Kurigram  
> **Course:** CCE 310 — Software Development Project-I  
> **Submitted by:** Md. Mehedi Hasan, Level-3 Semester-1  
>  
> A mobile app to make Kurigram smarter, safer, and more connected.  

---

### 🔴 Slide 2: Problem Statement

> Kurigram citizens face daily challenges:  
> – No single platform for emergency help  
> – Difficulty accessing hospitals or finding blood donors  
> – Lack of digital info about education, transport, and services  
> – Tourists and newcomers struggle without local guidance  

---

### 🟢 Slide 3: Our Solution

> Smart City Kurigram is an all-in-one mobile platform that connects local people to essential services.  
> From police to doctors, hotels to courier tracking — everything is one tap away.  

---

### 🟡 Slide 4: Main Features

- 🔐 Admin and user login  
- 📍 Location-based emergency info  
- 📝 Complaint submission and feedback tracking  
- 🔎 Searchable service directory  
- 📰 City notice board and Kurigram news  
- 🇧🇩 Bangla & English support  
- 🔗 Firebase cloud backend  

---

### 🟪 Slide 5: Included Services

| 🔧 Category            | 📌 Examples |
|------------------------|------------|
| 🚨 Emergency Help       | Police, Fire Service, Ambulance  
| 🏥 Health               | Doctors, Hospitals, Blood Donors  
| 🎓 Education            | Schools, Colleges, Institutes  
| 🏨 Hospitality          | Hotels & Restaurants  
| 🚗 Transport            | Local routes, vehicles, contact  
| 🏘️ Rental Listings      | Room, hostel, flat rental  
| 💰 NGOs & Microloans    | Local support services  
| 📰 Kurigram News         | Events, notices, updates  
| 🗺️ Tourist Spots        | River points, historical areas  
| 🔧 Utility Workers      | Electricians, Mechanics, Plumbers  
| 📦 Courier Services     | Tracking, nearby agents  

---

### 🟧 Slide 6: User Interface

> Our app UI is simple and clean.  
> Designed in Flutter, it supports Bangla fonts and is optimized for low-end Android devices.  
> Users can reach help, view updates, and send reports in just a few clicks.

---

### 📐 Slide 7: Flowchart

> _We start by launching the app, showing a splash screen with logo and welcome message._  
> _If it’s the first time, users see intro slides about app features._

> _Login options include admin, registered user, or guest. Admins use email/password; others can log in or continue as guest._

> _After login, users land on the home screen with Bangla-English toggle and service icons like emergency, hospitals, education, transport, NGOs, news, and more._

> _Selecting any category opens the service view. Data is fetched from Firebase or MySQL. Admins can add/edit/delete; users can view and give feedback._

> _Users can keep browsing services. Logged-in users also get profile features — edit info, view history, and track usage._

> _Finally, users can log out or exit anytime._

> _This flowchart shows a complete journey — clean, role-based, and user-friendly._

---

### 📊 Slide 8: ER Diagram

> _This is our ER diagram for Smart City Kurigram._  
> _At the center, we have the **User** entity — connected to all services._  
> _Users can be admin or normal users, based on the role field._

> _The diagram is grouped into service categories:_  
> – **Emergency & Health**: police, fire, hospitals, doctors, blood donors, diagnostics  
> – **Education & Civic**: institutes, NGOs, job circulars, startup data  
> – **Transport & Utilities**: bus/train info, electricians, rentals, courier services  
> – **News & Tourism**: local news posts and tourist spots  

> _We also have a **Feedback** table, linking user ID and service ID, which stores ratings and reviews._

> _Every service module connects back to User, ensuring role-based access and personalized tracking._  
> _This structure is ready for Firebase or SQL, and supports scaling, filtering, and real-time updates._

---

### 🛡️ Slide 9: User Role and Access

> There are two main roles:  
> – **Citizen User:** can search services, submit reports, get alerts  
> – **Admin:** can publish updates, manage listings, and reply to feedback  
> Role-based access keeps everything safe and organized.

---

### 🙏 Slide 10: Thank You

> Thank you for your time and attention.  
> Special thanks to:  
> – Prof. Dr. Md Samsuzzaman  
> – Arpita Howlader  
> for their valuable guidance in this project.  
> We hope Smart City Kurigram helps make real impact in real lives.

---
