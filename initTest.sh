if [ $# -lt 1 ] || { [ "$1" != "jakarta" ] && [ "$1" != "javax" ] && [ "$1" != "pref" ]; } then
  echo "servlet-api=[javax/jakarta/pref] groovy-version=[3/4]"
  echo "$0 servlet-api groovy-version"
  echo "$0 javax 3"  
  echo "$0 jakarta 4"    
  exit
fi
src=$1

servlet=javax.servlet-api-4.0.1.jar 
if [ "$src" == "jakarta" ]; then
  servlet=jakarta.servlet-api-6.0.0.jar
fi

groovy=groovy-3.0.21.jar
if [ "$2" == "4" ]; then
  groovy=groovy-4.0.21.jar
fi

echo Compiling $src with $servlet and $groovy ...
rm -rf dist
groovyc -cp lib/$servlet $src/Person.groovy -d dist