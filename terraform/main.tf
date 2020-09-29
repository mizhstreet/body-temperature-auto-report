resource "aws_cloudwatch_event_rule" "default" {
  name                = "every-day-8-am"
  description         = "Triggers everyday at 8am"
  schedule_expression = "cron(0 23 * * ? *)"
}

resource "aws_cloudwatch_event_target" "lambda" {
  rule      = aws_cloudwatch_event_rule.default.name
  target_id = "lambda"
  arn       = aws_lambda_function.default.arn
}

resource "aws_lambda_function" "default" {
  function_name = "AutoBodyTemperatureReport"
  s3_bucket     = "lambda-temperature-deployments"
  s3_key        = "main.zip"
  handler       = "main.handler"
  runtime       = "nodejs12.x"
  publish       = true
  role          = aws_iam_role.lambda_exec_role.arn
}

resource "aws_lambda_permission" "allow_cloudwatch" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.default.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.default.arn
}

resource "aws_iam_role" "lambda_exec_role" {
  name = "lambda_execution_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

resource "aws_iam_role_policy_attachment" "allow_cloudwatch_log" {
  role       = aws_iam_role.lambda_exec_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}
