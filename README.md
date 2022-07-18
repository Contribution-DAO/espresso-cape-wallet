# Espresso Wallet Setup

### Sui Node Requirements
>:black_square_button: OS Ubuntu 18.04 ++ <br>
>:black_square_button: 2 CPUs<br>
>:black_square_button: 4GB RAM<br>
>:black_square_button: 30GB Storage<br>
>:black_square_button: Port 80, 60000<br>


## Official Site:

Website: https://espressosys.com/

Github: https://github.com/EspressoSystems

CAPE docs: https://docs.cape.tech/

CAPE user guide: https://docs.cape.tech/espresso-systems/cape-user-guide/welcome

# Set up Espresso Wallet with  script.
## 1. Switch to root user

```
sudo su
```

## 2. Clone and Install Scripts

```
wget -q -O cape_wallet.sh https://raw.githubusercontent.com/Contribution-DAO/espresso-cape-wallet/main/cape_wallet.sh && chmod +x cape_wallet.sh && sudo /bin/bash cape_wallet.sh
```

## 3. Setup Proxy

In Windows, open cmd and run as administrator.



Enter the following commands in the terminal.
```
netsh interface portproxy add v4tov4 listenaddress=127.0.0.1 listenport=80 connectaddress=IP_YOUR_SERVER connectport=80
```

```
netsh interface portproxy add v4tov4 listenaddress=127.0.0.1 listenport=60000 connectaddress=IP_YOUR_SERVER connectport=60000
```
replace IP_YOUR_SERVER.

![image](https://user-images.githubusercontent.com/83507970/179587364-e75906e8-f4b5-42c9-8da4-cd16ebed9dea.png)



