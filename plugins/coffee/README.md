## Coffeescript Plugin

This plugin provides aliases for quickly compiling and previewing your
<<<<<<< HEAD
<<<<<<< HEAD
coffeescript code.
=======
cofeescript code.
>>>>>>> 03ba0359dc233d01d6994bc9cf062cfebffa1fac
=======
coffeescript code.
>>>>>>> 1b7fc2f3aca32ba8713be0e27305c5cf578033f6

When writing Coffeescript it's very common to want to preview the output of a
certain snippet of code, either because you want to test the output or because
you'd like to execute it in a browser console which doesn't accept Coffeescript.

Preview the compiled result of your coffeescript with `cf "code"` as per the
following:

```zsh
$ cf 'if a then b else c'
if (a) {
  b;
} else {
  c;
}
```

Also provides the following aliases:

* **cfc:** Copies the compiled JS to your clipboard. Very useful when you want
           to run the code in a JS console.

* **cfp:** Compiles from your currently copied clipboard. Useful when you want 
           to compile large/multi-line snippets

* **cfpc:** Paste coffeescript from clipboard, compile to JS, then copy the
            the result back to clipboard.
