[![MELPA](https://melpa.org/packages/zimports-badge.svg)](https://melpa.org/#/zimports)

# zimports

Use the python [zimports](https://github.com/sqlalchemyorg/zimports)
package to sort your python imports.

## Installation

zimports is available via [melpa](https://melpa.org/#/zimports). Make
sure the python [zimports](https://github.com/sqlalchemyorg/zimports)
executable is on `PATH`.

## Usage

Call `zimports-buffer` to sort imports in the current python buffer.
Enable `zimports-mode` to sort imports every time you save the buffer.

## Turn on zimports with dir-locals

You can turn on `zimports-mode` by creating a `.dir-locals.el` file
with the following contents:

```elisp
((python-mode . ((mode . zimports))))
```
