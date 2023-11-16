resource "aws_lb_target_group_attachment" "tg_attachment_1" {
  target_group_arn = module.aws_lb_target_group_1.target_group_arn
  target_id        = "IP_ADDRESS_1"  # Replace with your actual IP address
  port             = 443
}

resource "aws_lb_target_group_attachment" "tg_attachment_2" {
  target_group_arn = module.aws_lb_target_group_2.target_group_arn
  target_id        = "IP_ADDRESS_2"  # Replace with your actual IP address
  port             = 443
}
