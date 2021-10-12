resource "aws_kms_key" "our" {
  description             = "KMS key for Environment ${var.environment}"
  enable_key_rotation = true
  tags              = {
    Environment = var.environment
  }
}

resource "aws_kms_alias" "our" {
  name  = "alias/${var.environment}-key"
  target_key_id = aws_kms_key.our.id
}

resource aws_iam_policy our {
  name        = "allow-kms-${var.environment}"
  description = "Allow access to KMS key in ${var.environment}"
  policy      = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "kms:GetPublicKey",
                "kms:Decrypt",
                "kms:ListKeyPolicies",
                "kms:ListRetirableGrants",
                "kms:GetKeyPolicy",
                "kms:ListResourceTags",
                "kms:ListGrants",
                "kms:GetParametersForImport",
                "kms:Encrypt",
                "kms:GetKeyRotationStatus",
                "kms:GenerateDataKey",
                "kms:ReEncryptTo",
                "kms:DescribeKey"
            ],
            "Resource": "${aws_kms_key.our.arn}"
        }
    ]
}
EOF
}

