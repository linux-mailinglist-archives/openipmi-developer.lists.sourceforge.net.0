Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F02521660
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 May 2022 15:05:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1noPXy-00047r-4b; Tue, 10 May 2022 13:05:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1noPXx-00047j-5e
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 13:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ERCDIneY1Q4o8JFrn6huil0jOKhd5NF1nm9+poeBUGY=; b=TBtDG0BXpN3zjyGPkzMfX5b91A
 p57AiWY4oMJPWqLx9rCgf1g8JXFrqh6s7LXjEHk6mjM8+DsQtannz1C9JVUneMzraHIkd8gOhiAhT
 dwONzOvcjhZGe5juc/bqm1CIjkC8o+EMOYWYCi3g9xwnihhrYApLAB4ZcHV5hWu+X4UM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ERCDIneY1Q4o8JFrn6huil0jOKhd5NF1nm9+poeBUGY=; b=UochJTp0hxV6tzI8IHzTUSYsWY
 wP8IuJg9BlQNZeO95JlK1qmEHj0kDlaMe4PoB18YprYYIzWsFAxAkTX9T4An1nSjhOc4NAedQSW/9
 RsH4VNs14QELmBH6hitNf6bIBQcxHAxB2+6Nx6m+01U9cfSdUMmmzSdWW9XLjNl3OEOs=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1noPXu-0008M0-Vw
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 13:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ERCDIneY1Q4o8JFrn6huil0jOKhd5NF1nm9+poeBUGY=; b=C1bwe/Dp28hHJCcth6j9FIvLRX
 pDXbwTw3GNkAuVoDVZ2t1Ig0Ha8VAgFyN1qfYHmoUYQVyDRHd7IRdBkOHux1OzR9Q7hmNC/ZbkDNy
 i9N1ZP1KkXJYzqp8Xch5cykWJAl8GjhN23tq785F2kRMcqVY6TftmyHyPJZTtkL8PDJb7GYsR63+v
 CyHpUemygecHOqy6UnkI5sacYa9DSfBokIBgO1vbgxAO3Lo/ZpYDMcX65a4mJHituF1N7bEMHTqnl
 wjibh2hSmhpgeMzHripimwe7gT4RuGZfcia5HzNoWvLT/w9CiRN4l1p9e5qQ/+lp5TdT6UNVMzl77
 9RtLUAvA==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1noPXc-0005Ct-K8; Tue, 10 May 2022 15:04:40 +0200
Message-ID: <c23f408f-d030-b599-19b4-8561d511ef73@igalia.com>
Date: Tue, 10 May 2022 10:04:08 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>, Evan Green <evgreen@chromium.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-5-gpiccoli@igalia.com>
 <CAE=gft5Pq25L4KFoPWbftkPF-JN1ex2yws77mMJ4GQnn9W0L2g@mail.gmail.com>
 <adcf6d0e-c37c-6ede-479e-29959d03d8c0@igalia.com> <YnpOv4hAPV4b+6v4@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YnpOv4hAPV4b+6v4@alley>
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/05/2022 08:38, Petr Mladek wrote: > [...] > I see two
 more alternative solutions: > > 1st variant is a trick already used in console
 write() callbacks. > They do trylock() when oops_in_progress [...] 
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1noPXu-0008M0-Vw
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
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 bhe@redhat.com, Jonathan Corbet <corbet@lwn.net>, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>, linux-um@lists.infradead.org,
 rostedt@goodmis.org, rcu@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 luto@kernel.org, linux-tegra@vger.kernel.org,
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

On 10/05/2022 08:38, Petr Mladek wrote:
> [...]
> I see two more alternative solutions:
> 
> 1st variant is a trick already used in console write() callbacks.
> They do trylock() when oops_in_progress is set. They remember
> the result to prevent double unlock when printing Oops messages and
> the system will try to continue working. For example:
> 
> pl011_console_write(struct console *co, const char *s, unsigned int count)
> {
> [...]
> 	int locked = 1;
> [...]
> 	if (uap->port.sysrq)
> 		locked = 0;
> 	else if (oops_in_progress)
> 		locked = spin_trylock(&uap->port.lock);
> 	else
> 		spin_lock(&uap->port.lock);
> 
> [...]
> 
> 	if (locked)
> 		spin_unlock(&uap->port.lock);
> }
> 
> 
> 2nd variant is to check panic_cpu variable. It is used in printk.c.
> We might move the function to panic.h:
> 
> static bool panic_in_progress(void)
> {
> 	return unlikely(atomic_read(&panic_cpu) != PANIC_CPU_INVALID);
> }
> 
> and then do:
> 
> 	if (panic_in_progress()) {
> 		...

Thanks for the review Petr! I feel alternative two is way better, it
checks for panic - the oops_in_progress isn't really enough, since we
can call panic() directly, not necessarily through an oops path, correct?

For me, we could stick with the lock check, but I'll defer to Evan - I
didn't work the V2 patch yet, what do you prefer Evan?


> [...]
> As already mentioned in the other reply, panic() sometimes stops
> the other CPUs using NMI, for example, see kdump_nmi_shootdown_cpus().
> 
> Another situation is when the CPU using the lock ends in some
> infinite loop because something went wrong. The system is in
> an unpredictable state during panic().
> 
> I am not sure if this is possible with the code under gsmi_dev.lock
> but such things really happen during panic() in other subsystems.
> Using trylock in the panic() code path is a good practice.
> 
> Best Regards,
> Petr

Makes total sense, thanks for confirming!
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
