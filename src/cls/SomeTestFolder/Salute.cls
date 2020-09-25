Class SomeTestFolder.Salute Extends %Persistent
{

ClassMethod Hello() As %Status
{
		write "Hello, dudes"
		return $$$OK
}

Property Name As %String;

Property Phone As %String;

Property Dob As %String;

Method ReadPersonData() As %Status
{
	read !, "Enter Name: ", tmpName

	if ( tmpName = "" )
	{
		quit
	}

	read !, "Enter Phone: ", tmpPhone
	read !, "Enter DOB: ", tmpDob

	set ..Name =  tmpName
	set ..Phone =  tmpPhone
	set ..Dob =  tmpDop

	return $$$OK
}

Method WritePersonData() As %Status
{

	write !, "Name: ", ?20, ..Name
	write !, "Phone: ", ?20, ..Phone
	write !, "Dob: ", ?20, ..Dob

	return $$$OK
}

Storage Default
{
<Data name="SaluteDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Phone</Value>
</Value>
<Value name="4">
<Value>Dob</Value>
</Value>
</Data>
<DataLocation>^SomeTestFolder.SaluteD</DataLocation>
<DefaultData>SaluteDefaultData</DefaultData>
<IdLocation>^SomeTestFolder.SaluteD</IdLocation>
<IndexLocation>^SomeTestFolder.SaluteI</IndexLocation>
<StreamLocation>^SomeTestFolder.SaluteS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
