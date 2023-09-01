import 'employee.dart';

void main(List<String> args){
  var employee01 = new Employee(0001,"Riyan Pramudya","NASA");
  var employee02 = new Employee(0002,"Prisca Audya","Synapsis");

  print("ID: ${employee01.id} Name: ${employee01.name} Departement: ${employee01.departement}");
  print("ID: ${employee02.id} Name: ${employee02.name} Departement: ${employee02.departement}");
}