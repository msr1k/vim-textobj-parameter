" vim-textobj-parameter - Text objects for function parameter.
" Version: 0.1.1
" Author: ampmmn(htmnymgw <delete>@<delete> gmail.com)
" Modifier: sgur(sgurrr <delete>@<delete> gmail.com)
" URL: http://d.hatena.ne.jp/ampmmn
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
if exists('g:loaded_textobj_parameter')  "{{{1
  finish
endif


" Interface  "{{{1

let s:prefix = get(g:, 'textobj_parameter_default_key_mappings_prefix', '')

call textobj#user#plugin('parameter', {
\      '-': {
\        'select-i': "i" . s:prefix . ",",  '*select-i-function*': 'textobj#parameter#select_i',
\        'select-a': "a" . s:prefix . ",",  '*select-a-function*': 'textobj#parameter#select_a',
\      }
\    })


" Fin.  "{{{1

let g:loaded_textobj_parameter = 1

" __END__
" vim: foldmethod=marker
