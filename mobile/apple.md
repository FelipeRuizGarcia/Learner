## App Store Review Guidelines

https://developer.apple.com/app-store/review/guidelines/#introduction


## xcode Cloud | apple ci

Its Free (  25 hours / month) until Dic 2023!!!!

* You can set up a workflow able to deploy for `App Store`

#### Intro

https://developer.apple.com/xcode-cloud/

https://developer.apple.com/documentation/xcode/xcode-cloud-workflow-reference


#### Writing custom build scripts

https://developer.apple.com/documentation/xcode/writing-custom-build-scripts


#### Use a custom build script to install a third-party dependency or tool

https://developer.apple.com/documentation/xcode/making-dependencies-available-to-xcode-cloud#Use-a-custom-build-script-to-install-a-third-party-dependency-or-tool



#### How to see the full logs on the CI ? 

with xcode IDE

<img width="485" alt="image" src="https://user-images.githubusercontent.com/14207635/203414670-899f91ad-bc3c-4c4b-8700-5637fa94d035.png">

With XCode Cloud 

<img width="427" alt="image" src="https://user-images.githubusercontent.com/14207635/203414910-64a6489c-b033-4e20-9a0e-bdc97167a866.png">


#### Xcloud - Archive an artifact

https://developer.apple.com/documentation/xcode/configuring-your-xcode-cloud-workflow-s-actions#Add-an-archive-action

---

###  Testing Apps with TestFlight

https://testflight.apple.com/

Beta Testing Made Simple with TestFlight

https://developer.apple.com/testflight/

Internal testing can access immediately to beta apps for 90 days.
External testing require approval from TF team. 

You can link the builds from xcode cloud to TF internal or external testing.

##### Internal Testing

Add the team in the `Users and Access` with `Developer` Access.

https://appstoreconnect.apple.com/access/users

![image](https://user-images.githubusercontent.com/14207635/205101927-3fd90a2c-f9f8-4547-8903-97493c713eac.png)

Then, the user needs accept the email invitation as dev in the apple account.
Later, send the invitation to Testing Internal team, for the desired app.
In this point, the user needs can go to TF app, accept and ready !


---

### Capacitor Apps

Put the ci scripts at

```
ios/App/ci_scripts/ci_pre_xcodebuild.sh
```

----

https://help.apple.com/developer-account/#/devbfa00fef7

https://developer.apple.com/es/support/enrollment/

https://developer.apple.com/es/support/D-U-N-S/

https://www.dnb.com/duns-number/get-a-duns.html



----


### Hackintosh

https://github.com/kholia/OSX-KVM


#### EC2 MacOs

https://aws.amazon.com/about-aws/whats-new/2020/11/announcing-amazon-ec2-mac-instances-for-macos/
