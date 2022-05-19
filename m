Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0583B52CC5D
	for <lists+openipmi-developer@lfdr.de>; Thu, 19 May 2022 09:04:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nraCl-0006Kf-AS; Thu, 19 May 2022 07:04:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pmladek@suse.com>) id 1nraCj-0006KY-Km
 for openipmi-developer@lists.sourceforge.net; Thu, 19 May 2022 07:04:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=395st/CngVntAAOn5uSBsdHcf6UJsehUQOcbe6ab9wI=; b=U4SSjPPG00O0aqk71GIVLioefx
 eDeixaLcP9Sd9KTyGoN+hOT1W+FwHGnoG56nuL8xSus6csHN8FGrQaB3vALPzREV79TpQ4qTiUdlJ
 i5KOvq6AHqbR+qnNpuB0DFdurvLyaElGEux1vwhu6Kb5Jm75CDXDvQNcf5beFa1H9gDc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=395st/CngVntAAOn5uSBsdHcf6UJsehUQOcbe6ab9wI=; b=BDsCmshk0r3MIYnCpTCNRxTB8L
 M/BwCjEarDPGrNcx42FPM2BoFTUyMTU3FQCgOzUz1BfOVLj0xDplcqtXqkn13StGDqDygEfh/2g59
 4v7VXv00rCZvySsLrFLPX+NtZeTyYAfPqTXVm+A1O68v6tQtare5pp4X8WMDH7w/GbaA=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nraCf-00089W-Ah
 for openipmi-developer@lists.sourceforge.net; Thu, 19 May 2022 07:04:11 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id CF6261F9DC;
 Thu, 19 May 2022 07:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1652943838; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=395st/CngVntAAOn5uSBsdHcf6UJsehUQOcbe6ab9wI=;
 b=qJ/FgyV3p4LuXUdkZjoAbs2+ewn4o7aNZN0S67D2rC96Mde70WoKxt5D1iYy3vIxFGNywX
 NYQFStO7xXozlUSKqQPZCblT/M2McgEFa5ttVGDSrZzFsBjH4DUBLxqHsrlOhubnXz8Ip9
 VRfQAfc3f6HDJx77hS/XQSQpNXuMeJQ=
Received: from suse.cz (unknown [10.100.201.202])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 813A52C141;
 Thu, 19 May 2022 07:03:55 +0000 (UTC)
Date: Thu, 19 May 2022 09:03:52 +0200
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Message-ID: <YoXr2AD+Jc/ukUhJ@alley>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-20-gpiccoli@igalia.com>
 <YoJZVZl/MH0KiE/J@alley>
 <ad082ce7-db50-13bb-3dbb-9b595dfa78be@igalia.com>
 <YoOpyW1+q+Z5as78@alley> <YoSnGmBJ3kYs5WMf@alley>
 <fbbd0a8d-2ef4-4a39-4b75-354918e85778@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fbbd0a8d-2ef4-4a39-4b75-354918e85778@igalia.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 2022-05-18 10:16:20, Guilherme G. Piccoli wrote: >
 On 18/05/2022 04:58, Petr Mladek wrote: > > [...] > >> I does similar things
 like kmsg_dump() so it should be called in > >> the same location [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nraCf-00089W-Ah
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
 Michael Ellerman <mpe@ellerman.id.au>, stern@rowland.harvard.edu,
 xen-devel@lists.xenproject.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, Nicholas Piggin <npiggin@gmail.com>,
 luto@kernel.org, Mihai Carabas <mihai.carabas@oracle.com>, tglx@linutronix.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 akpm@linux-foundation.org, linux-hyperv@vger.kernel.org,
 dave.hansen@linux.intel.com, linux-s390@vger.kernel.org,
 Stephen Hemminger <sthemmin@microsoft.com>, Vasily Gorbik <gor@linux.ibm.com>,
 vgoyal@redhat.com, Sven Schnelle <svens@linux.ibm.com>,
 Andrea Parri <parri.andrea@gmail.com>, linux-xtensa@linux-xtensa.org,
 john.ogness@linutronix.de, Scott Branden <scott.branden@broadcom.com>,
 Doug Berger <opendmb@gmail.com>, Markus Mayer <mmayer@broadcom.com>,
 hidehiro.kawai.ez@hitachi.com, linux-arm-kernel@lists.infradead.org,
 kernel-dev@igalia.com, fabiomirmar@gmail.com, halves@canonical.com,
 alejandro.j.jimenez@oracle.com, feng.tang@intel.com,
 zhenwei pi <pizhenwei@bytedance.com>, will@kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, bhe@redhat.com, corbet@lwn.net,
 Dexuan Cui <decui@microsoft.com>, Evan Green <evgreen@chromium.org>,
 bcm-kernel-feedback-list@broadcom.com, Tianyu Lan <Tianyu.Lan@microsoft.com>,
 keescook@chromium.org, arnd@arndb.de, Haiyang Zhang <haiyangz@microsoft.com>,
 rostedt@goodmis.org, rcu@vger.kernel.org, bp@alien8.de,
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
 andriy.shevchenko@linux.intel.com, Hari Bathini <hbathini@linux.ibm.com>,
 linux-edac@vger.kernel.org, jgross@suse.com, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-mips@vger.kernel.org,
 Julius Werner <jwerner@chromium.org>, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed 2022-05-18 10:16:20, Guilherme G. Piccoli wrote:
> On 18/05/2022 04:58, Petr Mladek wrote:
> > [...]
> >> I does similar things like kmsg_dump() so it should be called in
> >> the same location (after info notifier list and before kdump).
> >>
> >> A solution might be to put it at these notifiers at the very
> >> end of the "info" list or make extra "dump" notifier list.
> > 
> > I just want to point out that the above idea has problems.
> > Notifiers storing kernel log need to be treated as kmsg_dump().
> > In particular, we would  need to know if there are any.
> > We do not need to call "info" notifier list before kdump
> > when there is no kernel log dumper registered.
> > 
> 
> Notifiers respect the priority concept, which is just a number that
> orders the list addition (and the list is called in order).
> 
> I've used the last position to panic_print() [in patch 25] - one idea
> here is to "reserve" the last position (represented by INT_MIN) for
> notifiers that act like kmsg_dump(). I couldn't find any IIRC, but that
> doesn't prevent us to save this position and comment about that.

I would ignore it for now. If anyone would want to safe the log
then they would need to read it. They will most likely use
the existing kmsg_dump() infastructure. In fact, they should
use it to avoid a code duplication.

Best Regards,
Petr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
