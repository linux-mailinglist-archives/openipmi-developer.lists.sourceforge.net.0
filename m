Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF6C54B345
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Jun 2022 16:36:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o17eV-0001FS-VQ; Tue, 14 Jun 2022 14:36:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pmladek@suse.com>) id 1o17eR-0001FL-NE
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Jun 2022 14:36:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7h6hH0gYTond1cgiS/uMW2G4mVmL8aIozW74ouv+gK4=; b=hzpfV4o9UGE2biLBCnh/OCAec0
 VtsrOh6ERpNSRhi1kGq8vH/bBaLkxShpVpW7OoGIiB+MNuj+ZRCKPhSsb7qPiP/BPexmKqsKH6Xox
 yZn+89bPHNNDXAWBAK+DoBhN4lI4lOU4p94r53rLWSJ1m0rzL/5neW1iRhdITmBY7scs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7h6hH0gYTond1cgiS/uMW2G4mVmL8aIozW74ouv+gK4=; b=f0izpW9rfQZyfrGXvwjy7gk2pX
 k5eyYqU6flOMYF4PhHJfH3apUmaqTQ38YznmyGLWN30uUtWsaVuyxnPI8O1DL2NzIC5L+TTaYELxB
 flz88ecyQHI/lvG859huIzhtwsGnpPU+UMRaj4X4vvmVYJicdYi+YcEUeCDltVA3gYvg=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o17eM-001M3q-0w
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Jun 2022 14:36:14 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id 8286121B97;
 Tue, 14 Jun 2022 14:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1655217363; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7h6hH0gYTond1cgiS/uMW2G4mVmL8aIozW74ouv+gK4=;
 b=B9wTA4hA6Qxez4dhaQq2jaLjcRQqv8/C1d0oKbtJxHWYl3duIpfM3QjZ2J2ZIG1jByzjIk
 ObTWFZbyZcppMylTomPCNwhynw9TlYQGEMrmiuv4k8IcEezBoIE3JYy9Oiijt3mtdocbSR
 YntR36rSYs/Otfz0SDXm/BOtVHJZFAE=
Received: from suse.cz (unknown [10.100.201.202])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 0C0ED2C142;
 Tue, 14 Jun 2022 14:36:01 +0000 (UTC)
Date: Tue, 14 Jun 2022 16:36:01 +0200
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Message-ID: <Yqic0R8/UFqTbbMD@alley>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com>
 <87fskzuh11.fsf@email.froward.int.ebiederm.org>
 <0d084eed-4781-c815-29c7-ac62c498e216@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0d084eed-4781-c815-29c7-ac62c498e216@igalia.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu 2022-05-26 13:25:57, Guilherme G. Piccoli wrote: >
 OK, so it seems we have some points in which agreement exists, and some >
 points that there is no agreement and instead, we have antagonistic [...] 
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
X-Headers-End: 1o17eM-001M3q-0w
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
From: Petr Mladek via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Petr Mladek <pmladek@suse.com>
Cc: Mark Rutland <mark.rutland@arm.com>, linux-hyperv@vger.kernel.org,
 halves@canonical.com, gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, mikelley@microsoft.com, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 linux-mips@vger.kernel.org, dyoung@redhat.com, vgoyal@redhat.com,
 mhiramat@kernel.org, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 "Eric W. Biederman" <ebiederm@xmission.com>, kernel-dev@igalia.com,
 linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu 2022-05-26 13:25:57, Guilherme G. Piccoli wrote:
> OK, so it seems we have some points in which agreement exists, and some
> points that there is no agreement and instead, we have antagonistic /
> opposite views and needs. Let's start with the easier part heh
>
> It seems everybody agrees that *we shouldn't over-engineer things*, and
> as per Eric good words: making the panic path more feature-full or
> increasing flexibility isn't a good idea. So, as a "corollary": the
> panic level approach I'm proposing is not a good fit, I'll drop it and
> let's go with something simpler.

Makes sense.

> Another point of agreement seems to be that _notifier lists in the panic
> path are dangerous_, for *2 different reasons*:
> 
> (a) We cannot guarantee that people won't add crazy callbacks there, we
> can plan and document things the best as possible - it'll never be
> enough, somebody eventually would slip a nonsense callback that would
> break things and defeat the planned purpose of such a list;

It is true that notifier lists might allow to add crazy stuff
without proper review more easily. Things added into the core
code would most likely get better review.

But nothing is error-proof. And bugs will happen with any approach.


> (b) As per Eric point, in a panic/crash situation we might have memory
> corruption exactly in the list code / pointers, etc, so the notifier
> lists are, by nature, a bit fragile. But I think we shouldn't consider
> it completely "bollocks", since this approach has been used for a while
> with a good success rate. So, lists aren't perfect at all, but at the
> same time, they aren't completely useless.

I am not able to judge this. Of course, any extra step increases
the risk. I am just not sure how much more complicated it would
be to hardcode the calls. Most of them are architecture
and/or feature specific. And such code is often hard to
review and maintain.

> To avoid using a 4th list,

4th or 5th? We already have "hypervisor", "info", "pre-reboot", and "pre-loop".
The 5th might be pre-crash-exec.

> especially given the list nature is a bit
> fragile, I'd suggest one of the 3 following approaches - I *really
> appreciate feedbacks* on that so I can implement the best solution and
> avoid wasting time in some poor/disliked solution:

Honestly, I am not able to decide what might be better without seeing
the code.

Most things fits pretty well into the 4 proposed lists:
"hypervisor", "info", "pre-reboot", and "pre-loop". IMHO, the
only question is the code that needs to be always called
even before crash_dump.

I suggest that you solve the crash_dump callbacks the way that
looks best to you. Ideally do it in a separate patch so it can be
reviewed and reworked more easily.

I believe that a fresh code with an updated split and simplified
logic would help us to move forward.

Best Regards,
Petr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
