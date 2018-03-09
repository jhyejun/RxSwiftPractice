## Challenges
### 1. 부수작용 구현해보기 (do 연산자)
* 앞서 예로든 `never` 연산자는 아무것도 출력하지 않는다. 당시에는 해당 observable을 구독하기 전에 dispose bag에 넣어버렸지만, 만약 그 전에 어떤 값을 추가했다면 `subscribe`의 `onDisposed` 핸들러를 통해 여전히 메시지를 출력할 수 없다. 
* 이 같은 상황에서, 작업중인 Observable에 영향을 주지 않고 별도의 작업을 수행할 수 있는 유용한 연산자가 있다.
* `do` 연산자는 부수작용을 추가하는 것을 허용한다. 다시 말하면 어떤 작업을 추가해도 방출하는 이벤트는 변화시키지 않는 것이다. 
* `do`는 이벤트를 다음 연산자로 그냥 통과시켜버린다.
* `do`는 `subscribe`는 가지고 있지 않는 `onSubscribe` 핸들러를 가지고 있다. 
* `do` 연산자를 이용할 수 있는 method는 `do(onNext:onError:onCompleted:onSubscribe:onDispose)`로, 이 중 어떤 이벤트에 대해서든 핸들러를 제공할 수 있다. 

> Q. 앞선 `never` 예제에 `do` 연산자의 `onSubscribe` 핸들러를 이용해서 프린트 해 볼 것. dispose bag을 subscription에 추가하도록 할 것.

### 2. 디버그 정보 찍어보기 (debug 연산자)
* 1번 문제는 구현한 Rx 코드를 이용해 디버그 할 수 있는 방법 중 하나지만, 디버그가 목적이라면 더 나은 방법이 있다.
* `debug` 연산자는 observable의 모든 이벤트를 프린트 함
* 여러가지 파라미터가 있겠지만 가장 효과적인 것은 특정 문자열을 `debug` 연산자에 넣어주는 것 (예. debug("어떤 문자"))

> Q. 1번 문제를 `debug` 연산자를 통해 프린트 해 볼 것.

***
##### Artwork/images/designs: from RxSwift: Reactive Programming in Swift book, available at http://www.raywenderlich.com