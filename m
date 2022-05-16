Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B804528A7D
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 May 2022 18:33:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqder-0002Pw-8o; Mon, 16 May 2022 16:33:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nqdeq-0002Pq-9o
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:33:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=snNEotF/NnF6oRsYP9tQxjPI6hsRS2uTTzGW3F44uFU=; b=I+GolczAMMWO5b0pjHPGXXPa5e
 MSGA+drx8fLz0VerbLE5mUkO/0g8V4ZTPOk+vwUYeZp1RRTnBrDfZuve6QOx5G0bGFdTqTHrEvv3x
 V7ZeNfhhpXU5JwugXy8ThgzMejND/hPlf7KgZVj/cy7AG9C6fX82dE/43abaSn63v+aY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=snNEotF/NnF6oRsYP9tQxjPI6hsRS2uTTzGW3F44uFU=; b=MG0jXweQs8gLHchCsRRzR14lVI
 4ThjS/EFoOyYKnKCn6D5Ac/WdhNcYwzeUtMnx7PR0nYJPp/5q7Vi4zEfk2UeG53um/9AfMvxbxMeH
 4u+wKDtsxrT8XLvW/mT7Zzromtdph7WNLA7Oc1q2n0c5NIb4Xe50Df8AD/QM6vqlnyWU=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nqden-00HVld-RD
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:33:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=snNEotF/NnF6oRsYP9tQxjPI6hsRS2uTTzGW3F44uFU=; b=IrCfuw38CFBNzUUmwO4z/x0ude
 e9PSigrpJmmkANb9hFO8MYFTYKFJ+f2pDfg9ZWd+jWh0me4IY2UjT4bBJdJuG6aHpan97hS9RvfOH
 pKOQ4g3CadR7oxkIRI3RkZhas481ugQtknW2dOyn8WDu4fqTLFzYzJFnX5BjK36hBguKTcosLNdPK
 XLSo/vQGgUIYFydsMQwjF4Cl6fcPC+lWayRTRUcaC/1DW89DyT+5i4PUQlvBei/VhxE3uCiNyFXXu
 //FxcgwLDGTfxmReP4BgKaOgOZfz1x9KSbEjS92ORoxS5FR3YrIsPaoJlMSUKXKS/BK4yktUJz/OW
 jzuoL6kQ==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nqdeI-006uBd-EQ; Mon, 16 May 2022 18:32:46 +0200
Message-ID: <0a9ba385-84b2-4137-ced1-f7044efff562@igalia.com>
Date: Mon, 16 May 2022 13:32:14 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com> <Yn0TnsWVxCcdB2yO@alley>
 <d313eec2-96b6-04e3-35cd-981f103d010e@igalia.com> <YoIlvFxbqoiDsD1l@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoIlvFxbqoiDsD1l@alley>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 16/05/2022 07:21, Petr Mladek wrote: > [...] > Ah,
 it should
 have been: > > + notifiers vs. kmsg_dump > + notifiers vs. crash_dump > +
 crash_dump vs. kmsg_dump > > I am sorry for the confusion. Eve [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nqden-00HVld-RD
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-hyperv@vger.kernel.org,
 halves@canonical.com, gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, "michael Kelley \(LINUX\)" <mikelley@microsoft.com>,
 hidehiro.kawai.ez@hitachi.com, sparclinux@vger.kernel.org, will@kernel.org,
 tglx@linutronix.de, linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, john.ogness@linutronix.de,
 Baoquan He <bhe@redhat.com>, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 linux-mips@vger.kernel.org, Dave Young <dyoung@redhat.com>, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 vkuznets@redhat.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 16/05/2022 07:21, Petr Mladek wrote:
> [...]
> Ah, it should have been:
> 
>      + notifiers vs. kmsg_dump
>      + notifiers vs. crash_dump
>      + crash_dump vs. kmsg_dump
> 
> I am sorry for the confusion. Even "crash_dump" is slightly
> misleading because there is no function with this name.
> But it seems to be easier to understand than __crash_kexec().

Cool, thanks! Now it's totally clear for me =)
I feel crash dump is the proper term, but I personally prefer kdump to
avoid mess-up with user space "core dump" concept heheh
Also, KDUMP is an entry on MAINTAINERS file.


> [...]
>> Heheh OK, I appreciate your opinion, but I guess we'll need to agree in
>> disagree here - I'm much more fond to this kind of code than a bunch of
>> if/else blocks that almost give headaches. Encoding such "level" logic
>> in the if/else scheme is very convoluted, generates a very big code. And
>> the functions aren't so black magic - they map a level in bits, and the
>> functions _once() are called...once! Although we switch the position in
>> the code, so there are 2 calls, one of them is called and the other not.
> 
> I see. Well, I would consider this as a warning that the approach is
> too complex. If the code, using if/then/else, would cause headaches
> then also understanding of the behavior would cause headaches for
> both users and programmers.
> 
> 
>> But that's totally fine to change - especially if we're moving away from
>> the "level" logic. I see below you propose a much simpler approach - if
>> we follow that, definitely we won't need the "black magic" approach heheh
> 
> I do not say that my proposal is fully correct. But we really need
> this kind of simpler approach.

It's cool, I agree that your idea is much simpler and makes sense - mine
seems to be an over-engineering effort. Let's see the opinions of the
interested parties, I'm curious to see if everybody agrees here, that'd
would be ideal (and kind of "wishful thinking" I guess heheh - panic
path is polemic).


> [...] 
>> Here we have a very important point. Why do we need 2 variants of SMP
>> CPU stopping functions? I disagree with that - my understanding of this
>> after some study in architectures is that the crash_() variant is
>> "stronger", should work in all cases and if not, we should fix that -
>> that'd be a bug.
>>
>> Such variant either maps to smp_send_stop() (in various architectures,
>> including XEN/x86) or overrides the basic function with more proper
>> handling for panic() case...I don't see why we still need such
>> distinction, if you / others have some insight about that, I'd like to
>> hear =)
> 
> The two variants were introduced by the commit 0ee59413c967c35a6dd
> ("x86/panic: replace smp_send_stop() with kdump friendly version in
> panic path")
> 
> It points to https://lkml.org/lkml/2015/6/24/44 that talks about
> still running watchdogs.
> 
> It is possible that the problem could be fixed another way. It is
> even possible that it has already been fixed by the notifiers
> that disable the watchdogs.
> 
> Anyway, any change of the smp_send_stop() behavior should be done
> in a separate patch. It will help with bisection of possible
> regression. Also it would require a good explanation in
> the commit message. I would personally do it in a separate
> patch(set).

Thanks for the archeology and interesting findings. I agree that is
better to split in smaller patches. I'm planning a split in 3 patches
for V2: clean-up (comment, console flushing idea, useless header), the
refactor itself and finally, this SMP change.


> [...] 
>> You had the order of panic_reboot_list VS. consoles flushing inverted.
>> It might make sense, although I didn't do that in V1...
> 
> IMHO, it makes sense:
> 
>   1. panic_reboot_list contains notifiers that do the reboot
>      immediately, for example, xen_panic_event, alpha_panic_event.
>      The consoles have to be flushed earlier.
> 
>   2. console_flush_on_panic() ignores the result of console_trylock()
>      and always calls console_unlock(). As a result the lock should
>      be unlocked at the end. And any further printk() should be able
>      to printk the messages to the console immediately. It means
>      that any messages printed by the reboot notifiers should appear
>      on the console as well.
> [...] 
>> OK, I agree with you! It's indeed simpler and if others agree, I can
>> happily change the logic to what you proposed. Although...currently the
>> "crash_kexec_post_notifiers" allows to call _all_ panic_reboot_list
>> callbacks _before kdump_.
>>
>> We need to mention this change in the commit messages, but I really
>> would like to hear the opinions of heavy users of notifiers (as
>> Michael/Hyper-V) and the kdump interested parties (like Baoquan / Dave
>> Young / Hayatama). If we all agree on such approach, will change that
>> for V2 =)
> 
> Sure, we need to make sure that we call everything that is needed.
> And it should be documented.
> 
> I believe that this is the right way because:
> 
>   + It was actually the motivation for this patchset. We split
>     the notifiers into separate lists because we want to call
>     only the really needed ones before kmsg_dump and crash_dump.
> 
>   + If anything is needed for crash_dump that it should be called
>     even when crash_dump is called first. It should be either
>     hardcoded into crash_dump() or we would need another notifier
>     list that will be always called before crash_dump.

Ack, makes sense! Will do that in V2 =)

For the "hardcoded" part, we have the custom machine_crash_kexec() in
some archs (like x86), unfortunately not in all of them - this path is
ideally for mandatory code that is required for a successful crash_kexec().

The problem is the "same old, same old" - architecture folks push that
to panic notifiers; notifiers folks push it to the arch custom shutdown
handler (see [0] heheh).
(CCed Marc / Mark in case they want to chime-in here...)


>[...] 
> Thanks a lot for working on this.
> 
> Best Regards,
> Petr


You're welcome, _thank you_ for the great and detailed reviews!
Cheers,


Guilherme


[0]
https://lore.kernel.org/lkml/427a8277-49f0-4317-d6c3-4a15d7070e55@igalia.com/


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
