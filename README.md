## About
An auto-download script that mirrors an online university (GUC in this case) directory using wget over an NTLM Authorized web portal

## Main Aim
The main aim of this project is to quickly download all my learning material from my university online website

## Challenges
- the website uses an old security method for authentication
- i want to create a script that quickly downloads all my learning material directly to my computer

## Running
- run `wGetFiles_final.bat`
- at first run the script will ask you to init bot `param.txt` and `urls.txt` files
- `param.txt` will store your username and passwords for the NTLM authentication
- `urls.txt` will carry the links to your targeted courses that will be autodownloaded later
- next run will directly run without asking anymore init.

## Publishing
You may use [Bat To Exe Convertor](https://www.portablefreeware.com/?id=1660) to convert `wGetFiles_final.bat` into `guc_grab.exe`.