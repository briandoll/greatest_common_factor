greatest_common_factor
    by Brian Doll
    http://emphaticsolutions.com

== DESCRIPTION:

Ruby provides the ability to calculate the greatest common factor (gcf) that exists between two integers.
This gem provides that same ability on arrays of integers.

== FEATURES:
 * Calculate the GCF on an array of integers
 * Factor the array of integers by the GCF
 * Calculate non-exact GCF with a specified tolerance

== SYNOPSIS:
 * [12,16,8,40].greatest_common_factor => 4
 * [12,16,8,40].gcf => 4
 * [12,16,8,40].factored_by_gcf => [3, 4, 2, 10]
 * Fuzzy:
 * [28,38,73,93].factored_by_gcf    => [28,38,73,93]
 * [28,38,73,93].factored_by_gcf(1) => [14, 19, 36, 46]

== REQUIREMENTS:

* None

== INSTALL:
 * sudo gem install briandoll-greatest_common_factor

== LICENSE:

(The MIT License)

Copyright (c) 2008 Brian Doll

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
