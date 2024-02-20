Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AEE85C416
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Feb 2024 19:57:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rcVIl-0001hw-23;
	Tue, 20 Feb 2024 18:57:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <geissonator@gmail.com>) id 1rcSH5-0001jt-Km
 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Feb 2024 15:43:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ba+FZT/y8DAA+ic+9F75Kom97L71NReEfdPzSuOXjjQ=; b=VsuJ9GeVgIcnoy2gnF/4T3x4aB
 TMbbJgy9u2aBMrWDy5SWQPS6cVnmm7pF5d7SdnKDEuIZ7QpxOOQyyzG943xVomjCujTVQSno/JHQF
 7dpFsgx1QG2rhJPaTyDtopomVcagKRDrfoVaZDTUb1hLGOc6Z0I3zZGRTzbQ+ZFgsbsY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ba+FZT/y8DAA+ic+9F75Kom97L71NReEfdPzSuOXjjQ=; b=h
 NXU7gxkX00y5nwtPYQcO4l/Jsy99cf6EH56pGSK2f6+gXtyscFIt+4FGVgmx9H/YUePqgs26z2ln4
 oGWLHevgCp0SrHPkgi+Qw+fqOcd9XKQsbdNfvLd+YFYfYoR29p3hPjpfOcUdwizYXicPFqhOZ1yo2
 qq8LEI1ufBqijbcc=;
Received: from mail-oo1-f52.google.com ([209.85.161.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rcSH0-0002Ej-IP for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Feb 2024 15:43:16 +0000
Received: by mail-oo1-f52.google.com with SMTP id
 006d021491bc7-59fb0b5b47eso1454096eaf.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 20 Feb 2024 07:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708443786; x=1709048586; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Ba+FZT/y8DAA+ic+9F75Kom97L71NReEfdPzSuOXjjQ=;
 b=CVOkHHHrRcd7c+egRrNJBRc38KxTF9KUZ9FNm6x9G3QhyfkjJ/qIeouTlKjC0MWIuw
 SchiD7Vw2mRYNo+SA8xyVrRX1WNi7vcKPEYcJ5aKDKJVyqhv7vRMgHQMiaKTqInZBS0B
 UioM0i4L6lvamMABkBKB3783k43/93ltI/0PeS7cG9qZdEyVfXzEhJ/DR3lt6JDuSJe1
 R3CTkC+S6FRafQVAfrm/HhT2WiL8XnMqtU+PHFytdq/7gPMBP4/bctIoCauEnnZR8Bsd
 /5SCdaEdPqgy7AQ6J1eamFRcd2Tg5DG7TjWoKoRLQu6tn5N8cOHdcrgIypFQMGN/IP2p
 LKDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708443786; x=1709048586;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Ba+FZT/y8DAA+ic+9F75Kom97L71NReEfdPzSuOXjjQ=;
 b=iIxrAYpMt654G0WkIBZB9eCZLpMsTNv2W5WBlM/CEnffkl5JQuAuwa55uvpeXCqwW5
 425ERuyy4MU/vLRvtxJ9RSJ5IxqWu0d7hHACIGVf7fTGiQAgUVicpHB585FQnq0ycabx
 o9FGJQmYw+Cd7WI0pjMlErHIEz8t3vP19VddjuHNH9cqKFQi9/OlquyHxQsX4OXFoGOF
 mqrrGi2wxNnED0hpXjK+x5mC74iiFV8F3PcFuqw87P2plnQqFA7kHqHg7kb8ARM8q7ME
 qHI+FpDcoeHDPS+IFozOPiBFvw/Aai+bwMJWhPJFGCVnCNOkVz2uz3H1z34yD4+YgvSJ
 gzlA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJ78WLHMr09OGT3R17zmTxTs6e6NhS3880orVral/FBFnf05d/OJvYpBAllHh4se5ANyuI80c2rjbEhT8vNwJ/+4mj6bczOzSQ+JEife8stBMUfRVO8ZUz
X-Gm-Message-State: AOJu0Yz49t2Gr6ZvVW82qw3aBRjCtM84sa6n4YnbHYrLgjt7qaGmpk2l
 MEoQcIrIP7pbMLl+OxT8kPQAVD/CCehMQQaeXPdYsBWLyQ0Aqxpm
X-Google-Smtp-Source: AGHT+IGMh9C/THGjJ9L9lzGt8mkv2YzHJOx4qROhpehEf2GFdHrOOe/Lsm/J+pCmlIYkFTF5PQZHdg==
X-Received: by 2002:a4a:355a:0:b0:59f:fc30:d3aa with SMTP id
 w26-20020a4a355a000000b0059ffc30d3aamr2191859oog.3.1708443786272; 
 Tue, 20 Feb 2024 07:43:06 -0800 (PST)
Received: from localhost.localdomain ([129.41.86.2])
 by smtp.gmail.com with ESMTPSA id
 p3-20020a4adfc3000000b0059aaa2bebb6sm1388768ood.48.2024.02.20.07.43.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Feb 2024 07:43:05 -0800 (PST)
From: Andrew Geissler <geissonator@gmail.com>
To: minyard@acm.org, joel@jms.id.au, andrew@codeconstruct.com.au,
 openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Date: Tue, 20 Feb 2024 06:36:15 -0600
Message-Id: <20240220123615.963916-1-geissonator@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Andrew Geissler Commit f90bc0f97f2b ("ipmi: kcs: Poll
 OBF briefly to reduce OBE latency") introduced an optimization to poll when
 the host has read the output data register (ODR). Testing has shown that
 the 100us tim [...] 
 Content analysis details:   (0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geissonator[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.52 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rcSH0-0002Ej-IP
X-Mailman-Approved-At: Tue, 20 Feb 2024 18:57:09 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: kcs: Update OBF poll timeout to
 reduce latency
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
Cc: openbmc@lists.ozlabs.org, Andrew Geissler <geissonator@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Andrew Geissler <geissonator@yahoo.com>

Commit f90bc0f97f2b ("ipmi: kcs: Poll OBF briefly to reduce OBE
latency") introduced an optimization to poll when the host has
read the output data register (ODR). Testing has shown that the 100us
timeout was not always enough. When we miss that 100us window, it
results in 10x the time to get the next message from the BMC to the
host. When you're sending 100's of messages between the BMC and Host,
this results in a server boot taking 50% longer for IBM P10 machines.

Started with 1000 and worked it down until the issue started to reoccur.
200 was the sweet spot in my testing. 150 showed the issue
intermittently.
Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 72640da55380..af1eae6153f6 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -422,7 +422,7 @@ static void aspeed_kcs_irq_mask_update(struct kcs_bmc_device *kcs_bmc, u8 mask,
 			 * missed the event.
 			 */
 			rc = read_poll_timeout_atomic(aspeed_kcs_inb, str,
-						      !(str & KCS_BMC_STR_OBF), 1, 100, false,
+						      !(str & KCS_BMC_STR_OBF), 1, 200, false,
 						      &priv->kcs_bmc, priv->kcs_bmc.ioreg.str);
 			/* Time for the slow path? */
 			if (rc == -ETIMEDOUT)
-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
