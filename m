Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AE21D010E
	for <lists+openipmi-developer@lfdr.de>; Tue, 12 May 2020 23:46:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jYciu-0001qp-K3; Tue, 12 May 2020 21:46:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jYcis-0001qi-NR
 for openipmi-developer@lists.sourceforge.net; Tue, 12 May 2020 21:45:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IYUiXiaNBsBZM0iKcHk24e5/fD/U7T1sgmMQxqdI2oM=; b=A8qKT0hcI+1i9tylTX8zdIkzOh
 xmv4r53LCG/BMY1Egwzh7CutckRHwgSZ67erw8ZfNUso/o6D6FSdXqTE2jqV/XSBF9R9pyNUmT7yj
 3iQ1q4FX0TAxOx/7TYuqraRc74KYZmjIzE/Y959lJOycgcXwJq8aNvWWcQLyFZ3cLm8g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IYUiXiaNBsBZM0iKcHk24e5/fD/U7T1sgmMQxqdI2oM=; b=MaIY5cCH8H49pPSG3uK5P+Lv/L
 ntuYCfgF5RI2VY2ZkCyV/HbEuKqUwI9TATgBKfc60AiRlX7MGAbYowVW0cIGvxBD4T1Xhrp0LXUGS
 8bp8nNfqZv91NFmoDStEtAG2vBV5Wjbzs7H7ET4pl+Rx59p667KBtfWRm4R/MJkavKgA=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jYcip-003mFm-1p
 for openipmi-developer@lists.sourceforge.net; Tue, 12 May 2020 21:45:58 +0000
Received: by mail-ot1-f67.google.com with SMTP id 72so11834995otu.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 May 2020 14:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IYUiXiaNBsBZM0iKcHk24e5/fD/U7T1sgmMQxqdI2oM=;
 b=FZ0l+rzzvY68A2zj75Zjc2uCZNGx9Nm07CgzXCbuOsN/VmdEp2Dy7665CJhIXVxlR1
 S1e/6FqwhzlVKp4mcXpSi+RUjuwE2QeKtSa96x6C6Xa5RA2spGApisbeSwSHRlrtNEx9
 gIesQySCWLjNXrG9kKvN5zTpqB7nAwuQ+3We5EBukRSq/RQMCl4Hf7n2cu5KFrYJUI+n
 1vSBExC5Q5jO5seY64Ep8G3xT4qLaSWhb0O99RtEfHtnKef8CHWOKMGHWQcYlR64twd1
 oolDvFrzeEXZX8hFjBrkAZgn98X3tvpg7EUpoqMKOi2D8qzJOx0Fe2PbOmL6ckX7kbDC
 cttw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references;
 bh=IYUiXiaNBsBZM0iKcHk24e5/fD/U7T1sgmMQxqdI2oM=;
 b=A7Ln/Mhfuiw2lfx4m16r6O32PU1OqCyPPjoysyoWP5Jc78So3/VVf/8fb0czUKSLhW
 SfJb9wOFBeTdyehQQMjeysFpt2881kDp0a96oGfGYcVaonheFtFztBaXQ6Lg5TbiMPKj
 p4YD2/jrOgcQuIBGG/gn0z2GxKl3DLxJEFNbr9LIEsvpXpgFJ7XPKllip+CrAGfiYC3C
 DkuIx4tX8u5aX6ud9jkjNxD2cQdSD3F/pDiNQrB30Q5odvteh3S8GKw74xt2DnZZBbUl
 9PwuTDeUS46kSOLrNLaMJdFc5jbIu+YinKpzQul/ZZEcDLODUrv+cC9ldvib5kjkNiVi
 w5Yw==
X-Gm-Message-State: AGi0PubAOVH6Yjpw9BNgewBT9/6XOe4rmwb3NWpRF7Z/hz79yAtPVVzg
 7JCsrHYFFXGlhZUS7OzRBw==
X-Google-Smtp-Source: APiQypIZndupecq/vOBzka0g47mBSQ6VZVYzrX+GcUnwFEwKBIoSzgu/MiKU8yydf78/zT7X/JUETg==
X-Received: by 2002:a9d:6d19:: with SMTP id o25mr17945553otp.294.1589319942164; 
 Tue, 12 May 2020 14:45:42 -0700 (PDT)
Received: from serve.minyard.net ([47.184.149.130])
 by smtp.gmail.com with ESMTPSA id r11sm5547491oib.47.2020.05.12.14.45.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:45:41 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPA id F3794180051;
 Tue, 12 May 2020 21:45:39 +0000 (UTC)
From: minyard@acm.org
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Date: Tue, 12 May 2020 16:45:32 -0500
Message-Id: <20200512214532.14117-1-minyard@acm.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326210958.13051-2-wsa+renesas@sang-engineering.com>
References: <20200326210958.13051-2-wsa+renesas@sang-engineering.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jYcip-003mFm-1p
Subject: [Openipmi-developer] [PATCH] char: ipmi: convert to use
 i2c_new_client_device()
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Corey Minyard <cminyard@mvista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Wolfram Sang <wsa+renesas@sang-engineering.com>

Move away from the deprecated API.

Based on a patch by Wolfram Sang <wsa+renesas@sang-engineering.com>.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
I think this works.

 drivers/char/ipmi/ipmi_ssif.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index b7145f370d3b..65563e5e5731 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1943,12 +1943,14 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 static int ssif_adapter_handler(struct device *adev, void *opaque)
 {
 	struct ssif_addr_info *addr_info = opaque;
+	struct i2c_client *cl;
 
 	if (adev->type != &i2c_adapter_type)
 		return 0;
 
-	addr_info->added_client = i2c_new_device(to_i2c_adapter(adev),
-						 &addr_info->binfo);
+	cl = i2c_new_client_device(to_i2c_adapter(adev), &addr_info->binfo);
+	if (!IS_ERR(cl))
+		addr_info->added_client = cl;
 
 	if (!addr_info->adapter_name)
 		return 1; /* Only try the first I2C adapter by default. */
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
