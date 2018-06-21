=pod
this script will look for files in some folder 
and natural order files names existing 
in main level and sub level corresponding whit local var

how to run

perl natural-sort-files-depp-folders.pl

=cut 

#set where the examples files exists
$exampleFolder = "examples\\$0";
$exampleFolder =~ s/\.pl$//;

#set current env
$subFolder = "TEST";

#array to list all files on main and sub folders
my @files = ();

#add list of files in main folder to @files array
push @files, split("\n",`dir $exampleFolder /B/A-D`);
#add list of files in sub folder to @files array
push @files, split("\n",`dir $exampleFolder\\$subFolder /B/A-D`);

print "preview of \@files array, not sorted:\n";
printPreview();

print "preview of \@files array, sorted:\n";
@files = sort @files;
printPreview();

#process each element of array if exists on sub folder change the value of this key on @files array
foreach (keys @files){
  if(-e "$exampleFolder\\$subFolder\\$files[$_]"){
    $files[$_] = "$subFolder\\$files[$_]" ;
  }
}
print "Final status of array \@files:\n";
printPreview();

#used to print nicely the items on @files array
sub printPreview{
  print "  *  ".join("\n  *  ",@files)."\n";
}