Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB8B51587A
	for <lists+openipmi-developer@lfdr.de>; Sat, 30 Apr 2022 00:36:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkZDq-0005jE-QD; Fri, 29 Apr 2022 22:36:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nkZDf-0005j6-Q0
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 22:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KYNDBRYGzikXjzeP27ZJ4t/kgY9V1S1pNOCPI8BnGe8=; b=d0xynDWkJR4Binm2q5hcAT5QU6
 WRHxgEyh1xHREjTqtMQPi+IPGGGPuqEJoQxDb+hy1EHOrescb9n5j5JsEWjxLsBmC4e7uKFE4wKN3
 /52DggQZk8d4yLY/jiMktWzX0j0V+DpeWdvZU5WDb/rFPzw6jHcUo5wscXIyYfXMbg/M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KYNDBRYGzikXjzeP27ZJ4t/kgY9V1S1pNOCPI8BnGe8=; b=AP5Zue+S9WC+6rWoebgDvQHHab
 eC1ai6kzHBW5jVl5gKuS9+zUqc7WocX8V8vsnThLJZ3STHOylmOC74zdX3FwG3pLmyYEOCh8z+E92
 yXoYhhPdFmtpOxFOYHBYk2GLO4MTw3ry8RnPzwIQaPU1DgA3DDmN+T81K39nrM/Jbn9I=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkZDd-00EJ3a-9F
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 22:36:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KYNDBRYGzikXjzeP27ZJ4t/kgY9V1S1pNOCPI8BnGe8=; b=JT0K6BBCWKsaQymCLnJQaj/kvq
 7Y1QKfar8fCW1mBanEmBmavL+D5scKDYAiv+Of/1HRFoX5MBCl5YZC28TmWOdUUkF79M5XuV0xuXA
 v1gbxygEk8ExNgZKIAJmst62yXS49qdhdclQ0HpxXcHSkInmueEoQ8sxt8GK1dgkp3lrFANactIr6
 owme4UXa4bPRXwJl27nOJHEpmMOv8h6kOal3gO6YkUDEDSWCgod9VcuYizHGTaTCXAhQFrHVOF1Fo
 gyvc6I1Xl1Nz4QEoDGGy6DcOx8hQdBZ3SL8vuhOA2s2+e+h8l4Dvo0+AMgZTV5lbKle4rwJcb9Bd/
 P9qftm1A==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nkZD8-0003TG-7D; Sat, 30 Apr 2022 00:35:38 +0200
Message-ID: <2787b476-6366-1c83-db80-0393da417497@igalia.com>
Date: Fri, 29 Apr 2022 19:35:09 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: "Michael Kelley (LINUX)" <mikelley@microsoft.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "bhe@redhat.com" <bhe@redhat.com>, "pmladek@suse.com" <pmladek@suse.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-17-gpiccoli@igalia.com>
 <PH0PR21MB30250C9246FFF36AFB1DFDECD7FC9@PH0PR21MB3025.namprd21.prod.outlook.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <PH0PR21MB30250C9246FFF36AFB1DFDECD7FC9@PH0PR21MB3025.namprd21.prod.outlook.com>
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Michael, first of all thanks for the great review, much
 appreciated. Some comments inline below: On 29/04/2022 14:16, Michael Kelley
 (LINUX) wrote: > [...] >> hypervisor I/O completion), so we postpone that
 to run late. But more >> relevant: this *same* vmbus unloading happens in
 the crash_shutdo [...] 
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nkZDd-00EJ3a-9F
Subject: Re: [Openipmi-developer] [PATCH 16/30] drivers/hv/vmbus,
 video/hyperv_fb: Untangle and refactor Hyper-V panic notifiers
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
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "halves@canonical.com" <halves@canonical.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "alejandro.j.jimenez@oracle.com" <alejandro.j.jimenez@oracle.com>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "feng.tang@intel.com" <feng.tang@intel.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "hidehiro.kawai.ez@hitachi.com" <hidehiro.kawai.ez@hitachi.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 KY Srinivasan <kys@microsoft.com>, "will@kernel.org" <will@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 "john.ogness@linutronix.de" <john.ogness@linutronix.de>,
 "corbet@lwn.net" <corbet@lwn.net>, "paulmck@kernel.org" <paulmck@kernel.org>,
 "fabiomirmar@gmail.com" <fabiomirmar@gmail.com>,
 "x86@kernel.org" <x86@kernel.org>, Dexuan Cui <decui@microsoft.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "dyoung@redhat.com" <dyoung@redhat.com>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>, Andrea Parri <parri.andrea@gmail.com>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 Tianyu Lan <Tianyu.Lan@microsoft.com>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "rcu@vger.kernel.org" <rcu@vger.kernel.org>, "bp@alien8.de" <bp@alien8.de>,
 "luto@kernel.org" <luto@kernel.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 "jgross@suse.com" <jgross@suse.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel@gpiccoli.net" <kernel@gpiccoli.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
 "senozhatsky@chromium.org" <senozhatsky@chromium.org>,
 "d.hatayama@jp.fujitsu.com" <d.hatayama@jp.fujitsu.com>,
 "mhiramat@kernel.org" <mhiramat@kernel.org>,
 "kernel-dev@igalia.com" <kernel-dev@igalia.com>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 vkuznets <vkuznets@redhat.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Michael, first of all thanks for the great review, much appreciated.
Some comments inline below:

On 29/04/2022 14:16, Michael Kelley (LINUX) wrote:
> [...]
>> hypervisor I/O completion), so we postpone that to run late. But more
>> relevant: this *same* vmbus unloading happens in the crash_shutdown()
>> handler, so if kdump is set, we can safely skip this panic notifier and
>> defer such clean-up to the kexec crash handler.
> 
> While the last sentence is true for Hyper-V on x86/x64, it's not true for
> Hyper-V on ARM64.  x86/x64 has the 'machine_ops' data structure
> with the ability to provide a custom crash_shutdown() function, which
> Hyper-V does in the form of hv_machine_crash_shutdown().  But ARM64
> has no mechanism to provide such a custom function that will eventually
> do the needed vmbus_initiate_unload() before running kdump.
> 
> I'm not immediately sure what the best solution is for ARM64.  At this
> point, I'm just pointing out the problem and will think about the tradeoffs
> for various possible solutions.  Please do the same yourself. :-)
> 

Oh, you're totally right! I just assumed ARM64 would the the same, my
bad. Just to propose some alternatives, so you/others can also discuss
here and we can reach a consensus about the trade-offs:

(a) We could forget about this change, and always do the clean-up here,
not relying in machine_crash_shutdown().
Pro: really simple, behaves the same as it is doing currently.
Con: less elegant/concise, doesn't allow arm64 customization.

(b) Add a way to allow ARM64 customization of shutdown crash handler.
Pro: matches x86, more customizable, improves arm64 arch code.
Con: A tad more complex.

Also, a question that came-up: if ARM64 has no way of calling special
crash shutdown handler, how can you execute hv_stimer_cleanup() and
hv_synic_disable_regs() there? Or are they not required in ARM64?


>>
>> (c) There is also a Hyper-V framebuffer panic notifier, which relies in
>> doing a vmbus operation that demands a valid connection. So, we must
>> order this notifier with the panic notifier from vmbus_drv.c, in order to
>> guarantee that the framebuffer code executes before the vmbus connection
>> is unloaded.
> 
> Patch 21 of this set puts the Hyper-V FB panic notifier on the pre_reboot
> notifier list, which means it won't execute before the VMbus connection
> unload in the case of kdump.   This notifier is making sure that Hyper-V
> is notified about the last updates made to the frame buffer before the
> panic, so maybe it needs to be put on the hypervisor notifier list.  It
> sends a message to Hyper-V over its existing VMbus channel, but it
> does not wait for a reply.  It does, however, obtain a spin lock on the
> ring buffer used to communicate with Hyper-V.   Unless someone has
> a better suggestion, I'm inclined to take the risk of blocking on that
> spin lock.

The logic behind that was: when kdump is set, we'd skip the vmbus
disconnect on notifiers, deferring that to crash_shutdown(), logic this
one refuted in the above discussion on ARM64 (one more Pro argument to
the idea of refactoring aarch64 code to allow a custom crash shutdown
handler heh). But you're right, for the default level 2, we skip the
pre_reboot notifiers on kdump, effectively skipping this notifier.

Some ideas of what we can do here:

I) we could change the framebuffer notifier to rely on trylocks, instead
of risking a lockup scenario, and with that, we can execute it before
the vmbus disconnect in the hypervisor list;

II) we ignore the hypervisor notifier in case of kdump _by default_, and
if the users don't want that, they can always set the panic notifier
level to 4 and run all notifiers prior to kdump; would that be terrible
you think? Kdump users might don't care about the framebuffer...

III) we go with approach (b) above and refactor arm64 code to allow the
custom crash handler on kdump time, then [with point (I) above] the
logic proposed in this series is still valid - seems more and more the
most correct/complete solution.

In any case, I guess we should avoid workarounds if possible and do the
things the best way we can, to encompass all (or almost all) the
possible scenarios and don't force things on users (like enforcing panic
notifier level 4 for Hyper-V or something like this...)

More feedback from you / Hyper-V folks is pretty welcome about this.


> 
>> [...]
> The "Fixes:" tags imply that these changes should be backported to older
> longterm kernel versions, which I don't think is the case.  There is a
> dependency on Patch 14 of your series where PANIC_NOTIFIER is
> introduced.
> 

Oh, this was more related with archeology of the kernel. When I'm
investigating stuff, I really want to understand why code was added and
that usually require some time git blaming stuff, so having that pronto
in the commit message is a bonus.

But of course we don't need to use the Fixes tag for that, easy to only
mention it in the text. A secondary benefit by using this tag is to
indicate this is a _real fix_ to some code, and not an improvement, but
as you say, I agree we shouldn't backport it to previous releases having
or not the Fixes tag (AFAIK it's not mandatory to backport stuff with
Fixes tag).


>> [...]
>> + * intrincated is the relation of this notifier with Hyper-V framebuffer
> 
> s/intrincated/intricate/

Thanks, fixed in V2!


>
>> [...]
>> +static int hv_panic_vmbus_unload(struct notifier_block *nb, unsigned long val,
>>  			      void *args)
>> +{
>> +	if (!kexec_crash_loaded())
> 
> I'm not clear on the purpose of this condition.  I think it means
> we will skip the vmbus_initiate_unload() if a panic occurs in the
> kdump kernel.  Is there a reason a panic in the kdump kernel
> should be treated differently?  Or am I misunderstanding?

This is really related with the point discussed in the top of this
response - I assumed both ARM64/x86_64 would behave the same and
disconnect the vmbus through the custom crash handler when kdump is set,
so worth skipping it here in the notifier. But that's not true for ARM64
as you pointed, so this guard against kexec is really part of the
decision/discussion on what to do with ARM64 heh

Cheers!


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
