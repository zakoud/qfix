# qfix

# Description

Lightweight q-to-fix and fix-to-q library

Support dictionaries, standard tables, and tables with nested cells (i.e. order books)


# Examples

Convert table (or dictionary) to FIX format (as string)
```
q)show t:([] time:5?.z.t;sym:5?`MSFT`GOOG`IBM;price:5?50.0;size:5?100)
time         sym  price    size
-------------------------------
17:40:45.617 IBM  49.29141 54  
02:09:51.494 GOOG 18.38554 12  
15:40:20.955 IBM  14.51357 82  
02:43:08.653 GOOG 6.153794 44  
17:22:07.598 IBM  32.38869 87  
q).qfix.p t
"time=17:40:45.617\001sym=IBM\001price=49.29141\001size=54"
"time=02:09:51.494\001sym=GOOG\001price=18.38554\001size=12"
"time=15:40:20.955\001sym=IBM\001price=14.51357\001size=82"
"time=02:43:08.653\001sym=GOOG\001price=6.153794\001size=44"
"time=17:22:07.598\001sym=IBM\001price=32.38869\001size=87"
```

Unparse Ctrl+A delimited string(s) to q dictionary (table)
```
q).qfix.up "time=03:21:05.513s\001sym=MSFT\001price=17.60615\001size=147"
time | "03:21:05.513s"
sym  | "MSFT"         
price| "17.60615"     
size | "147"      
```

# TODO
* Add smart regex for unparsing
* Support for dictionaries within cells
* Support for keyed tables
