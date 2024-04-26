resource "aws_s3_bucket" "{{ name }}" {
  bucket = "{{ name }}"

  tags = {
    Name        = "{{ name }}"
  }
}

output "aws-s3-bucket-name" {
  value = aws_s3_bucket.{{ name }}.id
}
 
output "aws-s3-arn" {
  value = aws_s3_bucket.{{ name }}.arn
}