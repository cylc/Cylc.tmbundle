#!/usr/bin/env ruby
# THIS FILE IS PART OF THE CYLC SUITE ENGINE.
# Copyright (C) 2008-2019 NIWA & British Crown (Met Office) & Contributors.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
