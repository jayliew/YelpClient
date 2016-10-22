# Project 2 - Yelp Client

Yelp Client is a basic Yelp search app that consumes data from Yelp's API.

Time spent: **X** hours spent in total

## User Stories

Search results page:

- [x] Table rows should be dynamic height according to the content height.
- [x] Custom cells should have the proper Auto Layout constraints.
- [x] Search bar should be in the navigation bar (doesn't have to expand to show location like the real Yelp app does).
      - Hint: This is just a UISearchBar that is set as the navigationItem.titleView
- [ ] Optional: Infinite scroll for restaurant results
- [ ] Optional: Implement map view of restaurant results

Filter page. Unfortunately, not all the filters in the real Yelp App, are supported in the Yelp API:

- [ ] The filters you should actually have are: category, sort (best match, distance, highest rated), distance, deals (on/off).
- [ ] The filters table should be organized into sections as in the mock.
- [ ] You can use the default UISwitch for on/off states. Optional: implement a custom switch
- [ ] Clicking on the "Search" button should dismiss the filters page and trigger the search w/ the new filter settings.
- [ ] Optional: Distance filter should expand as in the real Yelp app.
- [ ] Optional: Categories should show a subset of the full list with a "See All" row to expand.
      - A formatted list of categories available in the Public API can be found here.
- [ ] Optional: Implement the restaurant detail page.

The following **additional** features are implemented:

- [x] Using AutoLayout on BusinessCell
- [x] Extra protocol added so that the category filter switch states are saved even after the filters view controller is missed--so that the user doesn't have to re-select all the previous categories they entered

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

- [Starter project](https://github.com/jayliew/ios_yelp_swift) was not yet converted to Swift 3. I spent about an hour trying to convert it. The singleton has been implemented in an improved way.

## License

[www.jayliew.com](http://www.jayliew.com)

    The MIT License (MIT)

    Copyright (c) 2016 Jay Liew

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
