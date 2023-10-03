# mrfilecrush
Filecrush cleans up your SP! Smash! Crush! Smashy crunch crunch!

## WARNING
Mr Filecrush is an advanced tool which **completely removes all data and configuration for a Filecoin SP created using the SP Automation Stack**. It is a tool for advanced users only, while at the same time should be considered a **blunt instrument** - it will happily destroy a real SP and **lose you FIL** if you let it!

## Usage
On an SP you _really really want to reset:_

`cd mrfilecrush`

`./crush-all-but-caches.sh`

## What it does
Mr Filecrush does all of the following - **without asking you further** - you've been warned!
* Deletes all sealing directories and sealed sectors (! THIS IS DANGEROUS IF YOU ARE RELYING ON THESE SECTORS FOR PROVING!)
* Uninstalls all Lotus, Boost and Booster related services
* **DELETES ALL LOTUS WALLETS**
* Deletes the Lotus and Boost UNIX users
* (Optionally) deletes parameter caches
* Deletes/resets the chain

Suffice it to say, be careful!
