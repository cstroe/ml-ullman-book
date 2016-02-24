# Elements of ML Programming

These are my implementations of excercises from the ML97 edition of ["Elements of ML Programming" by Jeffrey D. Ullman](http://www.amazon.com/Elements-ML-Programming-ML97-2nd/dp/0137903871).

I'm using the [Standard ML of New Jersey](http://www.smlnj.org/) implementation of ML:

```
Standard ML of New Jersey v110.79 [built: Wed Feb 17 01:03:23 2016]
```

To run any script just pipe it into the `sml` executable:

```
sml < file.sml
```

At some point in the future it would be good to use [CM](http://www.smlnj.org/doc/CM/index.html) and [a testing framework](https://github.com/kvalle/sml-testing) for managing this as a project.

## Installing SMLNJ

Choose a directory where to install it:

```
cd $HOME
mkdir smlnj
cd smlnj
```

Then download the `config.tgz` from the [latest version](http://www.smlnj.org/dist/working/index.html) of SMLNJ.  As of this writing:

```
wget http://smlnj.cs.uchicago.edu/dist/working/110.79/config.tgz
md5sum config.tgz
```
The md5 hash should be:
```
dbac9fb6b24ebdd342ebd1a52437ad7a  config.tgz
```

Then extract it and compile it:

```
tar -xvzf config.tgz
./config/install.sh
```

If you're missing packages, the script will tell you if you need to install extra packages.  On Debian install these and retry the `install.sh`:

```
sudo apt-get install gcc-multilib g++-multilib ia32-libs
```

Finally, add the `sml` binary to your path.  On `bash`:

```
echo 'export PATH=$HOME/smlnj/bin:$PATH' >> ~/.bashrc
```

To check if everything worked, type:

```
sml
```

## Solutions

Ullman published his [official solutions](http://infolab.stanford.edu/~ullman/emlpsols/sols.html).

Others have their own repos (feel free to open an issue to add yours):
* [spewspew](https://github.com/spewspew/spew/tree/master/ml) - spewspew pointed me to ML, and the reason why this repo exists
