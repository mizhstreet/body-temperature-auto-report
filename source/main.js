exports.handler = async function (event, context, callback) {
  const fetch = require("node-fetch");

  var opts = {
    method: "POST",
    mode: "no-cors",
    redirect: "follow",
    referrer: "no-referrer",
  };

  var temperature = Math.floor(Math.random() * 4 + 6);

  try {
    const res = await fetch(
      `https://docs.google.com/forms/u/1/d/e/1FAIpQLSc8QOUn2JjsCXLnj6wl8DiL4m9WR5ytO_UBBnXQSjzTUJ_pEA/formResponse?&entry.1773284350=201120&entry.1594397693=36.${temperature}&submit=SUBMIT`,
      opts
    );
    if (res.status == 200) {
      var response = {
        statusCode: 200,
        body: "Success!",
      };
      callback(null, response);
    }
  } catch (err) {
    console.log(err);
  }
};
