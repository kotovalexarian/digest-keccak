Digest::Keccak
==============

This Ruby extension implements the [Keccak](http://keccak.noekeon.org/)
(draft version of SHA-3) cryptographic hash function. It is based on
the reference C implementation, version 3.2. The exposed interface
is almost identical to that of the `digest` standard library.



Usage
-----

Keccak supports 5 hash lengths: 224-bit, 256-bit, 384-bit, 512-bit
and variable length. Variable length is not supported by this Ruby extension.
Unless the user specifies otherwise, this Ruby extension assumes 512-bit.

```ruby
    require 'digest/keccak'

    # Generate 512-bit digest.
    Digest::Keccak.digest("foo")       # => "\025\227\204*..."
    Digest::Keccak.hexdigest("foo")    # => "1597842a..."

    # Generate 224-bit digest.
    Digest::Keccak.digest("foo", 224)       # => "\332\251M\247..."
    Digest::Keccak.hexdigest("foo", 224)    # => "daa94da7..."

    # Use this interface to feed data in chunks. 512-bit by default.
    digest = Digest::Keccak.new
    digest.update("f")
    digest.update("o")
    digest.update("o")
    digest.digest       # => "\025\227\204*..."
    digest.hexdigest    # => "1597842a..."

    # You can pass a hash length to the constructor.
    digest = Digest::Keccak.new(224)
```



Running the test suite
----------------------

Run the test suite as follows:

```
    make test
```

A part of the test suite is automatically generated from Keccak's reference
test suite.
