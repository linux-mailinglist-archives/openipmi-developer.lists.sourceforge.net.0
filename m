Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60179521BB0
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 May 2022 16:16:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1noQf8-00066D-7R; Tue, 10 May 2022 14:16:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pmladek@suse.com>) id 1noQf7-000667-9C
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 14:16:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A8/NZJeBAhTKLHLb3PoAvlXD/AvbEgaBaR5HXaRNdkM=; b=O+FkuUGJ7LyRJGet6sQwRXfeKo
 x+pTGIjmrbjCTJQ0CmK3U6/ph9HN3H+3FO5tVJQwt+R51WySXo0o/PRizmyiOfdK4Yyk7+GJEph/s
 SG+HpO0J0xtK1Qd/Uy5EbxyzwooWOchDbkzmNpWRBK+PxNK1wKBZr0AeBaBA4UqKxjYQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A8/NZJeBAhTKLHLb3PoAvlXD/AvbEgaBaR5HXaRNdkM=; b=iBsFeYXjt0yPHf5+VuH+5/rIh+
 Oc4o/UgZqNM5yNB4d38F4bmZq3+6DuN4Wsn0zQCC+k6pqOr3IXS42X/tDWdNfJlkKGXOMddGBxraA
 sCc5JrPL3kf38xWP4K0tWJy4RrQPj9j1PYgukUQe1PUSmDnA7ceXkkHocBEvLEoRrlY0=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1noQf1-0003oZ-Vg
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 14:16:27 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 932901F896;
 Tue, 10 May 2022 14:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1652192171; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=A8/NZJeBAhTKLHLb3PoAvlXD/AvbEgaBaR5HXaRNdkM=;
 b=BeTzacf3mS4VoGHK6i1jVn2p93FIleajbiX/lqLZYQzEPT5BuEThdtby46ST2AJUboj/I/
 VqEG9r83Q4xijGW9lCE2hweKm6E7raa+vKstZ+w2OtTvG5P31Un3HT5rf7nvpJdK7CHBFy
 VZPQPYk1mnBdJ3vUcDiFbXkwBcjlkRU=
Received: from suse.cz (unknown [10.100.208.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 01C5F2C141;
 Tue, 10 May 2022 14:16:09 +0000 (UTC)
Date: Tue, 10 May 2022 16:16:06 +0200
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Message-ID: <YnpzpkfuwzJYbPYj@alley>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-11-gpiccoli@igalia.com>
 <f6def662-5742-b3a8-544f-bf15c636d83d@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f6def662-5742-b3a8-544f-bf15c636d83d@igalia.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 2022-05-09 11:13:17, Guilherme G. Piccoli wrote: >
 On 27/04/2022 19:49, Guilherme G. Piccoli wrote: > > The alpha panic notifier
 has some code issues, not following > > the conventions of other [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1noQf1-0003oZ-Vg
Subject: Re: [Openipmi-developer] [PATCH 10/30] alpha: Clean-up the panic
 notifier code
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
From: Petr Mladek via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Petr Mladek <pmladek@suse.com>
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org, fabiomirmar@gmail.com,
 x86@kernel.org, mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, Matt Turner <mattst88@gmail.com>,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 luto@kernel.org, linux-tegra@vger.kernel.org, rth@gcc.gnu.org,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, tglx@linutronix.de,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 bp@alien8.de, akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon 2022-05-09 11:13:17, Guilherme G. Piccoli wrote:
> On 27/04/2022 19:49, Guilherme G. Piccoli wrote:
> > The alpha panic notifier has some code issues, not following
> > the conventions of other notifiers. Also, it might halt the
> > machine but still it is set to run as early as possible, which
> > doesn't seem to be a good idea.

Yeah, it is pretty strange behavior.

I looked into the history. This notifier was added into the alpha code
in 2.4.0-test2pre2. In this historic code, the default panic() code
either rebooted after a timeout or ended in a infinite loop. There
was not crasdump at that times.

The notifier allowed to change the behavior. There were 3 notifiers:

   + mips and mips64 ended with blinking in panic()
   + alpha did __halt() in this srm case

They both still do this. I guess that it is some historic behavior
that people using these architectures are used to.

Anyway, it makes sense to do this as the last notifier after
dumping other information.

Reviewed-by: Petr Mladek <pmladek@suse.com>

Best Regards,
Petr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
