
# POGO Mapping App

An app designed to provide a map and timeline of Philippine Offshore Gaming Operators from 2017 until 2024.


## Features
- Map with marked locations of POGOs
- Details of individual POGO
- Year filter for POGO operations
- Timeline and documentation of POGO operations
- Report function (requires sign-in)




## Demo

Link 1: [https://pogo-mapping-app.onrender.com/]

Link 2: [https://pogo-mapping-app-delc.onrender.com/]


## Run Locally

Prerequisites
- Ruby on Rails
- Bundler

Clone the project

```bash
  git clone https://github.com/rootaccess2023/pogo_mapping_app.git
```

Go to the project directory

```bash
  cd pogo_mapping_app
```

Install dependencies

```bash
  bundle install
```

Add ESbuild and Tailwind CSS

```bash
  yarn add esbuild tailwindcss
```

Prepare the database

```bash
  rails db:create
  rails db:migrate
  rails db:seed
```

Start the server

```bash
  ./bin/dev
```


## Contributing

Contributions are always welcome!

Send us a message to get started.

Please adhere to this project's `code of conduct`.


## License

This project is intended for personal and educational use only. All content, including designs and concepts, is the property of its creators.

