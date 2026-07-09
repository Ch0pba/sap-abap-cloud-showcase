# Modern SAP ABAP Cloud & Enterprise Data Portfolio

Welcome to my technical portfolio. This repository showcases my hands-on implementations, architectural exercises, and upskilling progress in the modern SAP ABAP Cloud Programming Model, cloud data virtualization, and advanced data modeling.

With over 5 years of combined experience spanning enterprise data engineering at DXC Technology, independent cloud data consulting (SAP Datasphere/DWC), and academic data pipeline engineering, this repository demonstrates how I bridge classic enterprise data warehousing layers with modern, cloud-ready, and "Clean Core" compliant backend architectures.

## 🛠️ Core Technical Focus Areas

* **ABAP Cloud & Clean Core:** Utilizing strict cloud-ready ABAP syntax, avoiding legacy components, and implementing modern object-oriented design patterns.
* **RAP & Transactional Frameworks:** Building end-to-end applications using the ABAP RESTful Application Programming Model (RAP). Implementing transactional operations (CRUD) and managing transient/persistent states.
* **Business Logic & EML Execution:** Designing custom validations and determinations within the behavior layer. Utilizing Entity Manipulation Language (EML) blocks like `READ ENTITIES ... IN LOCAL MODE` combined with typed `KEYS` parameters to enforce strict input validation.
* **Enterprise Data Integration:** Linking classic data warehousing principles (BW/4HANA, extraction logic, and source system mapping) to modern ABAP Cloud database blueprints and Core Data Services (CDS).
* **Cloud Service Exposure:** Exposing cloud-ready data models as business services via OData V4 protocols optimized for SAP Fiori Elements consumption.

## 📁 Repository Directory & Exercises

Each folder represents a standalone exercise mapped to the modern SAP learning path:

### 🔹 exercise_01_connection_class
* **Focus:** Object orientation, structure declarations, and separation of concerns.
* `local_types.abap`: Defines local class specifications (`lcl_connection`), showing implementation of `READ-ONLY` attributes, constructor injection, and method encapsulation.
* `global_class.abap`: Main execution hub implementing `if_oo_adt_classrun` to demonstrate object instantiation, structure mapping, and console logging.

### 🔹 exercise_02_rap_transactional_application (Package: ZSD400_7262)
* **Focus:** Complete implementation of a transactional RAP Business Object (BO) using a managed/draft-enabled runtime.
* `Data Modeling (CDS)`: Features data provisioning through Base Interface/Provider views and corresponding Projection/Consumption layers optimized for UI rendering.
* `Behavior Layer (BDEF)`: Defines behavior properties, static/dynamic field controls, and transactional actions.
* `Behavior Implementation Class (CCIMP)`: Contains the core local handler implementation logic. Showcases custom business rule validation routines driven by processing contextual primary transaction keys (`KEYS`).
* `Service Layer (SRVD / SRVB)`: Full orchestration and exposure of the data structures as published OData V4 services ready for Fiori consumption.

## 👨‍💻 About Me

* **Name:** Hemadri Rajesh Sai Kumar Choppa
* **Current Track:** M.Sc. in Computer Engineering, University of Paderborn (Graduating 2026)
* **Core Experience:** 5+ Years of combined SAP technical consulting, data engineering (DXC Technology), and freelance data migration/virtualization tracking.
* **LinkedIn:** [linkedin.com/in/chrsk](https://www.linkedin.com/in/chrsk)
* **Email:** choppahrsk@gmail.com

## ⚙️ Development Environment

All code in this repository is developed using ABAP Development Tools (ADT) in Eclipse against a modern cloud-ready SAP BTP / S/4HANA sandbox environment and synchronized securely using abapGit serialization tooling.
