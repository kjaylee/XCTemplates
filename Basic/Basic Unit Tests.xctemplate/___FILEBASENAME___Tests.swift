//___FILEHEADER___

@testable import ___PROJECTNAME___

import XCTest

final class ___VARIABLE_productName___Tests: XCTestCase {


    // TODO: declare other objects and mocks you need as private vars

    override func setUp() {
        super.setUp()
    }

    // MARK: - Tests

    func test_exampleObservable_callsRouterOrListener_exampleProtocol() {
        // This is an example of an interactor test case.
        // Test your interactor binds observables and sends messages to router or listener.
    }
}
// MARK: - Tests Examples
/** https://www.raywenderlich.com/7408-testing-your-rxswift-code
extension ___VARIABLE_productName___Tests {
  func testNumeratorStartsAt4() throws {
    XCTAssertEqual(try viewModel.numeratorText.toBlocking().first(), "4")
    XCTAssertEqual(try viewModel.numeratorValue.toBlocking().first(), 4)
  }

  func testDenominatorStartsAt4() throws {
    XCTAssertEqual(try viewModel.denominatorText.toBlocking().first(), "4")
  }

  func testSignatureStartAt4By4() throws {
    XCTAssertEqual(try viewModel.signatureText.toBlocking().first(), "4/4")
  }

  func testTempoStartsAt120() throws {
    XCTAssertEqual(try viewModel.tempoText.toBlocking().first(), "120 BPM")
  }

  func testTappedPlayPauseChangesIsPlaying() {
    let isPlaying = scheduler.createObserver(Bool.self)

    viewModel.isPlaying
      .drive(isPlaying)
      .disposed(by: disposeBag)

    scheduler.createColdObservable([.next(10, ()),
                                    .next(20, ()),
                                    .next(30, ())])
             .bind(to: viewModel.tappedPlayPause)
             .disposed(by: disposeBag)

    scheduler.start()

    XCTAssertEqual(isPlaying.events, [
      .next(0, false),
      .next(10, true),
      .next(20, false),
      .next(30, true)
    ])
  }

  func testModifyingNumeratorUpdatesNumeratorText() {
    let numerator = scheduler.createObserver(String.self)

    viewModel.numeratorText
      .drive(numerator)
      .disposed(by: disposeBag)

    scheduler.createColdObservable([.next(10, 3),
                                    .next(15, 1)])
      .bind(to: viewModel.steppedNumerator)
      .disposed(by: disposeBag)

    scheduler.start()

    XCTAssertEqual(numerator.events, [
      .next(0, "4"),
      .next(10, "3"),
      .next(15, "1")
      ])
  }

  func testModifyingDenominatorUpdatesNumeratorText() {
    let denominator = scheduler.createObserver(String.self)

    viewModel.denominatorText
      .drive(denominator)
      .disposed(by: disposeBag)

    // Denominator is 2 to the power of `steppedDenominator`.
    // f(1, 2, 3, 4) = 4, 8, 16, 32
    scheduler.createColdObservable([.next(10, 2),
                                    .next(15, 4),
                                    .next(20, 3),
                                    .next(25, 1)])
      .bind(to: viewModel.steppedDenominator)
      .disposed(by: disposeBag)

    scheduler.start()

    XCTAssertEqual(denominator.events, [
      .next(0, "4"),
      .next(10, "8"),
      .next(15, "32"),
      .next(20, "16"),
      .next(25, "4")
    ])
  }

  func testModifyingTempoUpdatesTempoText() {
    let tempo = scheduler.createObserver(String.self)

    viewModel.tempoText
      .drive(tempo)
      .disposed(by: disposeBag)

    scheduler.createColdObservable([.next(10, 75),
                                    .next(15, 90),
                                    .next(20, 180),
                                    .next(25, 60)])
      .bind(to: viewModel.tempo)
      .disposed(by: disposeBag)

    scheduler.start()

    XCTAssertEqual(tempo.events, [
      .next(0, "120 BPM"),
      .next(10, "75 BPM"),
      .next(15, "90 BPM"),
      .next(20, "180 BPM"),
      .next(25, "60 BPM")
    ])
  }

  func testModifyingSignatureUpdatesSignatureText() {
    let signature = scheduler.createObserver(String.self)

    viewModel.signatureText
             .drive(signature)
             .disposed(by: disposeBag)

    scheduler.createColdObservable([.next(5, 3),
                                    .next(10, 1),

                                    .next(20, 5),
                                    .next(25, 7),

                                    .next(35, 12),

                                    .next(45, 24),
                                    .next(50, 32)
                                  ])
             .bind(to: viewModel.steppedNumerator)
             .disposed(by: disposeBag)

    // Denominator is 2 to the power of `steppedDenominator`.
    // f(1, 2, 3, 4) = 4, 8, 16, 32
    scheduler.createColdObservable([.next(15, 2), // switch to 8ths
                                    .next(30, 3), // switch to 16ths
                                    .next(40, 4)  // switch to 32nds
                                  ])
             .bind(to: viewModel.steppedDenominator)
             .disposed(by: disposeBag)

    scheduler.start()

    XCTAssertEqual(signature.events, [
      .next(0, "4/4"),
      .next(5, "3/4"),
      .next(10, "1/4"),

      .next(15, "1/8"),
      .next(20, "5/8"),
      .next(25, "7/8"),

      .next(30, "7/16"),
      .next(35, "12/16"),

      .next(40, "12/32"),
      .next(45, "24/32"),
      .next(50, "32/32")
    ])
  }

  func testModifyingDenominatorUpdatesNumeratorValueIfExceedsMaximum() {
    let numerator = scheduler.createObserver(Double.self)

    viewModel.numeratorValue
             .drive(numerator)
             .disposed(by: disposeBag)

    // Denominator is 2 to the power of `steppedDenominator`.
    // f(1, 2, 3, 4) = 4, 8, 16, 32
    scheduler.createColdObservable([.next(5, 4), // switch to 32nds
                                    .next(15, 3), // switch to 16ths
                                    .next(20, 2), // switch to 8ths
                                    .next(25, 1)  // switch to 4ths
                                  ])
             .bind(to: viewModel.steppedDenominator)
             .disposed(by: disposeBag)

    scheduler.createColdObservable([.next(10, 24)])
             .bind(to: viewModel.steppedNumerator)
             .disposed(by: disposeBag)

    scheduler.start()

    XCTAssertEqual(numerator.events, [
      .next(0, 4), // Expected to be 4/4
      .next(10, 24), // Expected to be 24/32
      .next(15, 16), // Expected to be 16/16
      .next(20, 8), // Expected to be 8/8
      .next(25, 4) // Expected to be 4/4
    ])
  }

  func testBeatBy32() {
    scheduler = TestScheduler(initialClock: 0, resolution: 0.01)

    viewModel = MetronomeViewModel(initialMeter: Meter(signature: "4/32"),
                                   autoplay: true,
                                   beatScheduler: scheduler)

    let beat = scheduler.createObserver(Beat.self)
    viewModel.beat.asObservable()
      .take(8)
      .bind(to: beat)
      .disposed(by: disposeBag)

    scheduler.start()

    XCTAssertEqual(beat.events, [
      .next(6, .first),
      .next(12, .regular),
      .next(18, .regular),
      .next(24, .regular),
      .next(30, .first),
      .next(36, .regular),
      .next(42, .regular),
      .next(48, .regular),
      .completed(48)
    ])
  }

  func testBeatBy4() {
    scheduler = TestScheduler(initialClock: 0, resolution: 0.1)

    viewModel = MetronomeViewModel(initialMeter: Meter(signature: "4/4"),
                                   autoplay: true,
                                   beatScheduler: scheduler)

    let beat = scheduler.createObserver(Beat.self)
    viewModel.beat.asObservable()
      .take(8)
      .bind(to: beat)
      .disposed(by: disposeBag)

    scheduler.start()

    XCTAssertEqual(beat.events, [
      .next(5, .first),
      .next(10, .regular),
      .next(15, .regular),
      .next(20, .regular),
      .next(25, .first),
      .next(30, .regular),
      .next(35, .regular),
      .next(40, .regular),
      .completed(40)
    ])
  }

  func testBeatTypeAlternates() {
    scheduler = TestScheduler(initialClock: 0, resolution: 0.1)

    viewModel = MetronomeViewModel(initialMeter: Meter(signature: "4/4"),
                                   autoplay: true,
                                   beatScheduler: scheduler)

    let beatType = scheduler.createObserver(BeatType.self)
    viewModel.beatType.asObservable()
      .take(8)
      .bind(to: beatType)
      .disposed(by: disposeBag)

    scheduler.start()

    XCTAssertEqual(beatType.events, [
      .next(5, .even),
      .next(10, .odd),
      .next(15, .even),
      .next(20, .odd),
      .next(25, .even),
      .next(30, .odd),
      .next(35, .even),
      .next(40, .odd),
      .completed(40)
    ])
  }
}
*/
