output "key_arn" {
  value = aws_kms_key.our.arn
}

output "key_id" {
  value = aws_kms_key.our.id
}

output "policy_arn" {
  value = aws_iam_policy.our.arn
}
