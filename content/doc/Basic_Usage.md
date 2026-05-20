# Learn to use OPAM in 2 minutes

This short tutorial covers the very basic use cases to get you started with
OPAM. 

## First-time use

Assuming you have a switch set up

```
opam repository add pac https://github.com/uq-pac/opam-repository.git
opam update
```

## Browsing available packages

The following commands will enable you to obtain information on available
packages:

```
opam list -a            # List all available packages
opam search QUERY       # List packages with QUERY in their name or description
opam info PACKAGE       # Display information about PACKAGE
```

Another option to obtain information on packages is to browse the
[Packages](../packages/index.html) section of the [OPAM website](http://opam.ocamlpro.com/).

## Installing a package

The two commands you will probably use the most with OPAM are:

```
opam update             # Update the packages database
opam install PACKAGE    # Download, build and install the latest version of PACKAGE
```

## Upgrading your installed packages

You may want to regularly issue these commands to keep your packages up-to-date:

```
opam update             # Update the packages database
opam upgrade            # Re-install packages that were updated since last upgrade
```

