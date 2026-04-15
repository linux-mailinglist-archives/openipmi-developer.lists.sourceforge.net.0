Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qWG7HYyV4mnP7gAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Apr 2026 22:18:20 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D47C41E78A
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Apr 2026 22:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=o9vZgqCkHN0wD5ds6bB/J/nZWanpfQehKqy2bEtsBCU=; b=GW3gNwl+17SlXw3HWwCgkyQw7g
	gPaME+ktiqQaezc8T5HFcAnKWo32GXxSqLgGiCFtD74MmSVGnFIyynh04aANmt2vcgxw8KjjdtYif
	DiAs36a4T3SC0pT+3ofEBYGsPe0mBkbyeswYpi3YNZc5vMFa81qzQcdV9EcBbkS+sTq8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wDpdh-0000eA-4V;
	Fri, 17 Apr 2026 20:18:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <matt@readmodwrite.com>) id 1wCzMY-0005q5-O9
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Apr 2026 12:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=byoxSE8eLNhPgNMdLhg0WIr8vPNq3K1YFYQrkyVGxmc=; b=bu9Aesj+lOUiuv+DS9nMDTQqzH
 qVOAIrr6ZRIMCmbriVvIs3BzA1nHb9J6wvup2iOQAuspwwm7hnklYC15kcwUakpLZJsG9MVHAJ8L/
 zcR/Kl+kplDBo/13zU9+Ya5fT9RFBLZD/khxfihK+4xTb51yUpvWfrLODu0cXEajnNYU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=byoxSE8eLNhPgNMdLhg0WIr8vPNq3K1YFYQrkyVGxmc=; b=V
 QaqgmH3pwRBwAJjB+FY+8n5BccguMQFZ1xONSWXFLCJ4NtacRUXIrkmDsoJGEfFVK0nTDFy59XzCR
 Dad1xL3q75NHlGbJ/MAllFgMa5rn+bE3m3BoSNu5x0EeTKy7/gRbgxWJV8/uYknfEjaoN1SL9NBu/
 Q9XVDZugDdOstDo0=;
Received: from mail-ej1-f52.google.com ([209.85.218.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wCzMZ-0002T8-0M for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Apr 2026 12:28:59 +0000
Received: by mail-ej1-f52.google.com with SMTP id
 a640c23a62f3a-b93698bb57aso1169536166b.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 15 Apr 2026 05:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1776256127;
 x=1776860927; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=byoxSE8eLNhPgNMdLhg0WIr8vPNq3K1YFYQrkyVGxmc=;
 b=ZUJIK5dYzL0u9tcTEWsY2Y6uxPu7TeD7kmMUmVyGPiVRTBfkYcf3jliDu6OfcL35Pg
 PD8pNRJkbDpxqXSOiCdThQ6vsHXEJn7NXHRmm12UUj7qN4nLGLQI/ai8FVssxz5p1s2Q
 Zbs3cNgrDLAp3aTLE1m+RHMpaY4gpH/xo/lH55jyPZC1IAuEa+6U1BZcQxy1nDj1VEd6
 J41Bb9R4L4dKQGyA3hR9uwwFLV0wlJDP3NMkyVWFR07qNCSRpC1y2PnhXB3DozZWJlxC
 oCQowBGUKvW6K8ncrdB6vQNs9YUUM5I0xluU/S3jc+Ky0Oz+sao3MwDd57zCcHaoxyxo
 E9EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776256127; x=1776860927;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=byoxSE8eLNhPgNMdLhg0WIr8vPNq3K1YFYQrkyVGxmc=;
 b=Tm06u3v+NG3cxByDtiMwP3CpITPhMI4r1hV5xBgPXZmWIZY+B8075oA1pMqrfRzKT7
 z4nhJJGSn7mRcbJ01g/S3VfcvkdPTnTrZMWNcbmTJVVmLJ5cc+ki6s2HmDtrHxCxkDos
 ld/0LIjKWeorKwHQi0TQ1M44w4YGvvV4d5ZFKetTpuXckubUnYI/+4fxpcOQg9uEcqN3
 0BVS6CVWj/os/GKndTZXUXk3Q1Ic2Bg35owkCLFggSd0Q5dLeG8XziPXUUrBOdZqadF0
 SBkCDE0qSrnGzURxo3xXY3N9JZnHoD3FBiop3IIHMZTcIbVEOZotx472dK9eexXVITyF
 9P+A==
X-Gm-Message-State: AOJu0YwVfXm4Q71Otpqna1dnQYuzxtxU/zFSdKnLvqm/N66/cKh3/m5f
 YQsNP3wG2mN79woluxv7A0+u+0rlolUBiKx9FUn6NrBE3K6tGzmu+O8K4aZst3DNyvTH2CoDBJs
 9PRu/f+s=
X-Gm-Gg: AeBDievNzH2H48U4ehrsK3JgDauCLHlDWpq5NTA+RDPQ7BkteQ1rUMzH2JdNZp2KbA4
 EJOJwUVpUwJylQKaVNYi61lnJWBqU4hN0LcpqGsv5FMoZyr40X4ss+MZDa5j86wcsu68DrjpLXE
 gg0lN01pkCnbnYVP5RyaquArLdRo/iHW8b9A8y6O/FB7IvUmGs89ftm+yI6yhTGIp5HD9/PUGgZ
 0+AS/ZFK4GcCLQ2A6rrLANbWPqUXU78zKm4ukAlfAwxynKyKU4tFV5hYlh1PNQieX0LR77mjnR0
 FxMf9fhA+a1Xs79SEv9N4429nu4x4zdMWFJUHw5n25cGTL0h94l6jlh3Wl3zacJqYXo/5fZ0gUx
 hnuspQpofJdZaPpY2pI1JKLDq9t7jvrVWZn94/uK8GKpu4j8uVj7lcLp+ilcf8Vt0G1oJWK2JxH
 F1ZpaSwEAte1eEEgXxJcU6QqdjnHQv9gnSjft/Y58EmvZQCho=
X-Received: by 2002:a05:6000:178b:b0:43d:78ae:b785 with SMTP id
 ffacd0b85a97d-43d78aeba0emr18559916f8f.21.1776254374554; 
 Wed, 15 Apr 2026 04:59:34 -0700 (PDT)
Received: from matt-Precision-5490.. ([2a09:bac6:37a8:ec8::179:23a])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43ead402ee8sm4757070f8f.37.2026.04.15.04.59.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 04:59:33 -0700 (PDT)
From: Matt Fleming <matt@readmodwrite.com>
To: Corey Minyard <corey@minyard.net>
Date: Wed, 15 Apr 2026 12:59:30 +0100
Message-ID: <20260415115930.3428942-1-matt@readmodwrite.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Matt Fleming <mfleming@cloudflare.com> When the BMC
 does not respond to a "Get Device ID" command,
 the wait_event() in __get_device_id()
 blocks forever in TASK_UNINTERRUPTIBLE while holding bmc->dyn_mutex. Every
 subsequent sysfs reader the [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.52 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wCzMZ-0002T8-0M
X-Mailman-Approved-At: Fri, 17 Apr 2026 20:18:09 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Add timeout to unconditional
 wait in __get_device_id()
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
Cc: Matt Fleming <matt@readmodwrite.com>,
 openipmi-developer@lists.sourceforge.net,
 Matt Fleming <mfleming@cloudflare.com>, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [0.89 / 15.00];
	DATE_IN_PAST(1.00)[56];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:matt@readmodwrite.com,m:openipmi-developer@lists.sourceforge.net,m:mfleming@cloudflare.com,m:linux-kernel@vger.kernel.org,m:kernel-team@cloudflare.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[readmodwrite.com];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,readmodwrite-com.20251104.gappssmtp.com:s=20251104];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,readmodwrite-com.20251104.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cloudflare.com:email,readmodwrite.com:mid,readmodwrite.com:email]
X-Rspamd-Queue-Id: 6D47C41E78A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Matt Fleming <mfleming@cloudflare.com>

When the BMC does not respond to a "Get Device ID" command, the
wait_event() in __get_device_id() blocks forever in TASK_UNINTERRUPTIBLE
while holding bmc->dyn_mutex. Every subsequent sysfs reader then piles
up in D state. Replace with wait_event_timeout() to return -EIO after 1
second.

Signed-off-by: Matt Fleming <matt@readmodwrite.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c41f51c82edd..efa9588e8210 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2599,7 +2599,13 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
 	if (rv)
 		goto out_reset_handler;
 
-	wait_event(intf->waitq, bmc->dyn_id_set != 2);
+	if (!wait_event_timeout(intf->waitq, bmc->dyn_id_set != 2,
+				msecs_to_jiffies(1000))) {
+		dev_warn(intf->si_dev,
+			 "Timed out waiting for get bmc device id response\n");
+		rv = -EIO;
+		goto out_reset_handler;
+	}
 
 	if (!bmc->dyn_id_set) {
 		if (bmc->cc != IPMI_CC_NO_ERROR &&
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
