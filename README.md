# ![](http://j3enterprisesolution.com/wp-content/uploads/2019/03/J3-ENTERPRISE-BLUE-e1553708089314.jpg)
# Open Source Jesseframework for Mobile Platform
This Framework is design to help cross-platform enterprise mobile developer to create mobile application with enterprise feature to support enterprise solution out of the box. for more information please contact us at support@cpxz.us or +1 (231) 225 – 9544.

# Logo and Trademark
The J3 Enterprise Solution logo are trademarks of Computer Expertz Ltd. for more information on our copyrigh notice please visit https://computerexpertzjamaica.com/copyright-notice/
### Introduction
Computer Expert Ltd. (JessieFramework) owner and oversesees the trade mark for J3 Enterprise Solution name and logo. The trade mark was develop for:
-To make it easy for anyone to used J3 Enterprise Solution name or logo for according to the open source agrement and to help improve the quality of J3 opensource framework.
# This framework will include but not limited to:
### Security
- AD
- OAuth (Google,Office365)
- 2FA
- Password Polices
- Password Age
- Force Password Reset
- Device Enrollment
- IP White Listing
### Database
Application must support the following database typos with the ability to switch database type at anytime
- MySQL (Default)
- SQLite
- Microsoft SQL
### Application Loging (Apploger)
- Audit Trail
- Fault Log
- Session Log
### Notification
- User notification
- Email notification
- Live Grids and Forms
### UI
####	Core
##### Login UI
- Username
-	Password
-	Pin Login Only (Must be able to switch between pin and full user name and password)
-	Company Code
-	Forget Password Link
#####	Login Validation/Configuration – Validation configuration should include
-	Set required field
-	Set case sensitivity (Yes/No)
-	Set min/max length for username
-	Set regular expression for password strength
-	Set password age
-	Set password history (prevent reused password)
-	Enable/Disable password reminder
	Set 2FA code for SMS, Google authentication and Email
-	Enable/Disable open authentication for Ofifce365, Google, Facebook and Twitter
-	Enable/Disable user lockout after set number of attempt – lock out should also blacklist user IP Address
-	Google recapture should be used to validate input
-	Enable enterprise support for Windows Active Director
####	Device Enrolment
-	Device Unique Install ID (Maybe different for apple and android)
-	Device License base on install code pull from web server
####	Device Enrolment Validation
-	Device must be enrolling before access application
-	Enrollment check after login
-	Number of enrollment should be based on device seat allocate to customer

####	Communicate Setup (Mobile Device)
-	Main API URL – This is the main URL for cloud server
-	Username/Password – This is the main username and password for cloud web API. Should have ability to use API Key
-	Sync Frequency - Ability to select interval for sync
####	Background Jobs
-	Setup sync Job with start and stop time – must include robust scheduling
####	Database Setup
-	Ability to used MySQL/MSSQL/SQLite

####	Global Progress indicator
-	Each screen/page must include a progress bar on the top – All request for processing must run on background thread. Each process must be indicated on progress bar
####	WhatApp Integration
-	Send and received WhatsApp for business message

### Workflow
- Ability to setup workflow on each function/doctype

# Features and Concepts
For this framework we want the ability to give external user the ability to develop models and install as add –in. Application framework must be separate from application feature. Feature are added through adding a database objects. Each database object should create:
-	Data model
### This should then generate:
-	UI
-	Business Objects
-	Validation
### Language
-	India
-	English
-	Spanish
### Integration
- Web API with business logic implemented
