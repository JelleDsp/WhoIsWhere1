using my.whoIsWhere as my from '../db/data-model';

service CatalogService {

  entity Person as projection on my.Person;
  entity Meeting as projection on my.Meeting;
  entity Location as projection on my.Location;

}