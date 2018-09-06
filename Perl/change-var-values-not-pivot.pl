
$i=1;
while($i<=200){
$a = int(rand(100000));
$b = int(rand(100000));
print "Round $i\n";
print "step 0 => => a: $a, b: $b\n";

$a = $a+$b;
print "step 1 => => a: $a, b: $b\n";

$b = $a-$b;
print "step 2 => => a: $a, b: $b\n";

$a = $a-$b;
print "step3 => => a: $a, b: $b\n";
$i++;
}
