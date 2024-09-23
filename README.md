# RocketDB
A rocket fast, light-weight, in-memory cache (similar to Redis) build with lua for blazingly fast results,
The cache uses creationix/weblit for making a rest API, this rest API makes the software accessible to all languages as it uses http based requests which all languages use.

> ### Update, authentication with keys has just been added!

# Installation
First install (Luvit)[https://luvit.io/install.html] into the project folder like this,
for windows (SPECIFICALLY POWERSHELL) use:
```
PowerShell -NoProfile -ExecutionPolicy unrestricted -Command "[Net.ServicePointManager]::SecurityProtocol = 'Tls12'; iex ((new-object net.webclient).DownloadString('https://github.com/luvit/lit/raw/master/get-lit.ps1'))"
```
for Linux, MacOS or FreeBSD use:
```
curl -L https://github.com/luvit/lit/raw/master/get-lit.sh | sh
```
Then run the next command to install all the dependencies (for powershell and linux or mac):
```
./lit install
```
Then change ```src/config.lua``` to include any sort of **secure** key that you want, there is a default example key in there, but it is suggested you do **not** use it for production.
Finally, run the server:
```
./luvit src/main
```

# Usage
There are no libraries for RocketDB at the moment but here is how to send requests to operate RocketDB.

To get a value send a request of the sort:
```
GET /api/myvariable
```
This will return a JSON object of the sort:
```json
{
    "value": "I'm on a rocket to space!"
}
```
To update/create a variable use the next request:
```
PUT /api/myvariable
```
The payload (request body) should look like this:
```json
{
    "value": "Hello space!"
}
```
You can also update/create a table as you can send any JSON in "value" and it will be stored, here is an example:
```json
{
    "value": {
        "name": "Bobby JR",
        "age": 23,
        "altitude": "SPACE!"
    }
}
```
Yes, this is how easy RocketDB is!