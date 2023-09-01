import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(){
  ArmorTitan armorTitan = new ArmorTitan();
  AttackTitan attackTitan = new AttackTitan();
  BeastTitan beastTitan = new BeastTitan();
  Human human = new Human();

  armorTitan.powerPoint = 10;
  attackTitan.powerPoint = 12;
  beastTitan.powerPoint = 20;
  human.powerPoint = 2;

  print("Power Point  Armor Titan: ${armorTitan.powerPoint}");
  print("Power Point  Attack Titan: ${attackTitan.powerPoint}");
  print("Power Point  Beast Titan: ${beastTitan.powerPoint}");
  print("Power Point  Human: ${human.powerPoint}");

  print("Sifat Armor Titan : ${armorTitan.terjang()}");
  print("Sifat Attack Titan : ${attackTitan.punch()}");
  print("Sifat  Beast Titan: ${beastTitan.lempar()}");
  print("Sifat Human : ${human.killAllTitan()}");
}