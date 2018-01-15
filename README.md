# qfix

# Description

Lightweight q-to-fix and fix-to-q library

Support dictionaries, standard tables, and tables with nested cells (i.e. order books)


# Examples

Convert table (or dictionary) to FIX format (as string)
```
q).fix.p ([] time:5?.z.t;sym:5?`MSFT`GOOG`IBM;price:5?50.0;size:5?100)
"time=15:34:36.210\001sym=GOOG\001price=28.46704\001size=73"
"time=06:35:35.128\001sym=IBM\001price=7.809836\001size=79"
"time=17:34:22.860\001sym=MSFT\001price=23.55095\001size=85"
"time=14:34:20.864\001sym=GOOG\001price=39.69938\001size=19"
"time=17:51:38.494\001sym=MSFT\001price=37.90814\001size=78"
```

Unparse Ctrl+A delimited string(s) to q dictionary (table)
```
q).fix.up "time=03:21:05.513s\001sym=MSFT\001price=17.60615\001size=147"
time | "03:21:05.513s"
sym  | "MSFT"         
price| "17.60615"     
size | "147"      
```

# TODO
* Add smart regex for unparsing
* Support for dictionaries within cells
* Support for keyed tables
