/*database can be desined in two ways top down and bottom up
in top down ===> model upore and data niche thake , model to data
in bottom up ===> data upore and model niche , data to model

to create a database we need do requirement analysis

what to avoid to make a database
1) redundency : means to put similar data in multiple tables 
2) incompleteness : in co-related table add unusual data which are not relatable between the tables

to model a database we need Entity Relational Diagram (ERD), in the database tables are the entity but relations are not
two types of entity one is strong and other one is weak , if a table has dedicated primary key then it is a strong entity and
if we make a primary key to simplify a table then it is weak entity , weak entity depends on other table's existance .

cardinality means the number of relations between the tables data .

ERD notations :
1) entity name with attributes draw inside a box , to know more research in internet 

EDR ATTRIBUTES :
1) composite : means many branches of different attributes in a table
2) multivalued : means an attribute have more than one values
3) derived : means come from an another attribute through calculation or using any other methods
*/

/*
ERD Generalization : means to seperate the data in a common catagory
ERD Specialization : it is the reverse form of edr generalization 
in erd diagram while we traverse top to bottom it is specialization and bottom to top it is generalization .
*/

