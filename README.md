# MulleObjCUUIDFoundation

#### 🛂 MulleObjCUUIDFoundation provides NSUUID

This class generates uuid4 NSStrings and NSData. The class will not accept
any old 16 byte array as an UUID. Read [Universally unique identifier](https://en.wikipedia.org/wiki/Universally_unique_identifier)
about *variant* and *version* bits. These bits must be cleared in the incoming
bytes. You only have to worry about this, if you are getting foreign UUIDs.


#### Example:

``` objc
mulle_printf( "%@\n", [NSUUID uuid]);
```


## mulle-sde

This is a [mulle-sde](//github.com/mulle-sde) project. mulle-sde combines
recursive package management with cross-platform builds via **cmake**:

| Action  | Command                               | Description               |
|---------|---------------------------------------|---------------------------|
| Build   | `mulle-sde craft [--release/--debug]` | Builds into local `kitchen` folder |
| Add     | `mulle-sde dependency add --c --github MulleFoundation MulleObjCUUIDFoundation` | Add MulleObjCUUIDFoundation to another mulle-sde project as a dependency |
| Install | `mulle-sde install --prefix /usr/local https://github.com/MulleFoundation/MulleObjCUUIDFoundation.git` | Like `make install` |


### Manual Installation


Install the requirements:

| Requirements                                      | Description             |
|---------------------------------------------------|-------------------------|
| [uuid4](//github.com/rxi/uuid4)                   | Place into `src`        |
| [MulleObjCValueFoundation](//github.com/MulleFoundation/MulleObjCValueFoundation) |  |


Install into `/usr/local`:

``` sh
cmake -B build \
      -DCMAKE_INSTALL_PREFIX=/usr/local \
      -DCMAKE_PREFIX_PATH=/usr/local \
      -DCMAKE_BUILD_TYPE=Release &&
cmake --build build --config Release &&
cmake --install build --config Release
```


<!--
extension : mulle-sde/sde
directory : demo/library
template  : .../README.md
Suppress this comment with `export MULLE_SDE_GENERATE_FILE_COMMENTS=NO`
-->
