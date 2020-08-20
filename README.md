# Done & Done

Done & Done is a Ruby on Rails application where a user may manage their projects and associated tasks. Tasks are filtered by context so that a user may easily choose and complete a task based on the user's current context. This time management system is based on the popular Getting Things Done methodology created by author David Kelvin Allen.

## Installation

Clone repository to chosen directory.

```
git clone git@github.com:pharia-le/done_and_done.git
```

## Usage

Install gems.

```
bundle install
```

Create Postgres database & migrate.

```
rails db:create
```

```
rails db:migrate
```

Run seed data.

```
rails db:seed
```


Start rails server.

```
rails s
```

Navigate to http://localhost:3000/ in browser.

## Contributing

When contributing to this repository, please first discuss the change you wish to make via issue, email, or any other method with the owners of this repository before making a change.

### Pull Request Process

1.Ensure any install or build dependencies are removed before the end of the layer when doing a build.

2.Update the README.md with details of changes to the interface, this includes new environment variables, exposed ports, useful file locations and container parameters.

3.Increase the version numbers in any examples files and the README.md to the new version that this Pull Request would represent. The versioning scheme we use is SemVer.

4.You may merge the Pull Request in once you have the sign-off of two other developers, or if you do not have permission to do that, you may request the second reviewer to merge it for you.

## License

This project is licensed under the MIT Open Source Public License.
