Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32959523EDD
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 May 2022 22:24:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nossr-0000OR-5d; Wed, 11 May 2022 20:24:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nossp-0000OH-QL
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 20:24:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LCKlEcL/+gLbho7zoJo89g9MDYx2GFkg8N7n1nlW+0g=; b=MWlOm7jAceixcDyhSOiHNPbl1K
 QHdid+AtCbAXh6Ygl7NdcGGcexu1UI6n+MLqUtNZ/GQRiZonAp3OL0fVO1w+99m3s20zyLTZrPCDn
 /Xxf3SNpg2v1YnFR0K/dPJvOfx5ah8wW58X9AZxwHiAwIV2tmCvQOCKy472BeyhX02zA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LCKlEcL/+gLbho7zoJo89g9MDYx2GFkg8N7n1nlW+0g=; b=CNMrvLxLuqCZOlLrV3lLcD1RDC
 uwP4X5ErwTiz/gGUVXlA8JnT0GiPahJX/TFk1xwjyZjnoFEEldLLJsfat9wm2GjAX61Ot9XLVq4k7
 a6zImmbyQsd3SxWNZzFJrNc4ik587rYb6qqychZewjXr6g5hO3GRAQ+DGHPCf+z5givc=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nosso-0095DI-6q
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 20:24:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LCKlEcL/+gLbho7zoJo89g9MDYx2GFkg8N7n1nlW+0g=; b=MQpyMZ3nMM+SlSF0Ic+7AggIHS
 wWCWxLFJNdpcNC/qKw1wNJR3uSo8xMkfiJlq7d2aikSbZG9yuq1pfGOyawWDcFgWnRsla4fbF455Y
 3RXCIUoMIO9o6uix81B+J++RZraHoxYIg5AFTEzg2KmNpXSrs7BEjvRicrp5TYhs6s3mYN27kkyAz
 njPDxaRSeQ75fkZPzqisnL9xIuav4szhmycF8VItK7avDyCoEE8U/Zs7xTZO8x+jizmxi0qGskMhG
 GsWdK7oyZ7kJDFhpPsgWAmAhF7aiE+T5aNpN2RQ5WYTzC7ql7jtRy3esjCfYNiJNCeB+2D6JHceeB
 Ayva3vzg==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1noss0-000Aod-US; Wed, 11 May 2022 22:23:41 +0200
Message-ID: <4b003501-f5c3-cd66-d222-88d98c93e141@igalia.com>
Date: Wed, 11 May 2022 17:22:22 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 Richard Weinberger <richard@nod.at>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-12-gpiccoli@igalia.com> <Ynp2hRodh04K3pzK@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <Ynp2hRodh04K3pzK@alley>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/05/2022 11:28, Petr Mladek wrote: > [...] > It is not
 clear to me why user mode linux should not care about > the other notifiers.
 It might be because I do not know much > about the user mode li [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.7 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nosso-0095DI-6q
Subject: Re: [Openipmi-developer] [PATCH 11/30] um: Improve panic notifiers
 consistency and ordering
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
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/05/2022 11:28, Petr Mladek wrote:
> [...]
> It is not clear to me why user mode linux should not care about
> the other notifiers. It might be because I do not know much
> about the user mode linux.
> 
> Is the because they always create core dump or are never running
> in a hypervisor or ...?
> 
> AFAIK, the notifiers do many different things. For example, there
> is a notifier that disables RCU watchdog, print some extra
> information. Why none of them make sense here?
>

Hi Petr, my understanding is that UML is a form of running Linux as a
regular userspace process for testing purposes. With that said, as soon
as we exit in the error path, less "pollution" would happen, so users
can use GDB to debug the core dump for example.

In later patches of this series (when we split the panic notifiers in 3
lists) these UML notifiers run in the pre-reboot list, so they run after
the informational notifiers for example (in the default level).
But without the list split we cannot order properly, so my gut feeling
is that makes sense to run them rather earlier than later in the panic
process...

Maybe Anton / Johannes / Richard could give their opinions - appreciate
that, I'm not attached to the priority here, it's more about users'
common usage of UML I can think of...

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
