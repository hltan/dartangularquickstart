import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

@Component(
  selector: 'my-hero ',
  directives: [coreDirectives, formDirectives],
  template: '''
    <div *ngIf="hero != null">
      <h2>{{hero.name}}</h2>
      <div><label>id: </label>{{hero.id}}</div>
      <div>
        <label>name: </label>
        <input [(ngModel)]="hero.name" placeholder="name">
      </div>
    </div>
  ''',
)
class HeroComponent {
  @Input()
  Hero hero;
}
