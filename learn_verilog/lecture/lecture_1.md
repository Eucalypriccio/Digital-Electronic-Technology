# Step 1

## Basic Unit: Module

```verilog
module module_name(
    input port1, port2, ...
    output port3, port4, ...
    inout port5, port6, ...
);

/*
declaration
1. port patters: input, output, inout
2. parameters definition: symbol constant
3. data types: wire, reg, ...
*/

/*logical function description:
references to low-level modules or basic gate-level primitives
consecutive assignment statement(assign)
process block function description statement(initial, always, ...)
*/
```

## Basic Grammar

1. seperators
   * \b
   * \t
   * \n
   * page break
2. comments
   * /*---*/
   * //
3. identifiers and keywords
4. logical values

   |value|means...|
   |-|-|
   |0|logic false|
   |1|logic true|
   |x or X|uncertain value|
   |z or Z|high resistance state|

5. constants
   * integer type
     * decimal
     * <+/->< size >'< signed >radix integer_number
       * size: bits in the corresponding binary number
       * radix: b/B(binary), d/D(decimal), h/H(hexadecimal), o/O(octal)
   * floating point type
     * decimal
     * 5E-6, 23_5.1e2
6. parameters

    ```verilog
    parameter <signed><[msb:lsb]> para1 = const1, para2 = const2, ...
    ```

    [msb:lsb]: bitwidth of the parameter

## Data Types

1. net type
2. variable type

## Operators

## Gate-Level Primitives
