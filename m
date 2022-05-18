Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0806C52BB75
	for <lists+openipmi-developer@lfdr.de>; Wed, 18 May 2022 15:26:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nrJgh-0000Kp-E6; Wed, 18 May 2022 13:26:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nrJgg-0000Kb-7g
 for openipmi-developer@lists.sourceforge.net; Wed, 18 May 2022 13:26:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aBHSQ74cshobrBoDeAcAwH8dbmp4ORux6n0j1EJ9zhs=; b=Ace1lTYdvL/14zIoRJKaW+8AsR
 E3A+igN3gOJgJlVLXYHnznl8t18ndgvRBb1WnH9e4CApqnm+dMLsaQ9epoFaE5wAohG1xk2OYxKVP
 iXsz9mygfgUtR3IBRkJiXLG5kduMAzraUvsBeVM7b2bBUARVhWWuRqoTAPX5T2AM9aBE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aBHSQ74cshobrBoDeAcAwH8dbmp4ORux6n0j1EJ9zhs=; b=OO6qte0an20i2fKyVd/QeKsOSM
 YewnYWkEwYK/VdYoN7PLhRYTCUp0uOcI5UUHUUyp4zdkqK11ei7IroLoI/iPjGIyT1FFmKyDAO56V
 WsHR7yqP7WSRi4vi8i7Rj7Ci4tPf600zIsQfC24fP2+6fypHtdznqKnFNVpn08u9OQWg=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nrJge-0004h1-Jq
 for openipmi-developer@lists.sourceforge.net; Wed, 18 May 2022 13:26:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aBHSQ74cshobrBoDeAcAwH8dbmp4ORux6n0j1EJ9zhs=; b=PbQX6jJxrSTFYuY1QkUAm5HHAj
 4zjhUqw9dZUmp+/h7FpyGsMd9T7KC01Lk8wihlfsVt15sYS07bd4AGqx/olI4ChlgEfTgoKgt6ghF
 u4Ul+3a/u8AC1yN3var2ePdBq3yJ0QNuCnzFCU2AsJ1yN+Ew0qnuNx0AKJJMSgaFsHSKjAS/RJyRX
 nQBP35ba/Mxst73B+b2bL1GyLemevCz0TIExKe/iFre2S2JyltNIOuuqHTXgx4xNR3AtqS8MDXev4
 Htu1aPv+rb/vlxpa70azlfd8R3qZ4EjVERsEcfu9NCpHDF7PwWBcLltMr6Fz/cDtJaPv3zZndTfPs
 +f+vkTJA==;
Received: from 200-161-159-120.dsl.telesp.net.br ([200.161.159.120]
 helo=[192.168.1.60]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nrJg7-009yTw-Of; Wed, 18 May 2022 15:25:27 +0200
Message-ID: <5ed2ca7a-5bf3-f101-a1f4-9a320c79f5a0@igalia.com>
Date: Wed, 18 May 2022 10:24:39 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-20-gpiccoli@igalia.com> <YoJZVZl/MH0KiE/J@alley>
 <ad082ce7-db50-13bb-3dbb-9b595dfa78be@igalia.com>
 <CAE=gft7ds+dHfEkRz8rnSH1EbTpGTpKbi5Wxj9DW0Jr5mX_j4w@mail.gmail.com>
 <YoOi9PFK/JnNwH+D@alley> <b9ec2fc8-216f-f261-8417-77b6dd95e25c@igalia.com>
 <YoShZVYNAdvvjb7z@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoShZVYNAdvvjb7z@alley>
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 18/05/2022 04:33, Petr Mladek wrote: > [...] > Anyway,
 I would distinguish it the following way. > > + If the notifier is preserving
 kernel log then it should be ideally > treated as kmsg_dump(). > [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nrJge-0004h1-Jq
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

On 18/05/2022 04:33, Petr Mladek wrote:
> [...]
> Anyway, I would distinguish it the following way.
> 
>   + If the notifier is preserving kernel log then it should be ideally
>     treated as kmsg_dump().
> 
>   + It the notifier is saving another debugging data then it better
>     fits into the "hypervisor" notifier list.
> 
>

Definitely, I agree - it's logical, since we want more info in the logs,
and happens some notifiers running in the informational list do that,
like ftrace_on_oops for example.


> Regarding the reliability. From my POV, any panic notifier enabled
> in a generic kernel should be reliable with more than 99,9%.
> Otherwise, they should not be in the notifier list at all.
> 
> An exception would be a platform-specific notifier that is
> called only on some specific platform and developers maintaining
> this platform agree on this.
> 
> The value "99,9%" is arbitrary. I am not sure if it is realistic
> even in the other code, for example, console_flush_on_panic()
> or emergency_restart(). I just want to point out that the border
> should be rather high. Otherwise we would back in the situation
> where people would want to disable particular notifiers.
> 

Totally agree, these percentages are just an example, 50% is ridiculous
low reliability in my example heheh

But some notifiers deep dive in abstraction layers (like regmap or GPIO
stuff) and it's hard to determine the probability of a lock issue (take
a spinlock already taken inside regmap code and live-lock forever, for
example). These are better to run, if possible, later than kdump or even
info list.

Thanks again for the good analysis Petr!
Cheers,


Guilherme




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
