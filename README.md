# zimports

Use the python [zimports](https://github.com/sqlalchemyorg/zimports)
package to sort your python imports.

## Usage

Call `zimports-buffer` to sort imports in the current python buffer.
Enable `zimports-mode` to sort imports everytime you save the buffer.

## Turn on zimports with dir-locals

You can turn on `zimport-mode` by creating a `.dir-locals.el` file
with the following contents:

```elisp
((python-mode . ((mode . zimports))))
```
