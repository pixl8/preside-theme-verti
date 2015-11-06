/**
* @dataManagerGroup Sitewide
*/

component output=false dataManagerGroup="Footer" {
  property name="class_name" type="string" dbtype="varchar" maxlength=150 control="select" values="fa-facebook,fa-twitter,fa-instagram,fa-dribble,fa-pinterest" labels="Facbook,Twitter,Instagram,Dribble,Pinterest";
  property name="link"       relationship="many-to-one"  relatedto="link";
}