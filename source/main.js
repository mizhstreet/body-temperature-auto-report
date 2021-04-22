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
      `https://docs.google.com/forms/u/1/d/e/1FAIpQLSc8QOUn2JjsCXLnj6wl8DiL4m9WR5ytO_UBBnXQSjzTUJ_pEA/formResponse?&entry.1594397693=36.${temperature}&entry.1773284350=201120&entry.313130556=%E7%89%B9%E3%81%AB%E3%81%AA%E3%81%97&entry.1176899858=%E4%B8%8D%E7%B9%94%E5%B8%83%E3%83%9E%E3%82%B9%E3%82%AF&submit=SUBMIT`,
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
