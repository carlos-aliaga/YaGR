/*
**  Usage:
**      scrRoll_Dice(num,sides)
**
**  Arguments:
**      num         number of dice to roll
**      sides       number of sides on each dice
**
**  Retuns:
**      the sum of the given number of rolls of
**      dice with the given number of sides
**
**  Example:
**      scrRoll_Dice(3,6) ==> (4 + 2 + 5) ==> returns 11
**
**  GMLscripts.com
*/
{
    var num,sides,sum;
    num = argument0;
    sides = argument1;
    sum = 0;
    repeat (num) sum += floor(random(sides))+1;
    return sum;
}
