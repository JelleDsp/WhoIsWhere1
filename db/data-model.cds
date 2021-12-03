namespace my.whoIsWhere;

entity Person {
    key ID : Integer;
    Name  : String;
    meetings : Composition of many Meeting on meetings.person = $self;
  }

  entity Meeting {
    key ID : UUID;
    person   : Association to Person;
    location  : Association to Location;
    date : Date;
  }

  entity Location {
    key ID : Integer;
    Name : String;
    meetings : Composition of many Meeting on meetings.location = $self;
    latitude: Double;
	  longitude: Double;
  }
