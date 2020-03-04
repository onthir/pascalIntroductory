Program onthir(input, output);

const
TAXRATE = 0.1044;
SHIPPINGRATE = 7.50;

var
    {define variables}
    amount, final, tax, shippingCharge: real;
    
{function to calculate tax}
function calculateTax(amount: real): real;
var
    result: real;
begin
    calculateTax := TAXRATE * amount;
end;

{begin of the main program}
begin
    
    {read from the stdin}
    readln(amount);

    {calculate the tax amount}
    tax := calculateTax(amount);
    
    {condition to allow or deny free shipping}
    begin
        if(amount > 75) then
            shippingCharge := 0
        else
            shippingCharge := SHIPPINGRATE;
    end;
    
    {calculate charges}
    final := amount + tax + shippingCharge;
    
    {final display}
    writeln('Carlas''s Closet');
    writeln('Subtotal: $', amount:4:2);
    writeln('Taxes:    $ ', tax:3:2);
    writeln('Shipping: $ ', shippingCharge:3:2);
    writeln('Total:    $', final:4:2);
    
    
end.
