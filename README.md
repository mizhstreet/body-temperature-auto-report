# Body temperature auto reporting

> Reporting body temperature everyday is mendokusai!

> Let this app does it for you

**Technology used**

- Infrastructure automation with Terraform
- AWS Lambda, Cloudwatch, S3
- Nodejs 12.x

## Table of Contents (Optional)

- [Installation](#installation)
- [Support](#support)
- [License](#license)

---

## Installation

- Get credentials from your aws account which provides terraform with required access permissions.
- Define a file named variables.tfvars in /terraform folder and put your credentials there (access key, secret access key, aws region)

### Clone

- Clone this repo to your local machine using `https://github.com/fvcproductions/SOMEREPO`

### Setup

> In /source

```shell
$ yarn
```

- Modify form url and parameters in main.js file
- Modify scheduled expressions in main.tf file in /terraform

---

## Contributing

### Step 1

- **Option 1**

  - 🍴 Fork this repo!

- **Option 2**
  - 👯 Clone this repo to your local machine using `https://github.com/mizhstreet/body-temperature-auto-report.git`

### Step 2

- **HACK AWAY!** 🔨🔨🔨

### Step 3

- 🔃 Create a new pull request using <a href="https://github.com/joanaz/HireDot2/compare/" target="_blank">`https://github.com/mizhstreet/body-temperature-auto-report/compare/`</a>.

---

## Support

Reach out to me at one of the following places!

- Email me: minhcf2013@gmail.com

---

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2020 © <a href="http://fvcproductions.com" target="_blank">mrmb</a>.
