resource "aws_route53_zone" "_" {
  name = "lucas.rs"
}

resource "aws_route53_record" "A_lucas_rs" {
  zone_id = aws_route53_zone._.id
  name    = "lucas.rs"
  type    = "A"
  ttl     = 300
  records = [
    "185.199.108.153",
    "185.199.109.153",
    "185.199.110.153",
    "185.199.111.153",
  ]
}

resource "aws_route53_record" "AAAA_lucas_rs" {
  zone_id = aws_route53_zone._.id
  name    = "home.lucas.rs"
  type    = "AAAA"
  ttl     = 300
  records = [
    var.ipv6,
  ]
}

resource "aws_route53_record" "MX_lucas_rs" {
  zone_id = aws_route53_zone._.id
  name    = "lucas.rs"
  type    = "MX"
  ttl     = 1800
  records = [
    "10 mx.zoho.com",
    "20 mx2.zoho.com",
    "50 mx3.zoho.com",
  ]
}

resource "aws_route53_record" "A_home_lucas_rs" {
  zone_id = aws_route53_zone._.id
  name    = "home.lucas.rs"
  type    = "A"
  ttl     = 300
  records = ["189.62.18.36"]
}

resource "aws_route53_record" "TXT_lucas__domainkey_lucas_rs" {
  zone_id = aws_route53_zone._.id
  name    = "lucas._domainkey"
  type    = "TXT"
  ttl     = 3600
  records = ["v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDjDhw4hAhrVVOYOAwJrgQ7TFWYmQ0V1+WhLr+hnGX1ca5f+rhmSVPK9HGq5/+rV8xYhO8uWF21qBHkP/OlVZFV/CC8utvq1yeuE7QiA+54+uZXZnkUZDiUB0BFJUtC/HEw8CPUr9TjEfSxM2sFaeV4sOnP2QEKSqieB4hbIYRWGQIDAQAB"]
}

resource "aws_route53_record" "TXT_lucas_rs" {
  zone_id = aws_route53_zone._.id
  name    = "lucas.rs"
  type    = "TXT"
  ttl     = 3600
  records = [
    "zoho-verification=zb35009745.zmverify.zoho.com",
    "v=spf1 include:zoho.com ~all",
  ]
}

resource "aws_route53_record" "TXT__github-pages-challenge-plutaniano" {
  zone_id = aws_route53_zone._.id
  name    = "_github-pages-challenge-plutaniano"
  type    = "TXT"
  ttl     = 3600
  records = ["5bea259445d003d5c9304b29d800bf"]
}
