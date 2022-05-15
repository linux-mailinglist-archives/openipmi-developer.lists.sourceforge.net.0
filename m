Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E6A527AC9
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 May 2022 00:48:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqN2g-0000AW-Cc; Sun, 15 May 2022 22:48:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nqN2e-0000AN-Dv
 for openipmi-developer@lists.sourceforge.net; Sun, 15 May 2022 22:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=93lwEQzS5IXDyIA/NgwVVg/rNYgBX/Ekc2xpjleQYUs=; b=ROnZ2e4VzmiLXq+TWSnK8Rl7Wl
 pgGCsuBASHaOCq91e9PgpNHdSso0WKsW5316njJ4zjyTf1u0IXZCHt6SquJuatxf5z8xrHQLfawhW
 c0bbZ4uBRNBlXtWhGKOS7Q4WgSgoo6vmP848XSZdVhSuDBIBnmCKEMsZvPOg8quNuPrQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=93lwEQzS5IXDyIA/NgwVVg/rNYgBX/Ekc2xpjleQYUs=; b=hn+sJlT9DrYth3aCvKqZAurfZN
 nE1OuRDw7FZ9dl7yU/cERr56VXZBGKRSuogcMofPD1DyFibKtfJOAAD9ZWuxI+Rwa5w4LsVUfpksE
 PhLiy66cuQ+0AtjWxKPvg/chTuOri7n6flC/hGyHL97AAejhLKSb4EFVWFyTdfghZMVs=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nqN2a-00FrRK-Lr
 for openipmi-developer@lists.sourceforge.net; Sun, 15 May 2022 22:48:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=93lwEQzS5IXDyIA/NgwVVg/rNYgBX/Ekc2xpjleQYUs=; b=kTFBpmweCVBGzCiXcny/Ei9sEB
 uLvI0D7aJyCY9gW4MGXg7URDXPxUenVwWXA89vT+j9BRtrs1EQfNeJ4qB6gH1x3WL3JnCBSUAhoXN
 1INIRQN5V3AcrCr4dPVHFH/5EtxkbxYQW14SNMurRWenslQKNiT8uXf6mSEvQOr2XsmvD7L3cVekK
 G4ucrnvqt1/qzfQAz5Rre/uP6rIw96QRGg/Ntwc578rmZP+ob6saFKUKA0qaw+P9NiH2QNSqjbmfS
 xeJNCdUwDvi5QchOtqGvFJPXe/AnKHhlIFK8hoqIAjFEroOQ6KccSYTKVhehD92Fv+lP928LorOpQ
 iXFJTFmg==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nqN22-005kj2-70; Mon, 16 May 2022 00:48:10 +0200
Message-ID: <d313eec2-96b6-04e3-35cd-981f103d010e@igalia.com>
Date: Sun, 15 May 2022 19:47:39 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>,
 "michael Kelley (LINUX)" <mikelley@microsoft.com>,
 Baoquan He <bhe@redhat.com>, Dave Young <dyoung@redhat.com>,
 d.hatayama@jp.fujitsu.com
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com> <Yn0TnsWVxCcdB2yO@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <Yn0TnsWVxCcdB2yO@alley>
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 12/05/2022 11:03, Petr Mladek wrote: > Hello, > > first, 
 I am sorry for stepping into the discussion so late. > I was busy with some
 other stuff and this patchset is far > from trivial. > > Second, [...] 
 Content analysis details:   (-1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nqN2a-00FrRK-Lr
Subject: Re: [Openipmi-developer] [PATCH 24/30] panic: Refactor the panic
 path
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
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 vgoyal@redhat.com, linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 vkuznets@redhat.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, mhiramat@kernel.org, kernel-dev@igalia.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 12/05/2022 11:03, Petr Mladek wrote:
> Hello,
> 
> first, I am sorry for stepping into the discussion so late.
> I was busy with some other stuff and this patchset is far
> from trivial.
> 
> Second, thanks a lot for putting so much effort into it.
> Most of the changes look pretty good, especially all
> the fixes of particular notifiers and split into
> four lists.
> 
> Though this patch will need some more love. See below
> for more details.

Thanks a lot for your review Petr, it is much appreciated! No need for
apologies, there is no urgency here =)


> [...] 
> This talks only about kdump. The reality is much more complicated.
> The level affect the order of:
> 
>     + notifiers vs. kdump
>     + notifiers vs. crash_dump
>     + crash_dump vs. kdump

First of all, I'd like to ask you please to clarify to me *exactly* what
are the differences between "crash_dump" and "kdump". I'm sorry if
that's a silly question, I need to be 100% sure I understand the
concepts the same way you do.


> There might theoretically many variants of the ordering of kdump,
> crash_dump, and the 4 notifier list. Some variants do not make
> much sense. You choose 5 variants and tried to select them by
> a level number.
> 
> The question is if we really could easily describe the meaning this
> way. It is not only about a "level" of notifiers before kdump. It is
> also about the ordering of crash_dump vs. kdump. IMHO, "level"
> semantic does not fit there.
> 
> Maybe more parameters might be easier to understand the effect.
> Anyway, we first need to agree on the chosen variants.
> I am going to discuss it more in the code, see below.
> 
> 
> [...] 
> Here is the code using the above functions. It helps to discuss
> the design and logic.
> 
> <kernel/panic.c>
> 	order_panic_notifiers_and_kdump();
> 
> 	/* If no level, we should kdump ASAP. */
> 	if (!panic_notifiers_level)
> 		__crash_kexec(NULL);
> 
> 	crash_smp_send_stop();
> 	panic_notifier_hypervisor_once(buf);
> 
> 	if (panic_notifier_info_once(buf))
> 		kmsg_dump(KMSG_DUMP_PANIC);
> 
> 	panic_notifier_pre_reboot_once(buf);
> 
> 	__crash_kexec(NULL);
> 
> 	panic_notifier_hypervisor_once(buf);
> 
> 	if (panic_notifier_info_once(buf))
> 		kmsg_dump(KMSG_DUMP_PANIC);
> 
> 	panic_notifier_pre_reboot_once(buf);
> </kernel/panic.c>
> 
> I have to say that the logic is very unclear. Almost all
> functions are called twice:
> 
>    + __crash_kexec()
>    + kmsg_dump()
>    + panic_notifier_hypervisor_once()
>    + panic_notifier_pre_reboot_once()
>    + panic_notifier_info_once()
> 
> It is pretty hard to find what functions are always called in the same
> order and where the order can be inverted.
> 
> The really used code path is defined by order_panic_notifiers_and_kdump()
> that encodes "level" into "bits". The bits are then flipped in
> panic_notifier_*_once() calls that either do something or not.
> kmsg_dump() is called according to the bit flip.
> 
> It is an interesting approach. I guess that you wanted to avoid too
> many if/then/else levels in panic(). But honestly, it looks like
> a black magic to me.
> 
> IMHO, it is always easier to follow if/then/else logic than using
> a translation table that requires additional bit flips when
> a value is used more times.
> 
> Also I guess that it is good proof that "level" abstraction does
> not fit here. Normal levels would not need this kind of magic.

Heheh OK, I appreciate your opinion, but I guess we'll need to agree in
disagree here - I'm much more fond to this kind of code than a bunch of
if/else blocks that almost give headaches. Encoding such "level" logic
in the if/else scheme is very convoluted, generates a very big code. And
the functions aren't so black magic - they map a level in bits, and the
functions _once() are called...once! Although we switch the position in
the code, so there are 2 calls, one of them is called and the other not.

But that's totally fine to change - especially if we're moving away from
the "level" logic. I see below you propose a much simpler approach - if
we follow that, definitely we won't need the "black magic" approach heheh


> 
> OK, the question is how to make it better. Let's start with
> a clear picture of the problem:
> 
> 1. panic() has basically two funtions:
> 
>       + show/store debug information (optional ways and amount)
>       + do something with the system (reboot, stay hanged)
> 
> 
> 2. There are 4 ways how to show/store the information:
> 
>       + tell hypervisor to store what it is interested about
>       + crash_dump
>       + kmsg_dump()
>       + consoles
> 
>   , where crash_dump and consoles are special:
> 
>      + crash_dump does not return. Instead it ends up with reboot.
> 
>      + Consoles work transparently. They just need an extra flush
>        before reboot or staying hanged.
> 
> 
> 3. The various notifiers do things like:
> 
>      + tell hypervisor about the crash
>      + print more information (also stop watchdogs)
>      + prepare system for reboot (touch some interfaces)
>      + prepare system for staying hanged (blinking)
> 
>    Note that it pretty nicely matches the 4 notifier lists.
> 

I really appreciate the summary skill you have, to convert complex
problems in very clear and concise ideas. Thanks for that, very useful!
I agree with what was summarized above.


> Now, we need to decide about the ordering. The main area is how
> to store the debug information. Consoles are transparent so
> the quesition is about:
> 
>      + hypervisor
>      + crash_dump
>      + kmsg_dump
> 
> Some people need none and some people want all. There is a
> risk that system might hung at any stage. This why people want to
> make the order configurable.
> 
> But crash_dump() does not return when it succeeds. And kmsg_dump()
> users havn't complained about hypervisor problems yet. So, that
> two variants might be enough:
> 
>     + crash_dump (hypervisor, kmsg_dump as fallback)
>     + hypervisor, kmsg_dump, crash_dump
> 
> One option "panic_prefer_crash_dump" should be enough.
> And the code might look like:
> 
> void panic()
> {
> [...]
> 	dump_stack();
> 	kgdb_panic(buf);
> 
> 	< ---  here starts the reworked code --- >
> 
> 	/* crash dump is enough when enabled and preferred. */
> 	if (panic_prefer_crash_dump)
> 		__crash_kexec(NULL);
> 
> 	/* Stop other CPUs and focus on handling the panic state. */
> 	if (has_kexec_crash_image)
> 		crash_smp_send_stop();
> 	else
> 		smp_send_stop()
> 

Here we have a very important point. Why do we need 2 variants of SMP
CPU stopping functions? I disagree with that - my understanding of this
after some study in architectures is that the crash_() variant is
"stronger", should work in all cases and if not, we should fix that -
that'd be a bug.

Such variant either maps to smp_send_stop() (in various architectures,
including XEN/x86) or overrides the basic function with more proper
handling for panic() case...I don't see why we still need such
distinction, if you / others have some insight about that, I'd like to
hear =)


> 	/* Notify hypervisor about the system panic. */
> 	atomic_notifier_call_chain(&panic_hypervisor_list, 0, NULL);
> 
> 	/*
> 	 * No need to risk extra info when there is no kmsg dumper
> 	 * registered.
> 	 */
> 	if (!has_kmsg_dumper())
> 		__crash_kexec(NULL);
> 
> 	/* Add extra info from different subsystems. */
> 	atomic_notifier_call_chain(&panic_info_list, 0, NULL);
> 
> 	kmsg_dump(KMSG_DUMP_PANIC);
> 	__crash_kexec(NULL);
> 
> 	/* Flush console */
> 	unblank_screen();
> 	console_unblank();
> 	debug_locks_off();
> 	console_flush_on_panic(CONSOLE_FLUSH_PENDING);
> 
> 	if (panic_timeout > 0) {
> 		delay()
> 	}
> 
> 	/*
> 	 * Prepare system for eventual reboot and allow custom
> 	 * reboot handling.
> 	 */
> 	atomic_notifier_call_chain(&panic_reboot_list, 0, NULL);

You had the order of panic_reboot_list VS. consoles flushing inverted.
It might make sense, although I didn't do that in V1...
Are you OK in having a helper for console flushing, as I did in V1? It
makes code of panic() a bit less polluted / more focused I feel.


> 
> 	if (panic_timeout != 0) {
> 		reboot();
> 	}
> 
> 	/*
> 	 * Prepare system for the infinite waiting, for example,
> 	 * setup blinking.
> 	 */
> 	atomic_notifier_call_chain(&panic_loop_list, 0, NULL);
> 
> 	infinite_loop();
> }
> 
> 
> __crash_kexec() is there 3 times but otherwise the code looks
> quite straight forward.
> 
> Note 1: I renamed the two last notifier list. The name 'post-reboot'
> 	did sound strange from the logical POV ;-)
> 
> Note 2: We have to avoid the possibility to call "reboot" list
> 	before kmsg_dump(). All callbacks providing info
> 	have to be in the info list. It a callback combines
> 	info and reboot functionality then it should be split.
> 
> 	There must be another way to calm down problematic
> 	info callbacks. And it has to be solved when such
> 	a problem is reported. Is there any known issue, please?
> 
> It is possible that I have missed something important.
> But I would really like to make the logic as simple as possible.

OK, I agree with you! It's indeed simpler and if others agree, I can
happily change the logic to what you proposed. Although...currently the
"crash_kexec_post_notifiers" allows to call _all_ panic_reboot_list
callbacks _before kdump_.

We need to mention this change in the commit messages, but I really
would like to hear the opinions of heavy users of notifiers (as
Michael/Hyper-V) and the kdump interested parties (like Baoquan / Dave
Young / Hayatama). If we all agree on such approach, will change that
for V2 =)

Thanks again Petr, for the time spent in such detailed review!
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
