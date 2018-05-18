import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

@Component(
  selector: 'my-app',
  directives: [formDirectives],
  template: '''
    <h1>{{title}}</h1>
    <h2>{{hero.name}}</h2>
    <div><label>id: </label>{{hero.id}}</div>
    <div><label>name: </label><input [(ngModel)]="hero.name" placeholder="name"></div>
  ''',
)

class AppComponent {
  final title = 'Tour of Heroes';
  Hero hero = new Hero(1,'Windstorm');
}
