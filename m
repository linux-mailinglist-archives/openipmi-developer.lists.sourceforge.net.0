Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40587959205
	for <lists+openipmi-developer@lfdr.de>; Wed, 21 Aug 2024 03:05:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sgZms-0003D1-Hi;
	Wed, 21 Aug 2024 01:05:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sgZmr-0003Ct-7v
 for openipmi-developer@lists.sourceforge.net;
 Wed, 21 Aug 2024 01:05:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ICGVYcRkqiB0693PxDmpHHma2Q+GoypXmxF0cjKnkM=; b=RyjB/Zf6VbdWfXvRoz+sFUSx+C
 IKnnczJJQGTIeYwUawE2wEDsYOXF5ROOgyHiJmjuKaSahh+KTwTyY67Ve/FdIT3mvMXmPjtZtG+nx
 LYrS0NPTcvAeb9Vw/MM3GwfYzQGp3hPmz+4GhTPlHPdTMzFXLC4PtMofkT1e8VBTGwwY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2ICGVYcRkqiB0693PxDmpHHma2Q+GoypXmxF0cjKnkM=; b=jpPmHs5ZhIju0frYGgA7tkrh9k
 x0bB9UE8jk/g8ovrsfw6UWeQNsoGpg0Aex3n+EisareEcJ+yoiO9ETTdSikIa8KCNJT6WGgsP0BoU
 1mITpymqGDDxejSH3h+VS9gPQ06e1aeRIhxR3u7vQPyBLFaoHups7JAuBGBV89+cijM8=;
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sgZmr-0007dO-6m for openipmi-developer@lists.sourceforge.net;
 Wed, 21 Aug 2024 01:05:21 +0000
Received: by mail-oi1-f173.google.com with SMTP id
 5614622812f47-3db1bc36bc2so157112b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 20 Aug 2024 18:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1724202315; x=1724807115;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2ICGVYcRkqiB0693PxDmpHHma2Q+GoypXmxF0cjKnkM=;
 b=sUejnMUqWqs0BBOjdbZ+p5wOZe0f5a5VHISTvbiYj3E+WeDNx4LM5RIlgOLmtq0F6l
 xQP/b0tIzMc9IhaBtYi7ho/BPQozuIwd/v+SVYDGhYl1bvIO6A5hh84x27u+AtK0KmGJ
 dWG2RjjHT+RoUairGWKmbKKawuKfDbUfX6I+3uCWcpFpu/N2licRpJNYiONVh7z9O5Zg
 uohEO+9/fp/Tcj+8QwVYb4tRF+ud1A0qkha2+CUm8usSt6a+G6kx6V/oamr0mgV7XX+S
 H97zv0o3GQirrIaT/bUkpQWW+b3jZ5oBP88aLRNvWlyDafalC5Z+l3qp9WKh2W1qHpva
 sy2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724202315; x=1724807115;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2ICGVYcRkqiB0693PxDmpHHma2Q+GoypXmxF0cjKnkM=;
 b=NGBJ5W0EsqKbi4nUL6naNlD72K+2grS0f/4YNhnMSNg1WEzPwkV7K6BwfUkTYqTEuU
 xRXCCEomYXQFoJlWzT7Hm2oPlB8E1i/RFu5jPlXUeW8Yn9OvRI7QTg8HT43OstfXQikt
 jg3GQQ8rrjX0UoHo74vv1BhCccInDfG6A9BC5XJwmXRbXoobI+vTfCN4P3VB25aKWYpI
 zAlJg8muDDCSV/BY+93DpLeUT4uYn+zfO+/FIXtyDQZOVwut8lzzhODQ9/KN/GpluQv6
 6USuzWQSJpyVRK3AYz1VKPvoyEBFgv88qnVZ1q4sEAU8jFMaB8DtrUnWIFSvxtLQf/Mo
 YLhA==
X-Gm-Message-State: AOJu0YxSL8XqTAHpL+mkLclerCb0YGLYB1kwqoQttrQmNdqSVmAmE3y6
 eSVu53vqhm9rAfOG7K2tOm07HzTKO+6veQ4qfHSu7b1QMAuRJDJ5jCTmrHX+HPTNi33KKLWrezU
 iTa8=
X-Google-Smtp-Source: AGHT+IF/Y/1GPSasXn3CRcQ8KFCuuUJT9SPTwnxsx27s0DXbOwypPL0HFBlY5I0DGL6GhUJuQx7c2w==
X-Received: by 2002:a05:6808:23c1:b0:3d9:3e6f:ba07 with SMTP id
 5614622812f47-3de1a284b8bmr332156b6e.3.1724202315395; 
 Tue, 20 Aug 2024 18:05:15 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:be34:fc2:a1be:3f67])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-3dd33d6254dsm3129646b6e.20.2024.08.20.18.05.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2024 18:05:14 -0700 (PDT)
Date: Tue, 20 Aug 2024 20:05:13 -0500
From: Corey Minyard <corey@minyard.net>
To: "Ivan T. Ivanov" <iivanov@suse.de>
Message-ID: <ZsU9SRlQgzQn8bDs@mail.minyard.net>
References: <20240816065458.117986-1-iivanov@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240816065458.117986-1-iivanov@suse.de>
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: If an IPMI SSIF device is probed and there is something there,
 but probably not an actual BMC, the code would just issue a lot of errors
 before it failed. We kind of need these errors to help with cer [...] 
 Content analysis details:   (-5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.167.173 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.173 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.173 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.173 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sgZmr-0007dO-6m
Subject: [Openipmi-developer] [PATCH] ipmi:ssif: Improve detecting during
 probing
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

If an IPMI SSIF device is probed and there is something there, but
probably not an actual BMC, the code would just issue a lot of errors
before it failed.  We kind of need these errors to help with certain
issues, and some of the failure reports are non-fatal.

However, a get device id command should alway work.  If that fails,
nothing else is going to work and it's a pretty good indication that
there's no valid BMC there.  So issue and check that command and bail
if it fails.

Reported-by: Ivan T. Ivanov <iivanov@suse.de>
Signed-off-by: Corey Minyard <corey@minyard.net>
---
 drivers/char/ipmi/ipmi_ssif.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

Ivan, is it possible for you to test this patch on the broken system?
It should work based on what you reported, but it's nice to be sure.

Also, I discovered that the detect function is kind of bogus, it only
works on an address list that isn't present (any more).  However, I
re-used it for my purposes in the probe function.

Thanks.

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index e8e7b832c060..4c403e7a9fc8 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1368,8 +1368,20 @@ static int ssif_detect(struct i2c_client *client, struct i2c_board_info *info)
 	rv = do_cmd(client, 2, msg, &len, resp);
 	if (rv)
 		rv = -ENODEV;
-	else
+	else {
+	    if (len < 3) {
+		rv = -ENODEV;
+	    } else {
+		struct ipmi_device_id id;
+
+		rv = ipmi_demangle_device_id(resp[0] >> 2, resp[1],
+					     resp + 2, len - 2, &id);
+		if (rv)
+		    rv = -ENODEV; /* Error means a BMC probably isn't there. */
+	    }
+	    if (!rv && info)
 		strscpy(info->type, DEVICE_NAME, I2C_NAME_SIZE);
+	}
 	kfree(resp);
 	return rv;
 }
@@ -1704,6 +1716,16 @@ static int ssif_probe(struct i2c_client *client)
 		ipmi_addr_src_to_str(ssif_info->addr_source),
 		client->addr, client->adapter->name, slave_addr);
 
+	/*
+	 * Send a get device id command and validate its response to
+	 * make sure a valid BMC is there.
+	 */
+	rv = ssif_detect(client, NULL);
+	if (rv) {
+		dev_err(&client->dev, "Not present\n");
+		goto out;
+	}
+
 	/* Now check for system interface capabilities */
 	msg[0] = IPMI_NETFN_APP_REQUEST << 2;
 	msg[1] = IPMI_GET_SYSTEM_INTERFACE_CAPABILITIES_CMD;
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
