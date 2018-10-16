# esx_dmvschool
Realistic DMV school for ESX

## Requirements
- [esx_license](https://github.com/ESX-Org/esx_license)

## Download & Installation

### Using [fvm](https://github.com/qlaffont/fvm-installer)
```
fvm install --save --folder=esx esx-org/esx_dmvschool
```

### Using Git
```
cd resources
git clone https://github.com/ESX-Org/esx_dmvschool [esx]/esx_dmvschool
```

### Manually
-Download the latest [release](https://github.com/Pyth3rEx/esx_dmvschool/releases)</p>
***

-Unzip /esx_dmvschool in /[ESX] as shown below: (_ are non-necessary files/folder)</p>
```
- server-data
 - resources
  - [ESX]
   - esx-dmvschool
    - client
    - html
    - locales
    - localization
    - server
    _ LICENSE
    _ README.md
    - _ressource.lua
    - config.lua
    _ esx_dvmschool.sql
```
***

-Import `/esx_dmvschool.sql` to your database, make sure to change `DATABASENAME` to your database's name. Should be "EssentialMode" in most cases.</p>
***

-Add the below in your server.cfg, if you are confused just add it below the others `start esx-nameOfRessource` </p>
`start esx_dmvschool`
***


```
start esx_dmvschool
```

# Legal
### License
esx_dmvschool - realistic DMV school for ESX

Original by: Jérémie N'gadi
Modfied by: Pyth3rEx

Copyright (C) 2018 Pyth3rEx

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
