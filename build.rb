#!/usr/bin/env ruby

require('json')
require('plist')

JSON_FILE='cylc-textmate-grammar/cylc.tmLanguage.json'
DEST_FILE='Syntaxes/cylc.tmLanguage'

grammar = JSON.load(File.open(JSON_FILE, 'r'))

grammar = grammar.reject { |k,v| k == '$schema' }
grammar['scopeName'] = 'source.cylc'
grammar['uuid'] = 'FC7AB0B4-9DE2-4162-8470-6A3139F90599'

File.open(DEST_FILE, 'w') {
  |f| f.write Plist::Emit.dump(grammar)
}
