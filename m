Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E1C523140
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 May 2022 13:13:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nokHk-0004qz-Fy; Wed, 11 May 2022 11:13:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pmladek@suse.com>) id 1nokHi-0004qs-3X
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 11:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FC1sflG6Id2SKeEdl4FJxU/B3titx078hgJ9iLge96M=; b=ci59Z8y7DVfdtYyUeZHPZpL1T4
 CwKcJVcpmxCyGueVYGnVFpzGIs1iaW5GGKyOddLxIewMVeMDL7YY+jO9IJ3ivtmiVJcu3VdZwwXoC
 RUHJrC13Ojib54lvpB8QR837zmvw5+0rsIxeQ2Vs5mGs6FalodoulqLanbRB4d7mncN8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FC1sflG6Id2SKeEdl4FJxU/B3titx078hgJ9iLge96M=; b=Iv5Z25b4s5RZ9TwwYjJNWHLQfa
 2Z0pJBcd5plzUrJyn9qn0BTUryAotxs3wsNucefqd/BB88qHsFFW6ihhRF0UmyaJDiqv+rk5XrwhP
 ZhFmtgnCaZhyUTVSBrUZb/jmkLKV4lbCSVSt1xSFtWhD1MwDNp70ayb6JEG3Q5LjLo80=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nokHd-008jzx-Q5
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 11:13:35 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 9864A1F37E;
 Wed, 11 May 2022 11:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1652267602; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FC1sflG6Id2SKeEdl4FJxU/B3titx078hgJ9iLge96M=;
 b=PzdYpVjDm9GZjow/EUq37H7ookCOkOdew3j+O3sWtMh70hNVOnxtZzKqOPpZDQnacwtKh8
 hTKee3j+Sl0MntfBuf4Onekv+PULsWjOAIitLyhS1jfqtNLxp3KL+emXCY3ZW29THEdaU3
 +LT7bZxhID8yMwqQ2reWXTGMidRsh/s=
Received: from suse.cz (pathway.suse.cz [10.100.12.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id BC7822C141;
 Wed, 11 May 2022 11:13:20 +0000 (UTC)
Date: Wed, 11 May 2022 13:13:20 +0200
To: John Ogness <john.ogness@linutronix.de>
Message-ID: <20220511111320.GB26047@pathway.suse.cz>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-5-gpiccoli@igalia.com>
 <CAE=gft5Pq25L4KFoPWbftkPF-JN1ex2yws77mMJ4GQnn9W0L2g@mail.gmail.com>
 <adcf6d0e-c37c-6ede-479e-29959d03d8c0@igalia.com>
 <YnpOv4hAPV4b+6v4@alley>
 <20220510132015.38923cb2@gandalf.local.home>
 <87h75xkwg9.fsf@jogness.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h75xkwg9.fsf@jogness.linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 2022-05-10 21:46:38,
 John Ogness wrote: > On 2022-05-10, 
 Steven Rostedt <rostedt@goodmis.org> wrote: > >> As already mentioned in
 the other reply, panic() sometimes stops the > >> other CPUs us [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nokHd-008jzx-Q5
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
 linux-s390@vger.kernel.org, mikelley@microsoft.com, paulmck@kernel.org,
 bhe@redhat.com, Jonathan Corbet <corbet@lwn.net>, fabiomirmar@gmail.com,
 x86@kernel.org, Evan Green <evgreen@chromium.org>,
 Ard Biesheuvel <ardb@kernel.org>, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Linux PM <linux-pm@vger.kernel.org>,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org, Borislav Petkov <bp@alien8.de>, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, senozhatsky@chromium.org,
 vkuznets@redhat.com, linux-edac@vger.kernel.org, jgross@suse.com,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 kexec@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 Julius Werner <jwerner@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue 2022-05-10 21:46:38, John Ogness wrote:
> On 2022-05-10, Steven Rostedt <rostedt@goodmis.org> wrote:
> >> As already mentioned in the other reply, panic() sometimes stops the
> >> other CPUs using NMI, for example, see kdump_nmi_shootdown_cpus().
> >> 
> >> Another situation is when the CPU using the lock ends in some
> >> infinite loop because something went wrong. The system is in
> >> an unpredictable state during panic().
> >> 
> >> I am not sure if this is possible with the code under gsmi_dev.lock
> >> but such things really happen during panic() in other subsystems.
> >> Using trylock in the panic() code path is a good practice.
> >
> > I believe that Peter Zijlstra had a special spin lock for NMIs or
> > early printk, where it would not block if the lock was held on the
> > same CPU. That is, if an NMI happened and paniced while this lock was
> > held on the same CPU, it would not deadlock. But it would block if the
> > lock was held on another CPU.
> 
> Yes. And starting with 5.19 it will be carrying the name that _you_ came
> up with (cpu_sync):
> 
> printk_cpu_sync_get_irqsave()
> printk_cpu_sync_put_irqrestore()

There is a risk that this lock might become a big kernel lock.

This special lock would need to be used even during normal
system operation. It does not make sense to suddenly start using
another lock during panic.

So I think that we should think twice before using it.
I would prefer using trylock of the original lock when
possible during panic.

It is possible that I miss something.

Best Regards,
Petr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
