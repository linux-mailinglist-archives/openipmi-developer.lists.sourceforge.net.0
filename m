Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF29522570
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 May 2022 22:29:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1noWUS-0000Os-Ic; Tue, 10 May 2022 20:29:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <john.ogness@linutronix.de>) id 1noW1X-0006cn-LS
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 19:59:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OEDxfxfGB0zzvmyrmmb19QrPenmgyOx+wB7aMTpPY14=; b=bdcooRNmv1ZbvjmpJSh865NvhZ
 s23jn/GbbLVfdCO1kr6GaFVQQeqMjXlcTVByJfmfYxKskia4G1YSsAcHhFwA4BXrU4nnHZc7WpNLr
 vyceSY7YuZUPlFUKSO5s2cTmuBFRrTfvBVIRinickGEViRj/8Eq4XldC7qQJMGML9Bso=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OEDxfxfGB0zzvmyrmmb19QrPenmgyOx+wB7aMTpPY14=; b=dwUT8km5hFEN/Qe0W9ZGGHWUfu
 4YWNeB6UE+FPttosV/BeC52NhDnCdOcv0PjyLqAa3LGTGcHCyLvzK/hlJZEDuuR+dpSIMECmNloSu
 amtrqBiyPegfhGjvHCt+B9pDU0XyelYOHdx4PuI3jZkg8KltzFvCAjwJlTsOWTuSRr7s=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1noW1U-0084rP-3g
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 19:59:57 +0000
From: John Ogness <john.ogness@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1652211640;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OEDxfxfGB0zzvmyrmmb19QrPenmgyOx+wB7aMTpPY14=;
 b=s9qpTYE/3WJU4N3KJVSOdyb7xWHt1vkR4fCuQ5J8Zkt0v0hhGnmBmJdDRvMzx7U23g78AD
 5x0GWGYOK6up5rJgLjlqAJ0oKWgxSuZArLqIZD7/93+m719asCNv2npDv0K4E3pzaf0TU1
 QT3fxi7rAkTN0NzY7sIU3W6vHFJAKmFF1D5WFGFp25IVzQ1U2GLRWaAA15JzW4DMVMPiln
 C4PlGutDHid0b5MW+yz4Oad3VH/9G9wKQ7qYFzrw5pmS2R8UQ108RRuRC1xOe7QqhudZaN
 toooF05flVTdgRJ8Mw90Ti/8UtTs7R3lmx6LjRAd0TtWQNVsyqtk/eFe4jDJKA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1652211640;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OEDxfxfGB0zzvmyrmmb19QrPenmgyOx+wB7aMTpPY14=;
 b=vLCouTuSreEprlIyaHBdxRuhj0utQMxldxJLsrUVX2CbalgS135YGbpGNA0WSY+j9euZdD
 GTFEAV97omDLmGAg==
To: Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>
In-Reply-To: <20220510132015.38923cb2@gandalf.local.home>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-5-gpiccoli@igalia.com>
 <CAE=gft5Pq25L4KFoPWbftkPF-JN1ex2yws77mMJ4GQnn9W0L2g@mail.gmail.com>
 <adcf6d0e-c37c-6ede-479e-29959d03d8c0@igalia.com> <YnpOv4hAPV4b+6v4@alley>
 <20220510132015.38923cb2@gandalf.local.home>
Date: Tue, 10 May 2022 21:46:38 +0206
Message-ID: <87h75xkwg9.fsf@jogness.linutronix.de>
MIME-Version: 1.0
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-05-10, Steven Rostedt <rostedt@goodmis.org> wrote:
 >> As already mentioned in the other reply, panic() sometimes stops the >>
 other CPUs using NMI, for example, see kdump_nmi_shootdown_cpus(). [...] 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [193.142.43.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1noW1U-0084rP-3g
X-Mailman-Approved-At: Tue, 10 May 2022 20:29:51 +0000
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
 linux-um@lists.infradead.org, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
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

On 2022-05-10, Steven Rostedt <rostedt@goodmis.org> wrote:
>> As already mentioned in the other reply, panic() sometimes stops the
>> other CPUs using NMI, for example, see kdump_nmi_shootdown_cpus().
>> 
>> Another situation is when the CPU using the lock ends in some
>> infinite loop because something went wrong. The system is in
>> an unpredictable state during panic().
>> 
>> I am not sure if this is possible with the code under gsmi_dev.lock
>> but such things really happen during panic() in other subsystems.
>> Using trylock in the panic() code path is a good practice.
>
> I believe that Peter Zijlstra had a special spin lock for NMIs or
> early printk, where it would not block if the lock was held on the
> same CPU. That is, if an NMI happened and paniced while this lock was
> held on the same CPU, it would not deadlock. But it would block if the
> lock was held on another CPU.

Yes. And starting with 5.19 it will be carrying the name that _you_ came
up with (cpu_sync):

printk_cpu_sync_get_irqsave()
printk_cpu_sync_put_irqrestore()

John


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
