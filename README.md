# Cylc TextMate Bundle

Last updated: <span actions:bind='update-date'>2020-07-23</span>

A TextMate bundle for working with [Cylc](http://www.cylc.org) workflow
configuration files.

## Installing

Download this repository keeping the `.tmbundle` extension.

* TextMate - Open the bundle file.
* PyCharm - [instructions](https://www.jetbrains.com/help/pycharm/tutorial-using-textmate-bundles.html)
* WebStorm - [instructions](https://www.jetbrains.com/help/webstorm/tutorial-using-textmate-bundles.html)
* Sublime Text 3:

    ``git clone https://github.com/cylc/Cylc.tmbundle <path to sublime packages>/Cylc.tmbundle``

   (to get package path click Preferences => Browse Packages)

## FAQ - How do I enable syntax highlighting for all `.rc` files?

By default this bundle will enable highlighting for `suite.rc` and `.cylc` files (plus a few others), but not all `.rc` files. However, you can add your own file associations:

Once you've downloaded the repository, open the `Syntaxes/cylc.tmLanguage` file and add `<string>rc</string>` under the `fileTypes` key, like this:
```diff
 <?xml version="1.0" encoding="UTF-8"?>
 <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
 <plist version="1.0">
 <dict>
        <key>fileTypes</key>
        <array>
                <string>suite.rc</string>
                <string>cylc</string>
+               <string>rc</string>
        </array>
...
```
You will probably have to restart the editor for this to take effect.

Note: you can add exact matches (e.g. `suite.rc.processed`) OR extensions without the dot (e.g. `rc`), but you cannot use wildcards (e.g. `*` won't work).

## Building

This bundle is built from the
[Cylc TextMate grammar](https://github.com/cylc/cylc-textmate-grammar).

The bundle needs to be re-built when the grammar is updated. This is done by
running `build.rb`.

Tue builder requires the
[plist](https://rubygems.org/gems/plist/versions/3.5.0) gem.

## How to Build A Bundle From Scratch

Bundles can be created via the TextMate app (Mac OS only).

The bundle editor appears to have disappeared in version 2, these steps apply
to TextMate 1.5:

1. Open TextMate.
2. Open the bundle editor via the bundle menu.
3. Create a new bundle.
4. Within that bundle create a new language.
5. Close the bundle editor.
6. Navigate to `/Users/$USER/Library/Application Support/TextMate/Bundles/`.

You now have a blank bundle. We need the bundle for two things:

1. The `info.plist` file (which we will keep).
2. The `uuid` in the language file (which we will use in the build process).
