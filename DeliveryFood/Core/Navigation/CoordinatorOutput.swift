import UIKit

protocol CoordinatorOutput {
    var finishFlow: (() -> Void)? {get}
}
