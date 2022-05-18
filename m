Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C94B52B373
	for <lists+openipmi-developer@lfdr.de>; Wed, 18 May 2022 09:34:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nrECH-00031B-FP; Wed, 18 May 2022 07:34:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pmladek@suse.com>) id 1nrECF-000315-Sq
 for openipmi-developer@lists.sourceforge.net; Wed, 18 May 2022 07:34:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YR5rOhmSURb4d/IKXy5VZg8z1ImD01Us4xBpVFtyoqU=; b=AmxnZGtfU5elcTdzOmMrOgTxQU
 zH7VXTmrRJ73VS71lRs+aet8iCsFXaSxsdrfvLMfwggBZLE4lyrzB3VI//mDx8gw4CAYTgTQaZ/Hi
 UY1KxwaDZsfpyo8YWBu/T2JnROqIaaBjbXm1z0sisvqnjl6uOB1gKEu7wtGtQFkdXZak=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YR5rOhmSURb4d/IKXy5VZg8z1ImD01Us4xBpVFtyoqU=; b=TxHIife7boNTn7PILMSc/dH+1F
 FvDi40vyqRV5V0mIY+q1To7uJi09dHJOz8++cfX9UcDKhEAUaGOxDQ8dbintmvKq0D7ORfpDaKSbP
 5SzT6iDlU2OUFphybIWX1mc7H0M/ZisgfUedXRH4DFPgRXKf6cEEgiEjzM01tXJjshtY=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nrEC9-0005op-Qs
 for openipmi-developer@lists.sourceforge.net; Wed, 18 May 2022 07:34:14 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 8990E1F9A4;
 Wed, 18 May 2022 07:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1652859243; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YR5rOhmSURb4d/IKXy5VZg8z1ImD01Us4xBpVFtyoqU=;
 b=apiSUoAwUbqeAccPNQ19K+RPeAfjpiC+Kw09kP9gYD08Bjqn9sy6l8W4iwyq6IQeI6Aplp
 +YIfJeRJqbcdQptzveOcUb8Q0R7nuJcbMiyUrGxQWxZdDf/W1Ubmr612J8Zmj7lPwrkx5l
 wG1cTFsW35nAwzkY9hs+1GgrMVmINpw=
Received: from suse.cz (unknown [10.100.201.202])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id AA6042C142;
 Wed, 18 May 2022 07:33:59 +0000 (UTC)
Date: Wed, 18 May 2022 09:33:57 +0200
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Message-ID: <YoShZVYNAdvvjb7z@alley>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-20-gpiccoli@igalia.com>
 <YoJZVZl/MH0KiE/J@alley>
 <ad082ce7-db50-13bb-3dbb-9b595dfa78be@igalia.com>
 <CAE=gft7ds+dHfEkRz8rnSH1EbTpGTpKbi5Wxj9DW0Jr5mX_j4w@mail.gmail.com>
 <YoOi9PFK/JnNwH+D@alley>
 <b9ec2fc8-216f-f261-8417-77b6dd95e25c@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9ec2fc8-216f-f261-8417-77b6dd95e25c@igalia.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 2022-05-17 13:37:58, Guilherme G. Piccoli wrote: >
 On 17/05/2022 10:28, Petr Mladek wrote: > > [...] > >>> Disagree here. I'm
 looping Google maintainers, so they can comment. > >>> (CCed Evan, [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nrEC9-0005op-Qs
Subject: Re: [Openipmi-developer] [PATCH 19/30] panic: Add the panic
 hypervisor notifier list
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Justin Chen <justinpopo6@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Alan Stern <stern@rowland.harvard.edu>,
 xen-devel@lists.xenproject.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Linux PM <linux-pm@vger.kernel.org>, linux-um@lists.infradead.org,
 Nicholas Piggin <npiggin@gmail.com>, Stephen Boyd <swboyd@chromium.org>,
 luto@kernel.org, Mihai Carabas <mihai.carabas@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, senozhatsky@chromium.org,
 d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-hyperv@vger.kernel.org,
 dave.hansen@linux.intel.com, linux-s390@vger.kernel.org,
 Stephen Hemminger <sthemmin@microsoft.com>, Vasily Gorbik <gor@linux.ibm.com>,
 vgoyal@redhat.com, Sven Schnelle <svens@linux.ibm.com>,
 Andrea Parri <parri.andrea@gmail.com>, linux-xtensa@linux-xtensa.org,
 john.ogness@linutronix.de, Scott Branden <scott.branden@broadcom.com>,
 Doug Berger <opendmb@gmail.com>, Markus Mayer <mmayer@broadcom.com>,
 hidehiro.kawai.ez@hitachi.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 kernel-dev@igalia.com, fabiomirmar@gmail.com, halves@canonical.com,
 alejandro.j.jimenez@oracle.com, feng.tang@intel.com,
 zhenwei pi <pizhenwei@bytedance.com>, Will Deacon <will@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, bhe@redhat.com,
 Jonathan Corbet <corbet@lwn.net>, Dexuan Cui <decui@microsoft.com>,
 Evan Green <evgreen@chromium.org>, bcm-kernel-feedback-list@broadcom.com,
 Tianyu Lan <Tianyu.Lan@microsoft.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 rostedt@goodmis.org, rcu@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 openipmi-developer@lists.sourceforge.net,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-alpha@vger.kernel.org,
 Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, peterz@infradead.org,
 linux-remoteproc@vger.kernel.org, mikelley@microsoft.com,
 sparclinux@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-leds@vger.kernel.org, x86@kernel.org,
 mingo@redhat.com, dyoung@redhat.com, paulmck@kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Shile Zhang <shile.zhang@linux.alibaba.com>,
 Wang ShaoBo <bobo.shaobowang@huawei.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 David Gow <davidgow@google.com>, linux-tegra@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Hari Bathini <hbathini@linux.ibm.com>, linux-edac@vger.kernel.org,
 jgross@suse.com, netdev@vger.kernel.org, kernel@gpiccoli.net,
 kexec@lists.infradead.org, linux-mips@vger.kernel.org,
 Julius Werner <jwerner@chromium.org>, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue 2022-05-17 13:37:58, Guilherme G. Piccoli wrote:
> On 17/05/2022 10:28, Petr Mladek wrote:
> > [...]
> >>> Disagree here. I'm looping Google maintainers, so they can comment.
> >>> (CCed Evan, David, Julius)
> >>>
> >>> This notifier is clearly a hypervisor notification mechanism. I've fixed
> >>> a locking stuff there (in previous patch), I feel it's low-risk but even
> >>> if it's mid-risk, the class of such callback remains a perfect fit with
> >>> the hypervisor list IMHO.
> >>
> >> This logs a panic to our "eventlog", a tiny logging area in SPI flash
> >> for critical and power-related events. In some cases this ends up
 > >> being the only clue we get in a Chromebook feedback report that a
> >> panic occurred, so from my perspective moving it to the front of the
> >> line seems like a good idea.
> > 
> > IMHO, this would really better fit into the pre-reboot notifier list:
> > 
> >    + the callback stores the log so it is similar to kmsg_dump()
> >      or console_flush_on_panic()
> > 
> >    + the callback should be proceed after "info" notifiers
> >      that might add some other useful information.
> > 
> > Honestly, I am not sure what exactly hypervisor callbacks do. But I
> > think that they do not try to extract the kernel log because they
> > would need to handle the internal format.
> > 
> 
> I guess the main point in your response is : "I am not sure what exactly
> hypervisor callbacks do". We need to be sure about the semantics of such
> list, and agree on that.
> 
> So, my opinion about this first list, that we call "hypervisor list",
> is: it contains callbacks that
> 
> (1) should run early, preferably before kdump (or even if kdump isn't
> set, should run ASAP);
> 
> (2) these callbacks perform some communication with an abstraction that
> runs "below" the kernel, like a firmware or hypervisor. Classic example:
> pvpanic, that communicates with VMM (usually qemu) and allow such VMM to
> snapshot the full guest memory, for example.
> 
> (3) Should be low-risk. What defines risk is the level of reliability of
> subsequent operations - if the callback have 50% of chance of "bricking"
> the system totally and prevent kdump / kmsg_dump() / reboot , this is
> high risk one for example.
> 
> Some good fits IMO: pvpanic, sstate_panic_event() [sparc], fadump in
> powerpc, etc.
> 
> So, this is a good case for the Google notifier as well - it's not
> collecting data like the dmesg (hence your second bullet seems to not
> apply here, info notifiers won't add info to be collected by gsmi). It
> is a firmware/hypervisor/whatever-gsmi-is notification mechanism, that
> tells such "lower" abstraction a panic occurred. It seems low risk and
> we want it to run ASAP, if possible.

" 
> >> This logs a panic to our "eventlog", a tiny logging area in SPI flash
> >> for critical and power-related events. In some cases this ends up

I see. I somehow assumed that it was about the kernel log because
Evans wrote:

  "This logs a panic to our "eventlog", a tiny logging area in SPI flash
   for critical and power-related events. In some cases this ends up"


Anyway, I would distinguish it the following way.

  + If the notifier is preserving kernel log then it should be ideally
    treated as kmsg_dump().

  + It the notifier is saving another debugging data then it better
    fits into the "hypervisor" notifier list.


Regarding the reliability. From my POV, any panic notifier enabled
in a generic kernel should be reliable with more than 99,9%.
Otherwise, they should not be in the notifier list at all.

An exception would be a platform-specific notifier that is
called only on some specific platform and developers maintaining
this platform agree on this.

The value "99,9%" is arbitrary. I am not sure if it is realistic
even in the other code, for example, console_flush_on_panic()
or emergency_restart(). I just want to point out that the border
should be rather high. Otherwise we would back in the situation
where people would want to disable particular notifiers.

Best Regards,
Petr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
