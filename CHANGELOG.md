# Change Log

## [1.6](https://github.com/mgray88/ASJOverflowButton/releases/tag/1.6)
Released on Tuesday, 4 Dec, 2018

#### Added
* Merged [pull request #5](https://github.com/sudeepjaiswal/ASJOverflowButton/pull/5)
* Extended `ASJOverflowMenuDelegate` protocol with `[overflowMenu:customizeCell:forItem:]` which is called by the table view's data source right before display
* Added `ASJOverflowButtonDataSource` protocol which can provide menu items with `[overflowButton:populateMenu:]`
* The data source object can be passed into a new initializer on the `ASJOverflowButton`
* Added `enabled` property to `ASJOverflowItem` to disable menu item selection from being passed to either the `ItemTapBlock` or the delegate's `[overflowMenu:didSelectItem:atIndex:]` selector

## [1.5.2](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/1.5.2)
Released on Wednesday, 2 Nov, 2016.

#### Added
* Added `backgroundColor` property to `ASJOverflowItem` to set color to individual items.

## [1.5.1](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/1.5.1)
Released on Wednesday, 2 Nov, 2016.

#### Fixed
* Partly fixed [issue #3](https://github.com/sudeepjaiswal/ASJOverflowButton/issues/3). Menu opens correctly if opened in landscape orientation.
* Fixed UI bug while scrolling the menu if only some items have image.

## [1.5](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/1.5)
Released on Saturday, 1 Oct, 2016.

#### Fixed
* Fixed [issue #2](https://github.com/sudeepjaiswal/ASJOverflowButton/issues/2). Overflow menu shadow drawing incorrectly on iOS 10.

## [1.4](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/1.4)
Released on Tuesday, 16 Aug, 2016.

#### Added
* Added new properties 'hidesSeparator' and 'separatorInsets' to control the visibility and position of the menu item separators.

## [1.3.1](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/1.3.1)
Released on Thursday, 4 Aug, 2016.

#### Updated
* Updated instances throughout the project and readme where 'dimsBackground' was appearing as its old name 'shouldDimBackground'.

## [1.3](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/1.3)
Released on Wednesday, 3 Aug, 2016.

#### Added
* Added new property 'dimmingLevel' to control the degree to which the background can be dimmed when the menu is shown.
* Added new property 'menuAnimationType' to change the way the menu is shown; fade in or zoom in.

## [1.2](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/1.2)
Released on Monday, 18 Jul, 2016.

#### Added
* Added new property 'widthMultiplier' to set menu width ratio with respect to screen width.
* Added new property 'menuMargins' to set menu margins from the top, right and bottom edges of the screen.

#### Updated
* Updated readme to reflect new properties and added more documentation.

#### Fixed
* Fixed/suppressed release warnings.

## [1.1](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/1.1)
Released on Tuesday, 12 Jul, 2016.

#### Added
* Added a constructor method to create overflow item with only title.

#### Updated
* Updated the designated initializer; removed target controller. Menu is now created on a separate window.

#### Fixed
* Fixed a bug where shadow wasn't being drawn properly.

## [1.0](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/1.0)
Released on Monday, 11 Jul, 2016.

#### Added
* Added change log.

#### Fixed
* Fixed a bug where menu wasn't dismissed if tap happened below the menu items.

## [0.2](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/0.2)
Released on Tuesday, 17 May, 2016.

#### Added
* Added documentation.
* Added new initializer.

## [0.1](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/0.1)
Released on Wednesday, 11 May, 2016.

#### Added
* Added nullability annotations.
* Merged pull request #1.

## [0.0.1](https://github.com/sudeepjaiswal/ASJOverflowButton/releases/tag/0.0.1)
Released on Tuesday, 2 Feb, 2016.

#### Added
* Initial release.
