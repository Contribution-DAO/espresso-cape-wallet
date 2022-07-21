# Espresso Wallet Windows Setup 

### CAPE System Requirements
>:black_square_button: OS Windows 10 or 11 <br>
>:black_square_button: WSL<br>
>:black_square_button: Ubuntu 22.04 LTS<br>
>:black_square_button: Docker for windows<br>
>:black_square_button: Port 80, 60000<br>


## Official Site:

Website: https://espressosys.com/

Github: https://github.com/EspressoSystems

CAPE docs: https://docs.cape.tech/

CAPE user guide: https://docs.cape.tech/espresso-systems/cape-user-guide/welcome

# Set up Espresso Wallet on Windows.
## 1. Install Virtual Machine Platform. and Windows hypervisor platform
Search for Windows features.

```
Windows features
```

![image](https://user-images.githubusercontent.com/83507970/180125111-7e139cce-73c9-4e07-b839-8cdb31037d62.png)

Open and scroll down, Click on  Virtual Machine Platform. and Windows hypervisor platform.

![image](https://user-images.githubusercontent.com/83507970/180125348-15a95a8a-273b-42db-a186-6c59058d578f.png)


### After installation of the component, you must restart Windows before proceeding with the installation of WSL components and an Ubuntu application.





## 2. Installation of WSL from the Microsoft Store

Open Microsoft Store, and search for Windows subsystem.



```
Windows subsystem
```


![image](https://user-images.githubusercontent.com/83507970/180126163-c4805037-dfb1-4aea-a1f6-4ac69a8d696e.png)

Click on the item Windows Subsystem for Linux Preview to open the corresponding application page.

Click on Get to download and install the Windows subsystem.

![image](https://user-images.githubusercontent.com/83507970/180126454-fbb32217-6b98-4528-ba1e-c67ca8fd2d6d.png)





## 3. Download Ubuntu

Opening the Microsoft Store app and searching for Ubuntu.


```
Ubuntu 22.04 LTS
```

![image](https://user-images.githubusercontent.com/83507970/180128097-fd51bc91-d720-4309-9b38-bc4876a09d00.png)

Click on the item Ubuntu 22.04 LTS to open the corresponding application page.

Click on Get to download and install the Ubuntu 22.04 LTS.

![image](https://user-images.githubusercontent.com/83507970/180128191-e2030768-81e8-464e-ac4c-5f5aec58afd0.png)


Ubuntu will then install on your machine.

Once installed, you can either launch the application directly from the store or search for Ubuntu in your Windows search bar.

![image](https://user-images.githubusercontent.com/83507970/180128477-4c175179-04f6-41ba-9887-e0c73b67361f.png)






## 4. Download Docker.

Go to https://docs.docker.com/desktop/install/windows-install/ and Download Docker Desktop for Windows.

![image](https://user-images.githubusercontent.com/83507970/180128954-e9aee1ff-6c0f-4220-a37e-3be1f360c597.png)

Double-click Docker Desktop Installer.exe to run the installer.

Once installed, you can either launch the application directly from the store or search for Ubuntu in your Windows search bar.


## 5. Install Espresso Wallet

- 5.1  Switch to root user

Search for Ubuntu in your Windows search bar, for open ubutu terminal

![image](https://user-images.githubusercontent.com/83507970/180128477-4c175179-04f6-41ba-9887-e0c73b67361f.png)


![image](https://user-images.githubusercontent.com/83507970/180132619-e6a8a261-df9a-4e51-b6d5-a855bcb7a99d.png)



```
sudo su
```

- 5.2  Download image espresso Wallet.

```
wget -q -O win_espresso.sh https://raw.githubusercontent.com/Contribution-DAO/espresso-cape-wallet/main/windows/win_espresso.sh && chmod +x win_espresso.sh && sudo /bin/bash win_espresso.sh
```

## 6. Espresso Wallet setup.
Open chrome or firefox browser, and type http://localhost/onboarding and please follow instruction https://docs.cape.tech/espresso-systems/cape-user-guide/creating-a-new-wallet to create CAPE wallet.


```
http://localhost/onboarding
```

![image](https://user-images.githubusercontent.com/83507970/179597973-ab8005bb-59fa-4117-8e17-e846de888ac7.png)

