Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B14819091B0
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jun 2024 19:36:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sIAql-0006sv-G3;
	Fri, 14 Jun 2024 17:36:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dan.carpenter@linaro.org>) id 1sIAlQ-0006sV-Oh
 for openipmi-developer@lists.sourceforge.net;
 Fri, 14 Jun 2024 17:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GhYLyvnes7IrRyooiF6hUo9Wtmgl5c1FE7dQTHZivIs=; b=HvYGSU5fyNfiqLBe9/vme5CMOi
 FUtBf5Fhy1H0+kms1ZgZaV/EKQSSXJrD12gaSLEVjoGdrDakMf7Zw3E+3P4fgwqcDgCgZ70de5cHA
 kesEB6hOR4cNKNZtkilSMkg2dPxasJXPujOahMssASBRPllYYUkVtaNMj8jURa77gaXU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GhYLyvnes7IrRyooiF6hUo9Wtmgl5c1FE7dQTHZivIs=; b=H
 ZuhtKYi1ZjxdEf7E0V1dalH8f/DiWt1LdC7xrU7fQnckFRr8IsE5b4wZWNKwhVvFMP1Lt3dilqMwT
 8E1nx/1AjFLjs5ajrOOryUUyIbGJnIiiBW8Z9elPKn+sSlRikmSoBCCmhLiZKNs6CCKTzRiE6dbeT
 KBo9/qIn12Pf1zSI=;
Received: from mail-lf1-f51.google.com ([209.85.167.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sIAlR-0005YR-20 for openipmi-developer@lists.sourceforge.net;
 Fri, 14 Jun 2024 17:31:00 +0000
Received: by mail-lf1-f51.google.com with SMTP id
 2adb3069b0e04-52c815e8e9eso2606265e87.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 14 Jun 2024 10:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1718386248; x=1718991048; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=GhYLyvnes7IrRyooiF6hUo9Wtmgl5c1FE7dQTHZivIs=;
 b=loNXCn3eZxVc62QL5KhN9iIep31sf7GU3veZYnQqxNdYylQvnlocn+DrqdYmtAhAls
 s++7skMfE5by/AQok6iAje5fabmnW477lv/SDGmambmOmoHQwjQTLL1FFr4hVUAxfOHD
 MmHAvnr6kyfnVsLHANJiJpDPKAfZ+uB2kQIhRuypeKlcj5kXMwVaQZs7bvyEKzoCTUWZ
 1RCn/Y53Dx/HkiwK+B3WmpMaifwX8OUP6RO+/DKmI3P2GzUnndtsO+lXHtCOb9UypEhY
 aGDkStrB2h6+dON0q06Ee/3hGJ852IzFhCx6XMgY9bMf500wRRlV1sQ2OmizIqZ5GW97
 5NDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718386248; x=1718991048;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GhYLyvnes7IrRyooiF6hUo9Wtmgl5c1FE7dQTHZivIs=;
 b=p/wnvXQhu6X9ZH7qLCCLcsEnUc9Xl3TfbNbBag7YIWIXotR9udl2nADXvnZ7mKv2Iv
 WC0YwFVEz+nCzE4n8QFrQ4KGiQsuiNNNAzBOfJ+O4SW8d70S1klBp+Hhk7pOnza7+5RY
 nAbpogpnhlGolxLKFTdscFkAWtx2BwRJ+c2BzxOzDWMr27A30nNvgi1YzXLXwDPFWtVa
 ISkrNDIERpJX2zUL4D5MckfehLGX/CIboW3BYupuciftfIoibJmAfG12yOO86w+D2T0Q
 1Y2p80cdkBzfBv7720Ju1mp3RxYMf+zYL7Y5rsh0WMXCjKvhT/BRjNaXybUpGSnFCWpD
 zalQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXB/t2QUflnKa5/NSDBanyG6Jalu/vKXQuFIVI/EE5FdPTh2VKTmY26a8jJE7XqU7GLWky4T0HNS8tHxiXI7FpRoOirt2uANzDWv7+1v2RneG2V0nE4u0qA
X-Gm-Message-State: AOJu0YxClkTvI1aqFU5tO7lOBLzMkD+u06R0fP2wD4aNe/lJX14/FV9C
 0I85wPwFljLFkR8WNkrZNmDQ+hapSvMWxSUgOHHwgcjW4rMyJDVrIw8rrE8r6uI=
X-Google-Smtp-Source: AGHT+IE8HK8BsiSh+6Wu+Mm+URrKAZY78WQcHj2XcIl5gyStXYt1n7LGGfHjo2+cbwsFt3wfVVbDyg==
X-Received: by 2002:a05:6512:114a:b0:52c:a809:62e9 with SMTP id
 2adb3069b0e04-52ca80963f5mr2378320e87.0.1718386248378; 
 Fri, 14 Jun 2024 10:30:48 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-422f6127d6dsm69701075e9.26.2024.06.14.10.30.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Jun 2024 10:30:48 -0700 (PDT)
Date: Fri, 14 Jun 2024 20:30:44 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <1431ca2e-4e9c-4520-bfc0-6879313c30e9@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  There are actually two bugs here. First, we need to ensure
 that count is at least sizeof(u32) or msg.len will be uninitialized data.
 The "msg.len" variable is a u32 that comes from the user. On 32bit systems
 the "sizeof_field(struct ipmi_ssif_msg, len) + msg.len" addition can overflow
 if "msg.len" is greater than U32_MAX - 4. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linaro.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.167.51 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.51 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.51 listed in sa-accredit.habeas.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sIAlR-0005YR-20
X-Mailman-Approved-At: Fri, 14 Jun 2024 17:36:31 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: prevent integer
 overflow on 32bit systems
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

There are actually two bugs here.  First, we need to ensure that count
is at least sizeof(u32) or msg.len will be uninitialized data.

The "msg.len" variable is a u32 that comes from the user.  On 32bit
systems the "sizeof_field(struct ipmi_ssif_msg, len) + msg.len"
addition can overflow if "msg.len" is greater than U32_MAX - 4.

Valid lengths for "msg.len" are 1-254.  Add a check for that to
prevent the integer overflow.

Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/char/ipmi/ssif_bmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)
---
 drivers/char/ipmi/ssif_bmc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index 56346fb32872..ab4e87a99f08 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -177,13 +177,15 @@ static ssize_t ssif_bmc_write(struct file *file, const char __user *buf, size_t
 	unsigned long flags;
 	ssize_t ret;
 
-	if (count > sizeof(struct ipmi_ssif_msg))
+	if (count < sizeof(msg.len) ||
+	    count > sizeof(struct ipmi_ssif_msg))
 		return -EINVAL;
 
 	if (copy_from_user(&msg, buf, count))
 		return -EFAULT;
 
-	if (!msg.len || count < sizeof_field(struct ipmi_ssif_msg, len) + msg.len)
+	if (!msg.len || msg.len > IPMI_SSIF_PAYLOAD_MAX ||
+	    count < sizeof_field(struct ipmi_ssif_msg, len) + msg.len)
 		return -EINVAL;
 
 	spin_lock_irqsave(&ssif_bmc->lock, flags);
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
