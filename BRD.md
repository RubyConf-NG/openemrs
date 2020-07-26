# Health Records Management System

_Business Requirements Document_

## Background

Some of the important and crucial questions that  doctors/physicians wish could be answered are:

  1. Have these symptoms re-occurred before?
  2. Was he/she treated successfully?
  3. Were there any complications resulting from the use of the drugs administered to the patient in their previous diagnosis assessment?

These questions could easily be answered by what doctors term as “Clerking” which is basically getting history about a patient.

## Existing System

In the existing healthcare management systems, there is a high chance of misinformation of a patients’ previous health records. It has become cumbersome and time consuming trying to ask the patient themselves of their previous diagnosis and locate those specific records respectively. A patient may or may not remember their history well enough for a doctor to put together whether he/she was diagnosed properly so they often try to re-diagnose the problem again through the little information they get from the patient.

## Purpose

The main purpose for the proposed project is to link hospitals together. This will create an interface for pulling records of a patient from the hospitals stated to have their records. 
The other reason is to enforce more interconnectivity between hospitals such that doctors/physicians can be more accountable with how they diagnose and treat their patients.

## Introduction

ntroduction:
An Electronic Medical Record (EMR) is a digital application that enables hospitals to store patients’ records electronically. Most health institutions still store patients’ information manually using traditional paper records. There are so many downsides to the use of paper records that electronic records have been able to solve. With EMRs, information is easily accessible anytime and anywhere offline and/or online and since it’s a more concise way of keeping records, doctors can make well-informed treatment decisions that are free of human error from the misinterpretation of hand written records, etc.

EMRs provide patients with quick access to a more coordinated and efficient patient-centered health system. In the typical African hospital setting, it takes a long time from when a patient arrives at the hospital, till when the patient is actually attended to. But EMRs help to reduce all that time wasting and inefficiency by simplifying the workflow in hospitals and providing easy access to a patient’s record, thereby saving time and energy.

By adopting EMRs, accurate and up-to-date information about a patient is available at any point of his/her continuum of care. For instance, when a patient visits another part of the country or even world, we all know the long process it’ll take to be able get his/her medical history or background most especially in an emergency. This process is even longer if there is a need to share the patient’s old paper medical records with the health care provider in the new location. First, there is the sometimes arduous process of locating the file then the unnecessary protocols that must be followed before the information is sent. Not leaving out the long wait before the document is actually received. If it’s in an emergency situation, the effects could be deleterious. Sometimes a patient’s account alone is not sufficient either for regular medical encounters or emergency situations as very critical information could be left out by the patient. Using an EMR provides an easy means for the patients’ records to be transferred between health care providers safely and quickly.

Another advantage of adopting electronic records is that it ensures the privacy and security of the patients’ data. It further secures the sharing of a patient’s records with other medical practitioners so the patient doesn’t have to worry about the safety of his/her medical records. We’ve heard of cases and emergency situations where a patient’s file could not be located either due to the carelessness of the nurse, hospital medical records staff and/or doctors. Neither does a patient have to worry about his/her records getting into the wrong hands as is very possible and common with paper records.

EMRs also help to reduce cost by reducing the inadvertent repetition and duplication of laboratory tests and decreasing paperwork. It also enables safer and more reliable prescription of medication.

EMRs help to reduce stress. Less stress means that the work-leisure balance of health professionals is also improved. This in turn increases their productivity.

The increased uptake and use of EMRs in the African healthcare system would go a long way in improving the efficiency of health care providers in delivering the best patient centered care possible.

## Modules to be used / Scope of the project

The system would contain two modules, the administration module and the client module. The administration module mainly deals with all the health records management details such as the different hospitals, departments and staff. The client module, on the other hand, mainly includes doctors, patients etc.

## Features of the System

This product is an electronic medical records (EMR) system. It is not a hospital management system (HMS) or a billing system (BS). Here are some of the features of the system:

1. **CRUD Operations**: The system should be able to allow data manipulation in the form of create, read, update and delete by authorized individuals.
1. **Export and Import**: The system should be able to import data into the system and export data out of the system as .csv or .xls file formats whenever they are needed.
1. **Filter and Sort**: The system should be able to permit sorting of data by certain parameters and filtering of data by certain values.
1. **Search**: The system should be able to allow data to be searched or looked-up by certain values as necessary
1. **Audit Trail**: The system should be able to provide an activity log, so that you can follow the trails of modifications on any item.
1. **Access Permission**: The system should be able to keep control over who has access to which content of an individual.
1. **Notification Center**: The system should have a notification center to track important/relevant updates as they pop up.
1. **Dashboard**: The system should have a decent dashboard that enables you structurally explore and keep tabs on all the relevant KPIs you need to manage your health history.
1. **Analytics**: The system should be able to keep track of user activity and monitor the performance indicators that matter at a record level. Records such as Active users per month, orders for a particular drug per month, total usage of the system, the number of patients suffering from a particular illness per year. This record should only be accessible by the administrators of the system, as it’s very crucial for privacy reasons.
1. **Third party integrations**: The system should be able to provide an API suite for third-party applications to integrate into it and fetch authorized data.

## Modules to be used / Scope of the project

The system would contain two modules, the administration module and the client module. The administration module mainly deals with all the health records management details such as the different hospitals, departments and staff. The client module, on the other hand, mainly includes doctors, patients etc.

N/B: UML(Unified Modeling Language) Diagrams to be added by Gloria, then we update the modules and features involved.

## Data to be Captured:

1. **Patient’s first name**: The patient’s first name
1. **Patient’s surname**: The patient’s surname
1. **Patient’s age**: The patient’s age
1. **Patient’s gender**: The patient’s gender
1. **Patient’s illness**: The patient’s illness at every diagnosis
1. **Patient’s address**: The patient’s house address
1. **Patient’s occupation**: The patient’s occupation
1. **Patient’s medical attendant**: The full name of the patient’s medical attendant
1. **Patient’s medical organization**: The full name of the patient’s medical organization where he is being attended to.
1. **Patient’s social info**: The patient’s social info such as Facebook, Twitter and LinkedIn
1. **Patient’s drugs**: The names of the drugs and dosage that are prescribed to a patient during every treatment.
1. **Patient’s diagnosis**: The type of diagnosis that the patient undergoes for every illness.
1. **Patient’s treatment cost**: The cost of the patient’s treatment for every illness

## PRIVACY 

Patient data is private and the patient should have control over when and with whom to share their data with. This said, it should also fit it seamlessly with current processes. The system should take several measures to protect privacy. These include:

1. A patient should give explicit consent to have their data stored in the system. This should be explained clearly during the initial visit by whoever is in charge.
2. Try as much as possible to keep data in most of the system as private. This means not requiring users to enter names, or government identification numbers(ID or Passport No.) at every turn. Once initial registration is done, a user can be assigned a random number from the system. This number would be used as the patient’s identification throughout the system, instead of doctors, lab technicians or pharmacists asking the patient for names/ID docs, they would request this number and proceed to offer their services
3. For a new doctor/physician to access the patient’s previous records, they should get authorization from the patient. This could be structured as:
   - Patient gives the Doc their Patient no from the system. The doc can then proceed to search for their previous records from other doctors. This could be treated as consent.
   - A two-factor authentication(2FA) where when the physician searches for a patient and wants to read the patient details, the patient approves the request by either sms, USSD, app or email click(TBD at the definition of technical design docs). THis should be an opt-in similar to most 2FAs
4. Doctors who can use the system need to be vetted and approved prior. They need to agree to binding T&Cs to protect user privacy
5. Define Doctor Privileges:
   - A doctor can only alter current visit details if they are the doctor in charge,
   - Previous visits even by same doctor are in read mode
   - Patients can’t edit the medical records
   - Doctor can’t access personal info unrelated to medical records like patient ID number, phone number etc. Anonymizing the patient personal info can enable docs to perform and publish research findings without risk of revealing patient data.
   - Doctors can access anonymized records of different patients with similar symptoms/prognosis/diagnosis if they need to compare notes.
6. Define Patient Privileges
   - They can only access medical records in read mode
   - They can access their profiles in edit mode

## Conclusion

The health records management system is a web-based application that assists in successful and optimal retrieval of a patients’ diagnosis history.

The proposed system provides a universal way of linking hospitals together to overcome the drawbacks of the existing system in relying on data that might otherwise be inaccurate. The system will be reliable from all aspects as the main intent is to improve the current health management system and not re-inventing the wheel. **So, the various hospitals can easily integrate it to their existing systems.**
