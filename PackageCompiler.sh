
function GetPackageLadspa()
{
 ### Example of Package Getter. 
 ### 
 ###  
 local __call_locality=( GetPackageLadspa ) ;
 local ArrayPackageList=$( $( find /usr/lib/ladspa/ -type f -iname "*.so" -exec dpkg-query --search {} \; | awk -F: 'BEGIN{}{printf("%s\n",$1)}END{}' | sort -k1 -u -t ':' | tr '[:cntrl:]' ' ' ) ) ; 
 echo -ne "${ArrayPackageList[@]}"  ; 
}

function AptSrcInstallPackage()
{
 local __call_locality=( AptSrcInstallPackage ) ;
 local StartPath=${ASIPPath:=./}
 
 local PackageGetter=${ASIPPackageGetter:=GetPackageLadspa} ;
 local ArrayPackage=( $( ${PackageGetter} ) ) ;
 
 for (( intx=0 ; intx <= ${#ArrayPackage[@];intx++}+1 )) ; do 
  local Item=${ArrayPackage[${intx}]} ; 
  cd ${StartPath} ;
  apt-src -p install ${Item} ; 
 done

}

function AptSrcBuildPackage()
{
 
 local __call_locality=( AptSrcBuildPackage ) ;
 local InternalCC=${ASBPCC:=/usr/bin/x86_64-linux-gnu-gcc-4.4}
 local InternalCXX=${ASBPCXX:=/usr/bin/x86_64-linux-gnu-gxx-4.4}
 local InternalLD=${ASBPLD:=/usr/bin/x86_64-linux-gnu-gcc-4.4}

 local StartPath=${ASIPPath:=./}

 local PackageGetter=${ASIPPackageGetter:=GetPackageLadspa} ;
 local ArrayPackage=( $( ${PackageGetter} ) ) ;
 
 for (( intx=0 ; intx <= ${#ArrayPackage[@];intx++}+1 )) ; do 
  local Item=${ArrayPackage[${intx}]} ; 
  cd ${StartPath} ;
  CC=${InternalCC} CXX=${ASBPCXX} LD=${ASBPLD} apt-src build ${Item} ; 
 done

}


