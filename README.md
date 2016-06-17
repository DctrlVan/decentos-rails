## DecentOS
### A membership management system for bitcoin centric organizations.

## Status

This code is under development and not ready for production (pre-versioning). See the issue tracker for more details and the roadmap etc.

Note: This codebase is intended to be used as a web based (server) application, it is not intended for direct client use. The following notes are aimed at developers who wish to contribute or run their own instances.

## Core features

* Manage a database of users/members.
* Generate invoices periodically or on demand, sending out a notice to users automatically.
* Check for payments against outstanding invoices and generate reports/reminders.

## Installation

* Make sure ruby gems bundler and rake are installed `gem install bundler rake`.
* Clone this git repository.
* Navigate into its root directory.
* run `./bin/setup`

## Contributing

* Fork this repository and open an issue (on the source repo) for discussion about what feature or issue you plan to work on.
* run `git checkout -b <feature-name>` to create a unique branch for your work.
* When the code is working, submit a pull-request for your code to be merged into the main repository.

## License

GNU GPLv3
http://www.gnu.org/licenses/gpl-3.0.txt
