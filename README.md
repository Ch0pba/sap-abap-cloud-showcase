# Modern SAP ABAP Cloud & Enterprise Data Portfolio

Welcome to my technical portfolio. This repository showcases my hands-on implementations, architectural exercises, and upskilling progress in the modern **SAP ABAP Cloud Programming Model** and advanced data modeling. 

As an M.Sc. Computer Engineering student with a solid background in enterprise SAP BW/4HANA data engineering (2018–2020), this repository demonstrates how I bridge classic data warehousing structures with modern, cloud-ready, and "Clean Core" compliant backend architectures.

---

## 🛠️ Core Technical Focus Areas

- **ABAP Cloud & Clean Core:** Utilizing strict cloud-ready ABAP syntax, avoiding legacy components, and implementing modern object-oriented design patterns.
- **Encapsulated Object Architecture:** Class construction using clear visibility sections (`PUBLIC`, `PROTECTED`, `PRIVATE`), explicit parameter typing, and instantiation patterns (e.g., `NEW` operator).
- **Data Modeling Mastery:** Working with Core Data Services (CDS Views), database blueprints, local/global structure variables, and data conversion logic.
- **Cloud Execution:** Building standalone, testable executable units leveraging the `if_oo_adt_classrun` interface in ABAP Development Tools (ADT).

---

## 📁 Repository Directory & Exercises

Each folder represents a standalone exercise mapped to the modern SAP learning path:

### 🔹 [exercise_01_connection_class](./exercise_01_connection_class/)
- **Focus:** Object orientation, structure declarations, and separation of concerns.
- **`local_types.abap`:** Defines local class specifications (`lcl_connection`), showing implementation of `READ-ONLY` attributes, constructor injection, and method encapsulation.
- **`global_class.abap`:** Main execution hub implementing `if_oo_adt_classrun` to demonstrate object instantiation, structure mapping, and console logging.

*(More exercises will be committed as I continue my S/4HANA development tracks).*

---

## 👨‍💻 About Me

- **Name:** Hemadri Rajesh Sai Kumar Choppa
- **Current Track:** M.Sc. in Computer Engineering, Paderborn University (Graduating 2026)
- **Core Experience:** 2+ Years as an Associate Programmer Analyst at DXC Technology (SAP BW/4HANA focus)
- **LinkedIn:** [linkedin.com/in/chrsk](https://www.linkedin.com/in/chrsk)
- **Email:** choppahrsk@gmail.com

---

## ⚙️ Development Environment
All code in this repository is developed using **ABAP Development Tools (ADT) in Eclipse** against a modern cloud-ready SAP BTP / S/4HANA sandbox environment.
