Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2851352EB3A
	for <lists+openipmi-developer@lfdr.de>; Fri, 20 May 2022 13:53:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ns1Cb-00042O-SB; Fri, 20 May 2022 11:53:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <bhe@redhat.com>) id 1nrppg-0005he-1R
 for openipmi-developer@lists.sourceforge.net; Thu, 19 May 2022 23:45:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xcqeqNHBqLaEPFvaMSIdVsHM/2ssgjepqSc89Z+McDY=; b=RmR6w6vmG/fpeHvEfDyZ9QQ9GS
 jcQ4ykKWS178DOUB1pPVS/I20n8wurLURSVIIz1N3ZdujBzWJpLdOACAV/vXbKCd8eurAe1Z808o4
 Q/sR3m4NyIL6kfe4nJaTrdc77qYP3fBYs9PnQFvuiqkqSO28RnWlDRZ5XNbpxizQGSCY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xcqeqNHBqLaEPFvaMSIdVsHM/2ssgjepqSc89Z+McDY=; b=EVkMp+WjlTvwOL0//i/N+MSJ6Q
 VX4T2Vwu+a1yXoiop4ocOrSB0y1lTRcVse8CIaShDWVo2D+PV7IIZdl0Zc0b9rElpc7b6BMqnmErM
 0z7/sZxhjdXAcIPx/zmBX1PeoX36w0d5iQBPL3y7SpRO5f6oNkvpn62+/OdHPzccDPWE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nrppa-0005cP-TO
 for openipmi-developer@lists.sourceforge.net; Thu, 19 May 2022 23:45:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653003916;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xcqeqNHBqLaEPFvaMSIdVsHM/2ssgjepqSc89Z+McDY=;
 b=JfQTgypPa0pvdRtt1PjE0KN5xZjl42JHVE/geiulqE74vCc1LAyDAh2oQk1pMFU07QAwcr
 aEmeq6T7lnr8f6GCcmJiV4aO/dgfxbodx5AeHw4YR4h3SJTysApQvvzVzVp13ky49f8+p3
 SdHMMJ/27tfj+8HAn80R0vS3FaidDkI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-671-51qE-HMZMJ-_l5k-QlXFHg-1; Thu, 19 May 2022 19:45:10 -0400
X-MC-Unique: 51qE-HMZMJ-_l5k-QlXFHg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A41B685A5AA;
 Thu, 19 May 2022 23:45:07 +0000 (UTC)
Received: from localhost (ovpn-12-42.pek2.redhat.com [10.72.12.42])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4ABA5492C14;
 Thu, 19 May 2022 23:45:06 +0000 (UTC)
Date: Fri, 20 May 2022 07:45:02 +0800
From: Baoquan He <bhe@redhat.com>
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
 Petr Mladek <pmladek@suse.com>
Message-ID: <20220519234502.GA194232@MiWiFi-R3L-srv>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com>
 <Yn0TnsWVxCcdB2yO@alley>
 <d313eec2-96b6-04e3-35cd-981f103d010e@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d313eec2-96b6-04e3-35cd-981f103d010e@igalia.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 05/15/22 at 07:47pm,
 Guilherme G. Piccoli wrote: > On 12/05/2022
 11:03, Petr Mladek wrote: ...... > > OK, the question is how to make it better.
 Let's start with > > a clear picture of the problem: [...] 
 Content analysis details:   (-1.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nrppa-0005cP-TO
X-Mailman-Approved-At: Fri, 20 May 2022 11:53:50 +0000
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
 feng.tang@intel.com, "michael Kelley \(LINUX\)" <mikelley@microsoft.com>,
 hidehiro.kawai.ez@hitachi.com, sparclinux@vger.kernel.org, will@kernel.org,
 tglx@linutronix.de, linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 linux-mips@vger.kernel.org, Dave Young <dyoung@redhat.com>, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 vkuznets@redhat.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 05/15/22 at 07:47pm, Guilherme G. Piccoli wrote:
> On 12/05/2022 11:03, Petr Mladek wrote:
...... 
> > OK, the question is how to make it better. Let's start with
> > a clear picture of the problem:
> > 
> > 1. panic() has basically two funtions:
> > 
> >       + show/store debug information (optional ways and amount)
> >       + do something with the system (reboot, stay hanged)
> > 
> > 
> > 2. There are 4 ways how to show/store the information:
> > 
> >       + tell hypervisor to store what it is interested about
> >       + crash_dump
> >       + kmsg_dump()
> >       + consoles
> > 
> >   , where crash_dump and consoles are special:
> > 
> >      + crash_dump does not return. Instead it ends up with reboot.
> > 
> >      + Consoles work transparently. They just need an extra flush
> >        before reboot or staying hanged.
> > 
> > 
> > 3. The various notifiers do things like:
> > 
> >      + tell hypervisor about the crash
> >      + print more information (also stop watchdogs)
> >      + prepare system for reboot (touch some interfaces)
> >      + prepare system for staying hanged (blinking)
> > 
> >    Note that it pretty nicely matches the 4 notifier lists.
> > 
> 
> I really appreciate the summary skill you have, to convert complex
> problems in very clear and concise ideas. Thanks for that, very useful!
> I agree with what was summarized above.

I want to say the similar words to Petr's reviewing comment when I went
through the patches and traced each reviewing sub-thread to try to
catch up. Petr has reivewed this series so carefully and given many
comments I want to ack immediately.

I agree with most of the suggestions from Petr to this patch, except of
one tiny concern, please see below inline comment.

> 
> 
> > Now, we need to decide about the ordering. The main area is how
> > to store the debug information. Consoles are transparent so
> > the quesition is about:
> > 
> >      + hypervisor
> >      + crash_dump
> >      + kmsg_dump
> > 
> > Some people need none and some people want all. There is a
> > risk that system might hung at any stage. This why people want to
> > make the order configurable.
> > 
> > But crash_dump() does not return when it succeeds. And kmsg_dump()
> > users havn't complained about hypervisor problems yet. So, that
> > two variants might be enough:
> > 
> >     + crash_dump (hypervisor, kmsg_dump as fallback)
> >     + hypervisor, kmsg_dump, crash_dump
> > 
> > One option "panic_prefer_crash_dump" should be enough.
> > And the code might look like:
> > 
> > void panic()
> > {
> > [...]
> > 	dump_stack();
> > 	kgdb_panic(buf);
> > 
> > 	< ---  here starts the reworked code --- >
> > 
> > 	/* crash dump is enough when enabled and preferred. */
> > 	if (panic_prefer_crash_dump)
> > 		__crash_kexec(NULL);

I like the proposed skeleton of panic() and code style suggested by
Petr very much. About panic_prefer_crash_dump which might need be added,
I hope it has a default value true. This makes crash_dump execute at
first by default just as before, unless people specify
panic_prefer_crash_dump=0|n|off to disable it. Otherwise we need add
panic_prefer_crash_dump=1 in kernel and in our distros to enable kdump,
this is inconsistent with the old behaviour.

> > 
> > 	/* Stop other CPUs and focus on handling the panic state. */
> > 	if (has_kexec_crash_image)
> > 		crash_smp_send_stop();
> > 	else
> > 		smp_send_stop()
> > 
> 
> Here we have a very important point. Why do we need 2 variants of SMP
> CPU stopping functions? I disagree with that - my understanding of this
> after some study in architectures is that the crash_() variant is
> "stronger", should work in all cases and if not, we should fix that -
> that'd be a bug.
> 
> Such variant either maps to smp_send_stop() (in various architectures,
> including XEN/x86) or overrides the basic function with more proper
> handling for panic() case...I don't see why we still need such
> distinction, if you / others have some insight about that, I'd like to
> hear =)
> 
> 
> > 	/* Notify hypervisor about the system panic. */
> > 	atomic_notifier_call_chain(&panic_hypervisor_list, 0, NULL);
> > 
> > 	/*
> > 	 * No need to risk extra info when there is no kmsg dumper
> > 	 * registered.
> > 	 */
> > 	if (!has_kmsg_dumper())
> > 		__crash_kexec(NULL);
> > 
> > 	/* Add extra info from different subsystems. */
> > 	atomic_notifier_call_chain(&panic_info_list, 0, NULL);
> > 
> > 	kmsg_dump(KMSG_DUMP_PANIC);
> > 	__crash_kexec(NULL);
> > 
> > 	/* Flush console */
> > 	unblank_screen();
> > 	console_unblank();
> > 	debug_locks_off();
> > 	console_flush_on_panic(CONSOLE_FLUSH_PENDING);
> > 
> > 	if (panic_timeout > 0) {
> > 		delay()
> > 	}
> > 
> > 	/*
> > 	 * Prepare system for eventual reboot and allow custom
> > 	 * reboot handling.
> > 	 */
> > 	atomic_notifier_call_chain(&panic_reboot_list, 0, NULL);
> 
> You had the order of panic_reboot_list VS. consoles flushing inverted.
> It might make sense, although I didn't do that in V1...
> Are you OK in having a helper for console flushing, as I did in V1? It
> makes code of panic() a bit less polluted / more focused I feel.
> 
> 
> > 
> > 	if (panic_timeout != 0) {
> > 		reboot();
> > 	}
> > 
> > 	/*
> > 	 * Prepare system for the infinite waiting, for example,
> > 	 * setup blinking.
> > 	 */
> > 	atomic_notifier_call_chain(&panic_loop_list, 0, NULL);
> > 
> > 	infinite_loop();
> > }
> > 
> > 
> > __crash_kexec() is there 3 times but otherwise the code looks
> > quite straight forward.
> > 
> > Note 1: I renamed the two last notifier list. The name 'post-reboot'
> > 	did sound strange from the logical POV ;-)
> > 
> > Note 2: We have to avoid the possibility to call "reboot" list
> > 	before kmsg_dump(). All callbacks providing info
> > 	have to be in the info list. It a callback combines
> > 	info and reboot functionality then it should be split.
> > 
> > 	There must be another way to calm down problematic
> > 	info callbacks. And it has to be solved when such
> > 	a problem is reported. Is there any known issue, please?
> > 
> > It is possible that I have missed something important.
> > But I would really like to make the logic as simple as possible.
> 
> OK, I agree with you! It's indeed simpler and if others agree, I can
> happily change the logic to what you proposed. Although...currently the
> "crash_kexec_post_notifiers" allows to call _all_ panic_reboot_list
> callbacks _before kdump_.
> 
> We need to mention this change in the commit messages, but I really
> would like to hear the opinions of heavy users of notifiers (as
> Michael/Hyper-V) and the kdump interested parties (like Baoquan / Dave
> Young / Hayatama). If we all agree on such approach, will change that
> for V2 =)
> 
> Thanks again Petr, for the time spent in such detailed review!
> Cheers,
> 
> 
> Guilherme
> 



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
