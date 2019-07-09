Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7369B63D17
	for <lists+openipmi-developer@lfdr.de>; Tue,  9 Jul 2019 23:06:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hkxKB-0005Ml-Gy; Tue, 09 Jul 2019 21:06:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <htejun@gmail.com>) id 1hkxKA-0005Ma-Ee
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 21:06:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p+0iKIpxhtS7ONqpYVXoHpFJPdscdiTEJQgn7ZEifkM=; b=Z8EhJZiI+LKzz/2wf/4H3Vpbrz
 cHU0RnzgDUfUfyAX/NB44KfYSw60naQv6egyvbXNIa5c50CFvwtnQgA/u3S4pdjn2/oH//nVMhAlW
 sEhog0dBd/GPj3UnEqxKHgJyZ7xuJNBk2KOXCUjT7n0mdYx6vDrkIIv8MavOZ2Mb9ZQA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=p+0iKIpxhtS7ONqpYVXoHpFJPdscdiTEJQgn7ZEifkM=; b=Z
 naxgLcafsUG7Yed3FsBo03AHZe5/z+iZyZYZxp5N4J+Rje8oiSHi0LTarHKO7S8WtQptN/p1GG4Vk
 gOcNdNHllHHA9gEkAGNSlzM5nlvZ3UxFGTu5lhyuKeIe0bHZ1zG9GXdVaI1xRG+e2FOHGldqo8pp3
 VlQhgjlr+LRlgTTQ=;
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hkxK9-00CuoX-5r
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 21:06:54 +0000
Received: by mail-qk1-f194.google.com with SMTP id t8so262305qkt.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 09 Jul 2019 14:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=p+0iKIpxhtS7ONqpYVXoHpFJPdscdiTEJQgn7ZEifkM=;
 b=EZNfMS2Gmc5dJFFX6FnoVUd6/tB7z1Xkj19bXe5+6+yveOChvKOModxqdrg8Z+VW16
 ZlI0/XaWHSuxsvYtZEvt6wDcl3nuFx8vqil+JUQAviEGSw5IsMcjFQsiy2r9/5L7M8be
 n75eRyqbK1O5dputlsiOaROXEb1yCNdnHZruAbQmcRst+KlXXYFtFoyusfM6Z2xcRrPD
 jGlR27zfHVc0lHDkHV/PRL7//e3PbcpwTX7zY/L7gzfAYb2RDmcv8a5rcW9c0hPV1GMz
 FuGdGZjoDt/e8+1fJJT09eI8BaAoSCstxKAYMgZ30xgXOjuYAv9kKeSYJv/Bb6KIFNQX
 ZF6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mime-version:content-disposition:user-agent;
 bh=p+0iKIpxhtS7ONqpYVXoHpFJPdscdiTEJQgn7ZEifkM=;
 b=GV90Ip1UynAGKFGc71uR5o5h7APTzbFDggLcHl2Trowxst9eD1MT/SFEwyP/M28k3Y
 6UBaak4ykXr3rt4TfeJ/zX38yp06GSRDbssPRuREp2GjlvwZ/0qH8gQKi3BuvQVkgadN
 f25NNpTegIwWet8EeL9cUfi5gFsalZ3AEKqiKUQf3UutS0TTd3W4nA4f+D5ZCkOKSJzy
 9XdQ+fjk4hbWEIqwD/kyt2h+jjaALHFllaceMUuU5VH4pcoz30KM9IXKvXmR3Z1GDabU
 u2FjJv1DKkvKPGVH6kX9TIrSawQGu4hhR8CrHwxGV0F8xy794D2MCGaCwn5nlLNtJfzi
 i7ow==
X-Gm-Message-State: APjAAAUr3OqyRqSVaDJUwy6gbD/gGRHvdijLUshYHEc4YUICEaYMF73e
 mG6+QXf6V1izxmAwWtHTfps=
X-Google-Smtp-Source: APXvYqwReSkVKUnYVb8h3Ezdd3eVWWwto1dEAbd73p13w0xBUvFRK5wMaabBqBcDZdeLWTaZOdXSSA==
X-Received: by 2002:a05:620a:1448:: with SMTP id
 i8mr20607337qkl.73.1562706407024; 
 Tue, 09 Jul 2019 14:06:47 -0700 (PDT)
Received: from localhost ([2620:10d:c091:500::2:fa50])
 by smtp.gmail.com with ESMTPSA id g3sm66571qkk.125.2019.07.09.14.06.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 14:06:45 -0700 (PDT)
Date: Tue, 9 Jul 2019 14:06:43 -0700
From: Tejun Heo <tj@kernel.org>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (htejun[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
X-Headers-End: 1hkxK9-00CuoX-5r
Subject: [Openipmi-developer] [PATCH] ipmi_si_intf: use usleep_range()
 instead of busy looping
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@fb.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

ipmi_thread() uses back-to-back schedule() to poll for command
completion which, on some machines, can push up CPU consumption and
heavily tax the scheduler locks leading to noticeable overall
performance degradation.

This patch replaces schedule() with usleep_range(100, 200).  This
allows the sensor readings to finish resonably fast and the cpu
consumption of the kthread is kept under several percents of a core.

Signed-off-by: Tejun Heo <tj@kernel.org>
---
 drivers/char/ipmi/ipmi_si_intf.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index f124a2d2bb9f..2143e3c10623 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -1010,7 +1010,7 @@ static int ipmi_thread(void *data)
 		if (smi_result == SI_SM_CALL_WITHOUT_DELAY)
 			; /* do nothing */
 		else if (smi_result == SI_SM_CALL_WITH_DELAY && busy_wait)
-			schedule();
+			usleep_range(100, 200);
 		else if (smi_result == SI_SM_IDLE) {
 			if (atomic_read(&smi_info->need_watch)) {
 				schedule_timeout_interruptible(100);


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
