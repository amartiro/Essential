//
//  MemoryLeakTracker.swift
//  EssentialFeedTests
//
//  Created by Artak Martirosyan on 15.12.25.
//

import Testing

protocol SomeProtocolWithAClosure {
    func get(completion: @escaping () -> Void)
}

class AutomaticMemoryLeakDetectionDemo {
    private let someProtocol: SomeProtocolWithAClosure
    
    var value = 0
    
    init(someProtocol: SomeProtocolWithAClosure) {
        self.someProtocol = someProtocol
    }

    func load() {
        someProtocol.get { [weak self] in
            guard let self = self else { return }
            
            self.value = 1
        }
    }
}

struct MemoryLeakTracker<T: AnyObject> {
    weak var instance: T?
    var sourceLocation: SourceLocation
    
    func verify() {
        #expect(instance == nil, "Expected \(instance) to be deallocated. Potential memory leak", sourceLocation: sourceLocation)
    }
}

final class AutomaticMemoryLeakDetectionDemoTests {
    
    private var sutTracker: MemoryLeakTracker<AutomaticMemoryLeakDetectionDemo>?
    
    deinit {
        sutTracker?.verify()
    }

    // MARK: - Helpers
    
    private func makeSUT(
        filePath: String = #file,
        line: Int = #line,
        column: Int = #column
    ) -> (sut: AutomaticMemoryLeakDetectionDemo, fakeProtocol: FakeProtocol) {
        let fakeProtocol = FakeProtocol()
        let sut = AutomaticMemoryLeakDetectionDemo(someProtocol: fakeProtocol)
        
        let sourceLocation = SourceLocation(fileID: #fileID, filePath: filePath, line: line, column: column)
        sutTracker = .init(instance: sut, sourceLocation: sourceLocation)
        
        return (sut, fakeProtocol)
    }
    
    @Test
    func loads_withWeakSelf() {
        let (sut, fakeProtocol) = makeSUT()

        sut.load()
        fakeProtocol.complete()

        #expect(sut.value == 1)
    }
    
    private class FakeProtocol: SomeProtocolWithAClosure {
       private var completion: (() -> Void)?

       func get(completion: @escaping () -> Void) {
           self.completion = completion
       }

       func complete() {
           self.completion?()
       }
   }
}
