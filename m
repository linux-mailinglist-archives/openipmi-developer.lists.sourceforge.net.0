Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 408C352A853
	for <lists+openipmi-developer@lfdr.de>; Tue, 17 May 2022 18:40:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nr0Ev-0003Eb-F6; Tue, 17 May 2022 16:40:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nr0Et-0003EN-LN
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 16:40:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nkckcEBnQlRsFTpASqSz6WprnZRaV0YhYSvPtBA0AVg=; b=jqEd8O+ubEeWXlL58SvjtfEesg
 XxS8pp6nP2p5z3ndZEi92viTT7t44f/BpMeqd+TQ9lnJL/YiqWVQdk79hDNBl+j4YLpZJC/Hwechp
 384GTxOUZXimxlgBFZMYnk3daNT3kLCF9D9zQWV7e+qt1RD1N6RLk6csmUku5OLoDqk0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nkckcEBnQlRsFTpASqSz6WprnZRaV0YhYSvPtBA0AVg=; b=AYRxETdtnSgUXSSV3pPgCIKmbB
 8eYPA8DgHKlXo//tjMZVVl2nIn4qp4HTw5wZwgfLBxMV8Hd5PWeEaGukJqAwOfEWxBQM+VtG+5aT/
 5CvCD/JrJXRL8qPN81VP8GBLZIr7PuqhwZ2lgcrpHn34HCW2bY/1x2H1InchRh7t3V6M=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nr0En-0002Eg-OM
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 16:40:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nkckcEBnQlRsFTpASqSz6WprnZRaV0YhYSvPtBA0AVg=; b=GXitEwhCwUT4w9+D5pmH2zeSKa
 60OoBts2cxKaTjkNlztKOiPg7JmJSxA8Nf6Mc3GM9eoyPx0kgrCnR1AZ6EjsP0NE4+IxyqcasC5FH
 Bzs6mPDD2Ojz26SlVHGGSFKa4MS4PaKNy9b4ykBdp04iHw75Gq64zjSE08zAzR/RUXjez/E1PIcPr
 w9iTODel9NpjUtjDaWlc8Esr0zkZKONhALq9dFCmuDS5Nj18Wn3hMj4H1VTlzFy6uMc+YdCA3ReKq
 k/CxfFfQpOp3w1u8K+s1/QjiYVlCZZRZYeOFoWStjActxBApHl98rSBUYLtUajOsHPvmBlqZChf2A
 VEU39bjw==;
Received: from 200-161-159-120.dsl.telesp.net.br ([200.161.159.120]
 helo=[192.168.1.60]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nr0Da-008gju-GJ; Tue, 17 May 2022 18:38:42 +0200
Message-ID: <b9ec2fc8-216f-f261-8417-77b6dd95e25c@igalia.com>
Date: Tue, 17 May 2022 13:37:58 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>, Evan Green <evgreen@chromium.org>,
 David Gow <davidgow@google.com>, Julius Werner <jwerner@chromium.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-20-gpiccoli@igalia.com> <YoJZVZl/MH0KiE/J@alley>
 <ad082ce7-db50-13bb-3dbb-9b595dfa78be@igalia.com>
 <CAE=gft7ds+dHfEkRz8rnSH1EbTpGTpKbi5Wxj9DW0Jr5mX_j4w@mail.gmail.com>
 <YoOi9PFK/JnNwH+D@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoOi9PFK/JnNwH+D@alley>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 17/05/2022 10:28, Petr Mladek wrote: > [...] >>> Disagree
 here. I'm looping Google maintainers, so they can comment. >>> (CCed Evan,
 David, Julius) >>> >>> This notifier is clearly a hypervisor not [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nr0En-0002Eg-OM
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
 d.hatayama@jp.fujitsu.com, Sven Schnelle <svens@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-hyperv@vger.kernel.org,
 dave.hansen@linux.intel.com, linux-s390@vger.kernel.org,
 Stephen Hemminger <sthemmin@microsoft.com>, Vasily Gorbik <gor@linux.ibm.com>,
 vgoyal@redhat.com, mhiramat@kernel.org, Andrea Parri <parri.andrea@gmail.com>,
 linux-xtensa@linux-xtensa.org, john.ogness@linutronix.de,
 Scott Branden <scott.branden@broadcom.com>, Doug Berger <opendmb@gmail.com>,
 Markus Mayer <mmayer@broadcom.com>, hidehiro.kawai.ez@hitachi.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 kernel-dev@igalia.com, fabiomirmar@gmail.com, halves@canonical.com,
 alejandro.j.jimenez@oracle.com, feng.tang@intel.com,
 Will Deacon <will@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 bhe@redhat.com, Jonathan Corbet <corbet@lwn.net>,
 Dexuan Cui <decui@microsoft.com>, zhenwei pi <pizhenwei@bytedance.com>,
 bcm-kernel-feedback-list@broadcom.com, Tianyu Lan <Tianyu.Lan@microsoft.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Haiyang Zhang <haiyangz@microsoft.com>, rostedt@goodmis.org,
 rcu@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
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
 linux-tegra@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Hari Bathini <hbathini@linux.ibm.com>, linux-edac@vger.kernel.org,
 jgross@suse.com, netdev@vger.kernel.org, kernel@gpiccoli.net,
 kexec@lists.infradead.org, linux-mips@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 17/05/2022 10:28, Petr Mladek wrote:
> [...]
>>> Disagree here. I'm looping Google maintainers, so they can comment.
>>> (CCed Evan, David, Julius)
>>>
>>> This notifier is clearly a hypervisor notification mechanism. I've fixed
>>> a locking stuff there (in previous patch), I feel it's low-risk but even
>>> if it's mid-risk, the class of such callback remains a perfect fit with
>>> the hypervisor list IMHO.
>>
>> This logs a panic to our "eventlog", a tiny logging area in SPI flash
>> for critical and power-related events. In some cases this ends up
>> being the only clue we get in a Chromebook feedback report that a
>> panic occurred, so from my perspective moving it to the front of the
>> line seems like a good idea.
> 
> IMHO, this would really better fit into the pre-reboot notifier list:
> 
>    + the callback stores the log so it is similar to kmsg_dump()
>      or console_flush_on_panic()
> 
>    + the callback should be proceed after "info" notifiers
>      that might add some other useful information.
> 
> Honestly, I am not sure what exactly hypervisor callbacks do. But I
> think that they do not try to extract the kernel log because they
> would need to handle the internal format.
> 

I guess the main point in your response is : "I am not sure what exactly
hypervisor callbacks do". We need to be sure about the semantics of such
list, and agree on that.

So, my opinion about this first list, that we call "hypervisor list",
is: it contains callbacks that

(1) should run early, preferably before kdump (or even if kdump isn't
set, should run ASAP);

(2) these callbacks perform some communication with an abstraction that
runs "below" the kernel, like a firmware or hypervisor. Classic example:
pvpanic, that communicates with VMM (usually qemu) and allow such VMM to
snapshot the full guest memory, for example.

(3) Should be low-risk. What defines risk is the level of reliability of
subsequent operations - if the callback have 50% of chance of "bricking"
the system totally and prevent kdump / kmsg_dump() / reboot , this is
high risk one for example.

Some good fits IMO: pvpanic, sstate_panic_event() [sparc], fadump in
powerpc, etc.

So, this is a good case for the Google notifier as well - it's not
collecting data like the dmesg (hence your second bullet seems to not
apply here, info notifiers won't add info to be collected by gsmi). It
is a firmware/hypervisor/whatever-gsmi-is notification mechanism, that
tells such "lower" abstraction a panic occurred. It seems low risk and
we want it to run ASAP, if possible.

So, I'd like to keep it here, unless gsmi maintainers disagree or I'm
perhaps misunderstanding the meaning of this first list.
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
