# GtC Alerts
Gardening the Community Alerts Mobile apps
## Hack for Western MA 2015
This project was made during the Hack for Western MA 2015 event
in Springfield, MA on the weekend of June 6-7.
## Project information
You can find out more about the project vision here:
https://docs.google.com/presentation/d/1PXgl83sfim3NRn_lFPWCReHn-OEwjKpELAiC07VfRkA/edit#slide=id.p4
The basic idea was to make a mobile app that could alert the wider Gardening the Community volunteers
and supporters about important activities (volunteer opportunities, events, vegetable availability, and calls for supply donations)
## Solution
This repository contains a native iOS and Android app that shows past alerts and can receive new Push notifications. The project uses a Parse account, but is configurable.
### iOS notes
To build you need to get or make a Keys.plist with your Parse key information. Comments in the `AppDelegate.m` file explain what to do.
### To Do
1. This project currently uses GitHub to store a sample JSON file. This needs to be replaced with a real CMS backend for the data and the URLs in the app would need to be updated.
