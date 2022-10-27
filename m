Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C7F60FBF9
	for <lists+openipmi-developer@lfdr.de>; Thu, 27 Oct 2022 17:31:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oo4qe-0001UB-OL;
	Thu, 27 Oct 2022 15:31:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=KBNb=24=goodmis.org=rostedt@kernel.org>)
 id 1oo4qd-0001U5-GR for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Oct 2022 15:31:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yTGnvrRLdD1Z0RaUqumUXIIIOaZP444mc8N98LAl5xo=; b=L8sFBzF4yK5UGUb1eItJolftCU
 px2U/VijlfsBN3scv+t+vkBFmHinfM+l+qP+/jMzWusuzJywW+TB72QrNUixw0C1JyE/ePAWRUTk+
 pQILhwGnVXpP7vwtU2pyGQuaFS0I+ndggaLVA5/chQWmdjAueT2QiOOJprYVdTdLRXj8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yTGnvrRLdD1Z0RaUqumUXIIIOaZP444mc8N98LAl5xo=; b=YjfQbN5HElzN2FskLgoF8OOQi8
 Y8zNntsknJB+FohJ3aH0cx6tdVXHhTP8wqPvQV90l+GG20TLINTyVWeRwwXQErI+pF4T+Oi+4EYV9
 bW468Hum/1/RWqJRhW/Sip91sm5X07QB8ulOgNbirZaHLylPtjbWtJ6mw3O7915/197M=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oo4qc-0005UK-Md for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Oct 2022 15:31:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4C723B825E3;
 Thu, 27 Oct 2022 15:31:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26408C433C1;
 Thu, 27 Oct 2022 15:31:02 +0000 (UTC)
Date: Thu, 27 Oct 2022 11:31:16 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20221027113116.0ef014a8@gandalf.local.home>
In-Reply-To: <Y1qiTjLWG8u2eDPh@minyard.net>
References: <20221027150525.753064657@goodmis.org>
 <20221027150926.969147187@goodmis.org>
 <Y1qhrqfF87gnyiCE@minyard.net> <Y1qiTjLWG8u2eDPh@minyard.net>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -4.8 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu,
 27 Oct 2022 10:22:54 -0500 Corey Minyard <minyard@acm.org>
 wrote: > Well, del_timer_shutdown() isn't there yet, so I guess the Ack is
 what > you need. Yep :-) 
 Content analysis details:   (-4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oo4qc-0005UK-Md
Subject: Re: [Openipmi-developer] [RFC][PATCH v2 10/31] timers: ipmi: Use
 del_timer_shutdown() before freeing timer
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 openipmi-developer@lists.sourceforge.net, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, 27 Oct 2022 10:22:54 -0500
Corey Minyard <minyard@acm.org> wrote:

> Well, del_timer_shutdown() isn't there yet, so I guess the Ack is what
> you need.

Yep :-)

I need Thomas and Linus's OK on that too, hence the RFC.

-- Steve


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
