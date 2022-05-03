Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A78E518CF4
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 May 2022 21:13:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nlxxZ-0003qv-OE; Tue, 03 May 2022 19:13:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nlxxY-0003qp-C9
 for openipmi-developer@lists.sourceforge.net; Tue, 03 May 2022 19:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YwqRVzAP9ZbrZ5VBMcTGFQUJhCIOHa56e0xcGxSMZUc=; b=cHn1duc3Qk+hvjI1yyBAJYSAHn
 +UR8cnfMDt3i879vcwPeFXdDmLa5Lf4Cy+rAskx2wttVsU35MXm6UDhbi+IOVsd7gfe6ZCJKSlK13
 zyz1DHXv24+n4Rpv50Fgnr21ud+FZUAJwekeFjHiPTJCWF68HUQgkIi3K7Dhex0lS2EI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YwqRVzAP9ZbrZ5VBMcTGFQUJhCIOHa56e0xcGxSMZUc=; b=iBTXV+xtcTKAoIgvstHS20hUvY
 ZHXCdmB3XY0h67pypFR7vo7gtAHkp6uNHdie9mBVo5JEDrXWvWmH6LlWIuLYoTaCX2nKx8iFF8A5q
 c7xQDaRM+CFdd6Ivt1R0vjiFoGnfiyyBRUiiY7hoV9Ip3LqPM0O0Y/ZCvGXyQ3fgSmDU=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nlxxS-000NCW-RI
 for openipmi-developer@lists.sourceforge.net; Tue, 03 May 2022 19:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YwqRVzAP9ZbrZ5VBMcTGFQUJhCIOHa56e0xcGxSMZUc=; b=g6wHrcBwrz2KwYvXjjVtORBiHn
 IYMsR5GaRD/VR0xedfaxvBvF7rTbYR/J22t3j5lb3f06u/Fc1RouLR18wpSiKcYUFYo1Es0dUnLOJ
 KS0gcPiTX1Gp43QoEXeB9qey3fro+JGWKqZb1HOFCCA1BT9LzygpBsI5rkGlNutynR2bG5HAOwC/E
 tPyLP92RA6GDIRm0QuhAm+c5aBu4j0UaKxwKd9I7j0kUsDE4qHndJxIdGDBq1RIB7dNA6suRfXZwh
 e21o4FfMtSVNbUCh0WQI73Gd4fdNm7+rXf7RsUeEiM3OYwwmkesCvbsvfiNKmEoMOIdut9FTHQRzP
 TtMjBb/w==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nlxwt-0003VB-Uo; Tue, 03 May 2022 21:12:40 +0200
Message-ID: <adcf6d0e-c37c-6ede-479e-29959d03d8c0@igalia.com>
Date: Tue, 3 May 2022 16:12:09 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Evan Green <evgreen@chromium.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-5-gpiccoli@igalia.com>
 <CAE=gft5Pq25L4KFoPWbftkPF-JN1ex2yws77mMJ4GQnn9W0L2g@mail.gmail.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <CAE=gft5Pq25L4KFoPWbftkPF-JN1ex2yws77mMJ4GQnn9W0L2g@mail.gmail.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 03/05/2022 15:03,
 Evan Green wrote: > [...] > gsmi_shutdown_reason()
 is a common function called in other scenarios > as well, like reboot and
 thermal trip, where it may still make sense > to wait [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nlxxS-000NCW-RI
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 David Gow <davidgow@google.com>, linux-xtensa@linux-xtensa.org,
 peterz@infradead.org, alejandro.j.jimenez@oracle.com,
 linux-remoteproc@vger.kernel.org, feng.tang@intel.com,
 linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 bhe@redhat.com, Jonathan Corbet <corbet@lwn.net>, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 pmladek@suse.com, dave.hansen@linux.intel.com,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>, linux-um@lists.infradead.org,
 rostedt@goodmis.org, rcu@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On 03/05/2022 15:03, Evan Green wrote:
> [...]
> gsmi_shutdown_reason() is a common function called in other scenarios
> as well, like reboot and thermal trip, where it may still make sense
> to wait to acquire a spinlock. Maybe we should add a parameter to
> gsmi_shutdown_reason() so that you can get your change on panic, but
> we don't convert other callbacks into try-fail scenarios causing us to
> miss logs.
> 

Hi Evan, thanks for your feedback, much appreciated!
What I've done in other cases like this was to have a helper checking
the spinlock in the panic notifier - if we can acquire that, go ahead
but if not, bail out. For a proper example of an implementation, check
patch 13 of the series:
https://lore.kernel.org/lkml/20220427224924.592546-14-gpiccoli@igalia.com/ .

Do you agree with that, or prefer really a parameter in
gsmi_shutdown_reason() ? I'll follow your choice =)


> Though thinking more about it, is this really a Good Change (TM)? The
> spinlock itself already disables interrupts, meaning the only case
> where this change makes a difference is if the panic happens from
> within the function that grabbed the spinlock (in which case the
> callback is also likely to panic), or in an NMI that panics within
> that window. The downside of this change is that if one core was
> politely working through an event with the lock held, and another core
> panics, we now might lose the panic log, even though it probably would
> have gone through fine assuming the other core has a chance to
> continue.

My feeling is that this is a good change, indeed - a lot of places are
getting changed like this, in this series.

Reasoning: the problem with your example is that, by default, secondary
CPUs are disabled in the panic path, through an IPI mechanism. IPIs take
precedence and interrupt the work in these CPUs, effectively
interrupting the "polite work" with the lock held heh

Then, such CPU is put to sleep and we finally reach the panic notifier
hereby discussed, in the main CPU. If the other CPU was shut-off *with
the lock held*, it's never finishing such work, so the lock is never to
be released. Conclusion: the spinlock can't be acquired, hence we broke
the machine (which is already broken, given it's panic) in the path of
this notifier.
This should be really rare, but..possible. So I think we should protect
against this scenario.

We can grab others' feedback if you prefer, and of course you have the
rights to refuse this change in the gsmi code, but from my
point-of-view, I don't see any advantage in just assume the risk,
specially since the change is very very simple.

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
