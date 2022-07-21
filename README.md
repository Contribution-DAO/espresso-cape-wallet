# Espresso Wallet VPS Setup 

### CAPE System Requirements
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

![image](https://user-images.githubusercontent.com/83507970/179594483-052872c1-d97a-4032-9fc2-c08f51c413b5.png)



## 4. Faucets ETH,USDC on Goerli testnet
If you haven't used the Goerli testnet before, you'll need to request some testnet $ETH on Goerli. 

The following faucets may be useful: https://faucet.paradigm.xyz/



## 5. Cape Wallet setup.
In Windows, open chrome or firefox browser, and type http://localhost/onboarding and please follow instruction https://docs.cape.tech/espresso-systems/cape-user-guide/creating-a-new-wallet to create CAPE wallet.


```
http://localhost/onboarding
```

![image](https://user-images.githubusercontent.com/83507970/179597973-ab8005bb-59fa-4117-8e17-e846de888ac7.png)





## 6. Reset Proxy Setup.
After setting up Espresso Wallet complete, Don't forget to turn off reset settings data

Resetting these settings:

```
netsh interface portproxy dump
```

```
netsh interface portproxy reset
```

```
netsh interface portproxy delete
```



