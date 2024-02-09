# Airdrop Snapshots

All the snapshots are arranges according to the epochs.

**IMP :**
Some wallets may have different formats such as argent wallet addresses have all the alphabetical characters in uppercase so to keep all the formats compatible we parse the addresses on our backend to a specific format so that there is no inconsistency in the data.

So If you are not able to find your address in the json files.

## Method 1 (Manual Conversion)

If you don't know how to run the shell script you can do the following steps :

1. Take your address and remove all the zeroes that are in front of the main hash part.

   ```sh
   0x01E307316999C4830aDa67b495D03246Ab205e77853bB117Da7B555122a33BC7

   0x            0..0                   1E307316999C4830aDa67b495D03246Ab205e77853bB117Da7B555122a33BC7
   [prefix]    [zeroes to remove]      [Main hash part]

   [address] -> 0x1E307316999C4830aDa67b495D03246Ab205e77853bB117Da7B555122a33BC7
   ```

2. Now convert all the uppercase alphabetical letters into lowercase.

   ```sh
   0x1E307316999C4830aDa67b495D03246Ab205e77853bB117Da7B555122a33BC7

   [final address] -> 0x1e307316999c4830ada67b495d03246ab205e77853bb117da7b555122a33bc7
   ```

This address is now parsed you can now search in the file.

## Method 2 (Shell Script Method)

Another option is to use the shell script provided.

```sh
# Initial address :
# =================
# Argent Wallet Address
# 0x01E307316999C4830aDa67b495D03246Ab205e77853bB117Da7B555122a33BC7

$ ./parse_script.sh

Enter your address: 0x01E307316999C4830aDa67b495D03246Ab205e77853bB117Da7B555122a33BC7
Processed address: 0x1e307316999c4830ada67b495d03246ab205e77853bb117da7b555122a33bc7
```

## Method 3 (API call)

Or you can just provider you address in our api and get the data directly. Your address will be parsed automatically in our backend and this api will return the epoch wise and snapshot wise data.

```sh
$ curl https://hstk.fi/api/get-epoch-wise-data/<YOUR_ADDRESS_HERE>

# Eg :
# https://hstk.fi/api/get-epoch-wise-data/0x0161b5285686f19a67e5a39871d4472e551982f79dd888ab1cb9d25ca222e3a9
```
