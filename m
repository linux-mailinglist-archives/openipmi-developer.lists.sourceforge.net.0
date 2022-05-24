Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB9B532755
	for <lists+openipmi-developer@lfdr.de>; Tue, 24 May 2022 12:19:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ntRdE-0000gw-8u; Tue, 24 May 2022 10:19:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <bhe@redhat.com>) id 1ntRdD-0000gn-JK
 for openipmi-developer@lists.sourceforge.net; Tue, 24 May 2022 10:19:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5hjdGDxm/5eb7UZfehykEkfZZM041fRa5GaKQ9lwQHI=; b=HUwm/Puwe+kIU3slpWGOwj3DkX
 I6To0IfQiKe+CtBB6sQyKHF/6YZLW5ozZr+dyPC2UTb+BpW3vOeE1xpMN/xg1nBt9ObAkLBC8TUir
 JCwGN+AaSvoOiKYCgcBJU9RxcdjRuxD8149sFah698UG/ezZMzQLj/e4370K23ixN8M4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5hjdGDxm/5eb7UZfehykEkfZZM041fRa5GaKQ9lwQHI=; b=WNL8LuTNUsFwVpt92LqWEjMYaB
 IioLbj+xPIyoc9IPyGGtRK2lU4HugXsxJoAgP9YRvXLsiqcAlbyUqYs4b8dE8CsAC4MkQxoVi0d9f
 S5FikQkuFBfmC+erVajjrkyynuazPZFDmEjZslsa5FdQCzbSzZjTV44BBBmfbjb6pZpw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ntRd8-00038I-8V
 for openipmi-developer@lists.sourceforge.net; Tue, 24 May 2022 10:19:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653387544;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5hjdGDxm/5eb7UZfehykEkfZZM041fRa5GaKQ9lwQHI=;
 b=iKpecxYMD7VCxtrbU+sPxVvd0BSKFPCnIGYphDjbIyqtrXmm7uONgJzKCgiq2l2C1zb1ED
 /eqwxKuc7BCt611qLNzwgMt1rlWEUTeCzgQN74FbOYZv9C6PUgx7VCkkvioUfM7nXLcpQv
 9su6hBX4jKR9SNvklGaEN9jbKuR/20Q=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-13-cdRBusv8OiWHr2Ge-bjGGw-1; Tue, 24 May 2022 06:19:03 -0400
X-MC-Unique: cdRBusv8OiWHr2Ge-bjGGw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7889A101A52C;
 Tue, 24 May 2022 10:19:00 +0000 (UTC)
Received: from localhost (ovpn-13-156.pek2.redhat.com [10.72.13.156])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2727240E7F0C;
 Tue, 24 May 2022 10:18:59 +0000 (UTC)
Date: Tue, 24 May 2022 18:18:55 +0800
From: Baoquan He <bhe@redhat.com>
To: Petr Mladek <pmladek@suse.com>
Message-ID: <YoyxD3WApHpa/N1n@MiWiFi-R3L-srv>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com>
 <Yn0TnsWVxCcdB2yO@alley>
 <d313eec2-96b6-04e3-35cd-981f103d010e@igalia.com>
 <20220519234502.GA194232@MiWiFi-R3L-srv>
 <ded31ec0-076b-2c5b-0fe6-0c274954821f@igalia.com>
 <YoyQyHHfhIIXSX0U@alley>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YoyQyHHfhIIXSX0U@alley>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 05/24/22 at 10:01am,
 Petr Mladek wrote: > On Fri 2022-05-20
 08:23:33, Guilherme G. Piccoli wrote: > > On 19/05/2022 20:45, Baoquan He
 wrote: > > > [...] > > >> I really appreciate the summary skill [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ntRd8-00038I-8V
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
 senozhatsky@chromium.org, vkuznets@redhat.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
 d.hatayama@jp.fujitsu.com, mhiramat@kernel.org, kernel-dev@igalia.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 05/24/22 at 10:01am, Petr Mladek wrote:
> On Fri 2022-05-20 08:23:33, Guilherme G. Piccoli wrote:
> > On 19/05/2022 20:45, Baoquan He wrote:
> > > [...]
> > >> I really appreciate the summary skill you have, to convert complex
> > >> problems in very clear and concise ideas. Thanks for that, very useful!
> > >> I agree with what was summarized above.
> > > 
> > > I want to say the similar words to Petr's reviewing comment when I went
> > > through the patches and traced each reviewing sub-thread to try to
> > > catch up. Petr has reivewed this series so carefully and given many
> > > comments I want to ack immediately.
> > > 
> > > I agree with most of the suggestions from Petr to this patch, except of
> > > one tiny concern, please see below inline comment.
> > 
> > Hi Baoquan, thanks! I'm glad you're also reviewing that =)
> > 
> > 
> > > [...]
> > > 
> > > I like the proposed skeleton of panic() and code style suggested by
> > > Petr very much. About panic_prefer_crash_dump which might need be added,
> > > I hope it has a default value true. This makes crash_dump execute at
> > > first by default just as before, unless people specify
> > > panic_prefer_crash_dump=0|n|off to disable it. Otherwise we need add
> > > panic_prefer_crash_dump=1 in kernel and in our distros to enable kdump,
> > > this is inconsistent with the old behaviour.
> > 
> > I'd like to understand better why the crash_kexec() must always be the
> > first thing in your use case. If we keep that behavior, we'll see all
> > sorts of workarounds - see the last patches of this series, Hyper-V and
> > PowerPC folks hardcoded "crash_kexec_post_notifiers" in order to force
> > execution of their relevant notifiers (like the vmbus disconnect,
> > specially in arm64 that has no custom machine_crash_shutdown, or the
> > fadump case in ppc). This led to more risk in kdump.
> > 
> > The thing is: with the notifiers' split, we tried to keep only the most
> > relevant/necessary stuff in this first list, things that ultimately
> > should improve kdump reliability or if not, at least not break it. My
> > feeling is that, with this series, we should change the idea/concept
> > that kdump must run first nevertheless, not matter what. We're here
> > trying to accommodate the antagonistic goals of hypervisors that need
> > some clean-up (even for kdump to work) VS. kdump users, that wish a
> > "pristine" system reboot ASAP after the crash.
> 
> Good question. I wonder if Baoquan knows about problems caused by the
> particular notifiers that will end up in the hypervisor list. Note
> that there will be some shuffles and the list will be slightly
> different in V2.

Yes, I knew some of them. Please check my response to Guilherme.

We have bug to track the issue on Hyper-V in which failure happened
during panic notifiers running, haven't come to kdump. Seems both of
us sent mail replying to Guilherme at the same time. 

> 
> Anyway, I see four possible solutions:
> 
>   1. The most conservative approach is to keep the current behavior
>      and call kdump first by default.
> 
>   2. A medium conservative approach to change the default default
>      behavior and call hypervisor and eventually the info notifiers
>      before kdump. There still would be the possibility to call kdump
>      first by the command line parameter.
> 
>   3. Remove the possibility to call kdump first completely. It would
>      assume that all the notifiers in the info list are super safe
>      or that they make kdump actually more safe.
> 
>   4. Create one more notifier list for operations that always should
>      be called before crash_dump.

I would vote for 1 or 4 without any hesitation, and prefer 4. I ever
suggest the variant of solution 4 in v1 reviewing. That's taking those
notifiers out of list and enforcing to execute them before kdump. E.g
the one on HyperV to terminate VMbus connection. Maybe solution 4 is
better to provide a determinate way for people to add necessary code
at the earliest part.

> 
> Regarding the extra notifier list (4th solution). It is not clear to
> me whether it would be always called even before hypervisor list or
> when kdump is not enabled. We must not over-engineer it.

One thing I would like to notice is, no matter how perfect we split the
lists this time, we can't gurantee people will add notifiers reasonablly
in the future. And people from different sub-component may not do
sufficient investigation and add them to fulfil their local purpose.

The current panic notifers list is the best example. Hyper-V actually
wants to run some necessary code before kdump, but not all of them, they
just add it, ignoring the original purpose of
crash_kexec_post_notifiers. I guess they do like this just because it's
easy to do, no need to bother changing code in generic place.

Solution 4 can make this no doubt, that's why I like it better.

> 
> 2nd proposal looks like a good compromise. But maybe we could do
> this change few releases later. The notifiers split is a big
> change on its own.

As I replied to Guilherme, solution 2 will cause regression if not
calling kdump firstly. Solution 3 leaves people space to make mistake,
they could add nontifier into wrong list.

I would like to note again that the panic notifiers are optional to run,
while kdump is expectd once loaded, from the original purpose. I guess
people I know will still have this thought, e.g Hatayama, Masa, they are
truly often use panic notifiers like this on their company's system.



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
