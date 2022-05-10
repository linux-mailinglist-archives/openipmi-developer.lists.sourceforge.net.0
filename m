Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A15521406
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 May 2022 13:39:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1noOCf-0007Aa-H9; Tue, 10 May 2022 11:38:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pmladek@suse.com>) id 1noOCb-0007A2-OQ
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 11:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QjxQbnD6WUcAB5XSGPbhgiXq5Z1nB8h07eo4ZkZ4QC8=; b=BZ5dFUBAYTWYpk/QvPbvbxSZRk
 BsyOcmJ+4H11M0MayTbFO0rXodbs4W5pYuDhL8hNgxaaXSEHjm23dLsHQtIhCQY5lqW7y6ZDdcEXY
 YwYvpPryFodj39QjXwvzND6PpXEtj3ci8+K8ffhRKhSFYL5KP/1hQHewawGlhed7C/iI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QjxQbnD6WUcAB5XSGPbhgiXq5Z1nB8h07eo4ZkZ4QC8=; b=GrpauMmNeL3Ec5R6TlqCoc9k9I
 sdmr7kq4O3hQwjPcqFBskwhj9XLrA7L9wGRfcR+kjLIAHumIrQ9SMVYzTc6VvWJBuDp82sH4hZN/v
 IzYBtNBhWDiHGr+ouMeeLC9lR7v9yct4rfWJoPZbjLNauqOccE6RXn1Ypkzy/bTNOuqg=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1noOCZ-0004Lt-Ba
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 11:38:53 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id E799F21C06;
 Tue, 10 May 2022 11:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1652182721; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QjxQbnD6WUcAB5XSGPbhgiXq5Z1nB8h07eo4ZkZ4QC8=;
 b=ux1OKlKPpQAZrqb3VSx/+cdnKv+z0GMrb7Vrl4wT7av9mwtdsYHmGTFl15YLILBNoNipDu
 zhzvyNUQ0tVf4I8bosAIddNvm3hk9CLYxTFt2W7RQIuTrmM1G9742/mw3JpxDF9W//N0xh
 4YsR4kO61TX2TGUrgE/V7TAnZzSnJsg=
Received: from suse.cz (unknown [10.100.208.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id F0AB42C141;
 Tue, 10 May 2022 11:38:39 +0000 (UTC)
Date: Tue, 10 May 2022 13:38:39 +0200
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Message-ID: <YnpOv4hAPV4b+6v4@alley>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-5-gpiccoli@igalia.com>
 <CAE=gft5Pq25L4KFoPWbftkPF-JN1ex2yws77mMJ4GQnn9W0L2g@mail.gmail.com>
 <adcf6d0e-c37c-6ede-479e-29959d03d8c0@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <adcf6d0e-c37c-6ede-479e-29959d03d8c0@igalia.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 2022-05-03 16:12:09, Guilherme G. Piccoli wrote: >
 On 03/05/2022 15:03, Evan Green wrote: > > [...] > > gsmi_shutdown_reason()
 is a common function called in other scenarios > > as well, like r [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1noOCZ-0004Lt-Ba
Subject: Re: [Openipmi-developer] [PATCH 04/30] firmware: google: Convert
 regular spinlock into trylock on panic path
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
 David Gow <davidgow@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 bhe@redhat.com, Jonathan Corbet <corbet@lwn.net>, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, Evan Green <evgreen@chromium.org>,
 Ard Biesheuvel <ardb@kernel.org>, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Linux PM <linux-pm@vger.kernel.org>,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, vkuznets@redhat.com,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 Julius Werner <jwerner@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue 2022-05-03 16:12:09, Guilherme G. Piccoli wrote:
> On 03/05/2022 15:03, Evan Green wrote:
> > [...]
> > gsmi_shutdown_reason() is a common function called in other scenarios
> > as well, like reboot and thermal trip, where it may still make sense
> > to wait to acquire a spinlock. Maybe we should add a parameter to
> > gsmi_shutdown_reason() so that you can get your change on panic, but
> > we don't convert other callbacks into try-fail scenarios causing us to
> > miss logs.
> > 
> 
> Hi Evan, thanks for your feedback, much appreciated!
> What I've done in other cases like this was to have a helper checking
> the spinlock in the panic notifier - if we can acquire that, go ahead
> but if not, bail out. For a proper example of an implementation, check
> patch 13 of the series:
> https://lore.kernel.org/lkml/20220427224924.592546-14-gpiccoli@igalia.com/ .
> 
> Do you agree with that, or prefer really a parameter in
> gsmi_shutdown_reason() ? I'll follow your choice =)

I see two more alternative solutions:

1st variant is a trick already used in console write() callbacks.
They do trylock() when oops_in_progress is set. They remember
the result to prevent double unlock when printing Oops messages and
the system will try to continue working. For example:

pl011_console_write(struct console *co, const char *s, unsigned int count)
{
[...]
	int locked = 1;
[...]
	if (uap->port.sysrq)
		locked = 0;
	else if (oops_in_progress)
		locked = spin_trylock(&uap->port.lock);
	else
		spin_lock(&uap->port.lock);

[...]

	if (locked)
		spin_unlock(&uap->port.lock);
}


2nd variant is to check panic_cpu variable. It is used in printk.c.
We might move the function to panic.h:

static bool panic_in_progress(void)
{
	return unlikely(atomic_read(&panic_cpu) != PANIC_CPU_INVALID);
}

and then do:

	if (panic_in_progress()) {
		...


> > Though thinking more about it, is this really a Good Change (TM)? The
> > spinlock itself already disables interrupts, meaning the only case
> > where this change makes a difference is if the panic happens from
> > within the function that grabbed the spinlock (in which case the
> > callback is also likely to panic), or in an NMI that panics within
> > that window.

As already mentioned in the other reply, panic() sometimes stops
the other CPUs using NMI, for example, see kdump_nmi_shootdown_cpus().

Another situation is when the CPU using the lock ends in some
infinite loop because something went wrong. The system is in
an unpredictable state during panic().

I am not sure if this is possible with the code under gsmi_dev.lock
but such things really happen during panic() in other subsystems.
Using trylock in the panic() code path is a good practice.

Best Regards,
Petr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
