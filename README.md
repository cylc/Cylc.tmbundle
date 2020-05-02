# Cylc TextMate Grammar

Last updated: 2020-05-02 2020

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
