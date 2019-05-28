resource "aws_iam_user" "tfe" {
  name = "${var.tfe-user["name"]}"

  count = "${signum(var.tfe-user["enabled"])}"
}

resource "aws_iam_user_policy" "tfe" {
  user   = "${element(aws_iam_user.tfe.*.id, 0)}"
  policy = "${data.aws_iam_policy_document.tfe.json}"

  count = "${signum(var.tfe-user["enabled"])}"
}

data "aws_iam_policy_document" "tfe" {
  statement {
    sid    = "AllowReadStateFiles"
    effect = "Allow"

    resources = [
      "${aws_s3_bucket.state-storage.arn}/",
      "${aws_s3_bucket.state-storage.arn}/*",
    ]

    actions = [
      "s3:Get*",
    ]
  }
}

resource "aws_iam_access_key" "tfe" {
  user = "${aws_iam_user.tfe.name}"
}
