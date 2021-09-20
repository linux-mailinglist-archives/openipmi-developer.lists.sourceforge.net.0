Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB0D4113A2
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Sep 2021 13:38:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mSHcm-0004vA-DU; Mon, 20 Sep 2021 11:38:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mSHck-0004v2-SD
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Sep 2021 11:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JnTk4XaCxbPtC4rhZXkrx2BTn2oZk+82FKzVoc6BS/o=; b=lUl9eFVvbWRIHghaOTCtgBwh/t
 FJPnk0HVCS/olS3ZtCD15XiXNyjId0ZvZGmucQUuZ8ktBB/CqCDKFw9lBXNe0x7RVwXjODTqyMrS8
 XLnkmNimvFMb8ptPLvw2OTlNEXU748R2PnozDzCsmlXlZqj0n4ODbqCpERZsmtgQ9ACI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JnTk4XaCxbPtC4rhZXkrx2BTn2oZk+82FKzVoc6BS/o=; b=Nbc0j8rAXi+2pYdEOLqo3WWmRl
 0hzy0gUixAqxlzk7siIefIQHVzi6ZBO4vz75W0LZRMRCx6jNRvhWehI110zuBjBPyJNHhDqQ+lIdJ
 mCmDfiaQ0gVoaDeC2Ucr/Ud2fPUROpGoIdLgq/Z0y4w7cHeu+dcekMrFz0SpJ4axUEYo=;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mSHch-00GtHO-Jp
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Sep 2021 11:38:14 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 k12-20020a056830150c00b0051abe7f680bso23144742otp.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 20 Sep 2021 04:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=JnTk4XaCxbPtC4rhZXkrx2BTn2oZk+82FKzVoc6BS/o=;
 b=g2ihOB6F6u66xHLOXZBNTbuI4AfwuM8bBGdCekC1UhULBRxCiJIsP/QrlYUdjdNRT1
 TCUVPngricwY1yOqdaqzzAjVb9rtrSnscuJzMylacGCJpuYeApnMrb+SAeVJIjhM1lXF
 deKpUYcFvE/9u7xhNWODlQqTjZG6lowaqibZ3zYE+tLCkRgsKq9t1SSnhKhac6S+tT74
 1owMPEbeW/F0Ob24rR8nJLRFreBnzakvlG48fFI9XlcLUJlU2kiUKGAMUZKsWR0VjKl6
 vJfk2fo1AlG0T9lLCz8pY8MKSUBVI9zNJP0iMkxuqD0IjpVzTwk7QJMA+RdRP9GruRS1
 +JTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=JnTk4XaCxbPtC4rhZXkrx2BTn2oZk+82FKzVoc6BS/o=;
 b=aZx55MqVDSaEPp/jBl6/0FRqCdahpN6Sb5fYCJgYdjdBFOMSh7Vx+J2oy7GdR0tf7r
 FXWxxOXQtMzdsXtNIEUtOZLsz33Axfn2KS6mzXChAx6cm6R0NAINsIP5MpRiVuQ25aE4
 8HdIvWIWV85x7H1OrD8oyWhOB3U56gDKHgFc2y+GpY6MpgXYHkTHmnvfGpR2s9npO7Yj
 Xt7wMN3IvxMm4iCXY0VX58xI7herLi3IajF8nlnRH6bVy/IRg6oN9B1m1v4Br4Cspfcf
 8XezPb7t8ORzGnhMOXUWPpf1XxbU0mQVBTni41dSMkCnnHPJEhpjT9fM5FNDTVWlzFOF
 SJoQ==
X-Gm-Message-State: AOAM533dhSvwswwjM9VzvGmPpGZyiVkhlCnmmneUrO9NlOjtHs4lMZ0z
 d1uxiYsEDpZw+B2WqkhhowBGfc5XeA==
X-Google-Smtp-Source: ABdhPJwWuzoVgQAHkOUebCTCmqkHgcxVPWHGXY+lO83y/yfkxq3sWFQ2o3v2YiCnz/Z0fCVM4gBj1A==
X-Received: by 2002:a05:6830:204d:: with SMTP id
 f13mr3769066otp.123.1632137885944; 
 Mon, 20 Sep 2021 04:38:05 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id c10sm3475843ooi.11.2021.09.20.04.38.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Sep 2021 04:38:04 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:85f2:365c:992b:e354])
 by serve.minyard.net (Postfix) with ESMTPSA id CAB241800EF;
 Mon, 20 Sep 2021 11:38:03 +0000 (UTC)
Date: Mon, 20 Sep 2021 06:38:02 -0500
From: Corey Minyard <minyard@acm.org>
To: Anton Lundin <glance@acc.umu.se>
Message-ID: <20210920113802.GC545073@minyard.net>
References: <20210916145300.GD108031@montezuma.acc.umu.se>
 <20210916163945.GY545073@minyard.net>
 <20210917101419.GE108031@montezuma.acc.umu.se>
 <20210917120758.GA545073@minyard.net>
 <20210917125525.GF108031@montezuma.acc.umu.se>
 <20210917131916.GB545073@minyard.net>
 <20210917132648.GG108031@montezuma.acc.umu.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917132648.GG108031@montezuma.acc.umu.se>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Well, that was dumb. Fix follows... Thanks for working on
 this. On your approval, I'll send this to Linus. -corey 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mSHch-00GtHO-Jp
Subject: Re: [Openipmi-developer] Issue with panic handling and ipmi
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Well, that was dumb.  Fix follows...

Thanks for working on this.  On your approval, I'll send this to Linus.

-corey

ipmi:watchdog: Set panic count to proper value on a panic

You will get two decrements when the messages on a panic are sent, not
one, since 2033f6858970 ("ipmi: Free receive messages when in an oops")
was added, but the watchdog code had a bug where it didn't set the value
properly.

Reported-by: Anton Lundin <glance@acc.umu.se>
Cc: <Stable@vger.kernel.org> # v5.4+
Fixes: 2033f6858970 ("ipmi: Free receive messages when in an oops")
Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_watchdog.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index e4ff3b50de7f..9a64a069ffd1 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -531,7 +531,7 @@ static void panic_halt_ipmi_set_timeout(void)
 	/* Wait for the messages to be free. */
 	while (atomic_read(&panic_done_count) != 0)
 		ipmi_poll_interface(watchdog_user);
-	atomic_inc(&panic_done_count);
+	atomic_set(&panic_done_count, 2);
 	rv = __ipmi_set_timeout(&panic_halt_smi_msg,
 				&panic_halt_recv_msg,
 				&send_heartbeat_now);



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
