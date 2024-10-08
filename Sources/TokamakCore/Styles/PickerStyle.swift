// Copyright 2020 Tokamak contributors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

public protocol PickerStyle {}

public struct PopUpButtonPickerStyle: PickerStyle {
  public init() {}
}

public struct RadioGroupPickerStyle: PickerStyle {
  public init() {}
}

public struct SegmentedPickerStyle: PickerStyle {
  public init() {}
}

public struct WheelPickerStyle: PickerStyle {
  public init() {}
}

public struct DefaultPickerStyle: PickerStyle {
  public init() {}
}

enum PickerStyleKey: EnvironmentKey {
  static var defaultValue: PickerStyle = DefaultPickerStyle()
}

extension EnvironmentValues {
  var pickerStyle: PickerStyle {
    get {
      self[PickerStyleKey.self]
    }
    set {
      self[PickerStyleKey.self] = newValue
    }
  }
}

public extension View {
  func pickerStyle(_ style: PickerStyle) -> some View {
    environment(\.pickerStyle, style)
  }
}
