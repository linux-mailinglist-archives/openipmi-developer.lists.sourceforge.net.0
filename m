Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 588A0D1EB79
	for <lists+openipmi-developer@lfdr.de>; Wed, 14 Jan 2026 13:23:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-Id:MIME-Version:Date:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=haud5YbyyZqVK87K7aY/r4SaVHKSF2GLqSNPStm2QAE=; b=S0HWJp+BDHA04Fm58D+TuPoeNh
	vJt+GY27cg8gKNwgdYWvzKqYndUlHdpskoeoGKQzc/G5PRnxIzFT7dGVdZZe+avyShGAMUtZsI2zU
	IDOSI8+KnW2/yyZsrZQzpwMzHXfbbvS8+h6P94+3UiVeWS84qE2SojQSCykz+ITsoLFU=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vfzu7-0005ug-FR;
	Wed, 14 Jan 2026 12:23:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <matt@codeconstruct.com.au>) id 1vfbIP-0001WD-OB
 for openipmi-developer@lists.sourceforge.net;
 Tue, 13 Jan 2026 10:06:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XD6dPcx6p/pubdbJy3tSN0NfzMSmJCNuC5RYNO+F6sQ=; b=WvQLtF8Z6Ce1zw7BRj2oCu/0iv
 gMkFVjS+M4flb8W2TjuDXHLdnM6aC9iwGYI94DdfL0yLHzmHoALrYGk7OK4+CgisQyK6S08XcIpR4
 KynfGZ4l0drtjsK+wU9vklnlSQEpLgJcfG1F0QMAiOiN9CmTB+Lh5QlywLt95Uy6NCT8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XD6dPcx6p/pubdbJy3tSN0NfzMSmJCNuC5RYNO+F6sQ=; b=Z
 UCkTNVKXi0ZLFa4MB5CwREsfHnQ6a0XmMWabQtAmWvoAIj0Hccr6JmfbBlfyK+hbtEV+QQ9iPiBmK
 jIjLKlnBTRA8myISAA4jPgOY6NIlZD7DNsMwsBxUah1SEi1fCWFh9vb5/R82c7jXou4CeuL0nhrG3
 s5a9c1plnr2VZjxk=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vfbIP-0001Zp-Qk for openipmi-developer@lists.sourceforge.net;
 Tue, 13 Jan 2026 10:06:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1768297314;
 bh=XD6dPcx6p/pubdbJy3tSN0NfzMSmJCNuC5RYNO+F6sQ=;
 h=From:Date:Subject:To:Cc;
 b=kxXuOATsjTrkDe+m85yBtiyZJJv37rrs9POOPa6wYVCA6RKvT3vZxcoX+WxVYr9OW
 3CfFyHJiPGgGJfN542AJIegjgsttip/cf2YsixiuOnMN+PKlVK3GeWRb8CpRcp2t8A
 7tItp8f686u6J+2kDXfuVJTyKDt2whZnszgF0LwnRzHLSppfuP/Q/4DCXCA9vribCL
 pzM53AAOllrSwMTPxP+wfYuJTja9iD1If3Rq2+csmt/ZuqDK2n6Khqo/6folVgwbsb
 g26y6O0HUHnHOiTkzLccYXTSWsr5Q8QFXmYIu+2WcV/FPak0MmwfplAFTL5KVUibTP
 Wjf79q/k/chSg==
Received: by codeconstruct.com.au (Postfix, from userid 10001)
 id 84C3E6777B; Tue, 13 Jan 2026 17:41:54 +0800 (AWST)
From: Matt Johnston <matt@codeconstruct.com.au>
Date: Tue, 13 Jan 2026 17:41:34 +0800
MIME-Version: 1.0
Message-Id: <20260113-ipmb-read-init-v1-1-a9cbce7b94e3@codeconstruct.com.au>
X-B4-Tracking: v=1; b=H4sIAE0TZmkC/x3MQQqAIBBA0avErBvQpMKuEi00x5pFFhoRiHdPW
 r7F/xkSRaYEU5Mh0sOJz1Ah2wbW3YSNkF01dKIbhJQK+TosRjIOOfCNvdWj83Z1ymqo0RXJ8/s
 P56WUD1ghdndgAAAA
X-Change-ID: 20260113-ipmb-read-init-5b97dfbcd3b9
To: Corey Minyard <corey@minyard.net>, 
 Andrew Manley <andrew.manley@sealingtech.com>
X-Mailer: b4 0.15-dev-cbbb4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768297314; l=1129;
 i=matt@codeconstruct.com.au; s=20241018; h=from:subject:message-id;
 bh=wdQfg8di2RYLq0ZogrKEBLYmSZ/5NdI/ZXx+xZtSR+0=;
 b=rUHKPJlcbVmlG//YFu3qPDYiDwMWVtGYx+MmNeia0WSsexUDzeILPfz9sAbU4FCipBFpLAGyk
 fjxtgkSH09LBoH6IHaUHL9f2XfJ3uEdoX1d0J1I0n0K5PywIxUkv8gP
X-Developer-Key: i=matt@codeconstruct.com.au; a=ed25519;
 pk=exersTcCYD/pEBOzXGO6HkLd6kKXRuWxHhj+LXn3DYE=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  IPMB doesn't use i2c reads, but the handler needs to set a
 value. Otherwise an i2c read will return an uninitialised value from the
 bus driver. Fixes: 63c4eb347164 ("ipmi:ipmb: Add initial support for IPMI
 over IPMB") Signed-off-by: Matt Johnston <matt@codeconstruct.com.au> ---
 drivers/char/ipmi/ipmi_ipmb.c
 | 5 +++++ 1 file changed, 5 inserti [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vfbIP-0001Zp-Qk
X-Mailman-Approved-At: Wed, 14 Jan 2026 12:23:12 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: ipmb: initialise event handler
 read bytes
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: openipmi-developer@lists.sourceforge.net,
 Matt Johnston <matt@codeconstruct.com.au>, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

IPMB doesn't use i2c reads, but the handler needs to set a value.
Otherwise an i2c read will return an uninitialised value from the bus
driver.

Fixes: 63c4eb347164 ("ipmi:ipmb: Add initial support for IPMI over IPMB")
Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
---
 drivers/char/ipmi/ipmi_ipmb.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
index 3a51e58b24875497699c7af7a4af1c73b47653f3..28818952a7a4bf814b95bdfb7046672ad4526cf2 100644
--- a/drivers/char/ipmi/ipmi_ipmb.c
+++ b/drivers/char/ipmi/ipmi_ipmb.c
@@ -202,11 +202,16 @@ static int ipmi_ipmb_slave_cb(struct i2c_client *client,
 		break;
 
 	case I2C_SLAVE_READ_REQUESTED:
+		*val = 0xff;
+		ipmi_ipmb_check_msg_done(iidev);
+		break;
+
 	case I2C_SLAVE_STOP:
 		ipmi_ipmb_check_msg_done(iidev);
 		break;
 
 	case I2C_SLAVE_READ_PROCESSED:
+		*val = 0xff;
 		break;
 	}
 

---
base-commit: b71e635feefc852405b14620a7fc58c4c80c0f73
change-id: 20260113-ipmb-read-init-5b97dfbcd3b9

Best regards,
-- 
Matt Johnston <matt@codeconstruct.com.au>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
