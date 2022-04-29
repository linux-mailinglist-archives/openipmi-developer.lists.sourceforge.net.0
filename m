Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D5051528B
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 19:44:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkUex-0000vc-M6; Fri, 29 Apr 2022 17:44:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jcmvbkbc@gmail.com>) id 1nkT75-0001q5-05
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 16:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MQcZ21ZXrJjtfh7JWVyd82OFreqrUf57vyzG9uXB95s=; b=LScXoHEsKx7fqlBuUCaqUdcwx2
 BVd5y9cQHA/zBzZPT6BuqYTxW/7gVmryc0vFLcmcfvQFMsPLkv6YwFT/fNA58EM+vzZqaqVGgg7Zq
 pNqkDkq0iUbJCFfr6GqLkyQQTPD99rRZm+fKDsP6hhG03kT5qXYu0/jO54TipsAPGRtQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MQcZ21ZXrJjtfh7JWVyd82OFreqrUf57vyzG9uXB95s=; b=TA99VeOZIGCSajqXp/Pc8xQUqH
 xktMkyM+WAkC5c0Y9BGQ/LSRHaiRBpNaanmzecXV//JB8wx4sgjoIa5shmCMdt2Xluj/FHi1snp4Q
 7zVzykF822mC3z+gkvDqZmw5CdzKAwVWO9KvxsMj9aOI25kH+Z9zxFtmQP/KRa6WLucE=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nkT72-0002VB-F5
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 16:04:58 +0000
Received: by mail-oi1-f171.google.com with SMTP id r1so8784148oie.4
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 29 Apr 2022 09:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MQcZ21ZXrJjtfh7JWVyd82OFreqrUf57vyzG9uXB95s=;
 b=NQuHjq75yTcETqoe5MFxchlZ/6p7R23s4Uh/eK6M8cjCLKjgK4aZLK94enM9k42z9z
 9olN5ZP+vAQmeXTs3TpSIt0NzvMdqABegG4qz96TEt/HS/xzZxrOdtT3s38HXa8rxQCC
 //y1nGWR49pl0bI4BXJikvhyEOuRN9x7yyhQG6wmlGrFanhXAWznrpMOX2TZU06+jYUn
 nIWU94QXvKkXMgCPv2tcj5gD6bKy2psqRCjrFUOKa8Bl/tDHLN4JOX0rshY1mFgS6Dj8
 yb9QNW2JBzYk707yzx4X/QadG8x7UesXEXLRQ21ibqXwVr/gFDYqh338pCxNErks0fTt
 i5PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MQcZ21ZXrJjtfh7JWVyd82OFreqrUf57vyzG9uXB95s=;
 b=3WixG/q6eZ4O08x706m99lAURY1iVloXDAyf4tJNJq1fpILZ4m0pcofjU3yG5yzJDm
 +rC9mlQn57cPRnWT9f58QRn9gcW3hFQfv3hiYE+8XXhDSuiB/VM2Zq+LPf3Qxe3Ahowz
 qWXwz2xo5bIwmG1FzHT98vRQ5LdnQjjC+X6m1NgF9RSM0ohYDUsFnleiHK/oUCxzUDDz
 k5mfR38Kow3y/8HZjbw+KpL8klhr4YrDULztEg/hf+Sh0YtK98ULh0Dp38QOTrsxwp+Q
 Q3u5iBOyY5m74qGpnYWp77x7Tu5u/bvzId/hofQbOiuvL+PkF/yuAsTnYsDabD3Cy9PD
 kZEA==
X-Gm-Message-State: AOAM532b8nCTZOw7TLsddmfogrmnJcEfz1zcArpOZWaCCqWr4QJV6hKA
 RqkQqDJ7YiOkc/N8iXOTLlyKGQH0QlelsbXYW+w=
X-Google-Smtp-Source: ABdhPJysHLlZfOKGv6xFakU0zwsYHpphdLaC+QwvkTPAsD1DKrMZHBdjgWt7xXjXQ23jsIbpf+qT2AhQ4uRAgVD8DGA=
X-Received: by 2002:a05:6808:1202:b0:2f9:c7b4:fd56 with SMTP id
 a2-20020a056808120200b002f9c7b4fd56mr15139oil.55.1651248290317; Fri, 29 Apr
 2022 09:04:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-22-gpiccoli@igalia.com>
In-Reply-To: <20220427224924.592546-22-gpiccoli@igalia.com>
From: Max Filippov <jcmvbkbc@gmail.com>
Date: Fri, 29 Apr 2022 09:04:39 -0700
Message-ID: <CAMo8BfKzA+oy-Qun9-aO3xCr4Jy_rfdjYqMX=W9xONCSX8O51Q@mail.gmail.com>
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 27, 2022 at 3:55 PM Guilherme G. Piccoli wrote:
 > > This patch renames the panic_notifier_list to panic_pre_reboot_list;
 > the idea is that a subsequent patch will refactor the panic pat [...] 
 Content analysis details:   (1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 HK_RANDOM_FROM         From username looks random
 1.0 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.5 FROM_LOCAL_NOVOWEL     From: localpart has series of non-vowel
 letters
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jcmvbkbc[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.171 listed in list.dnswl.org]
X-Headers-End: 1nkT72-0002VB-F5
X-Mailman-Approved-At: Fri, 29 Apr 2022 17:44:02 +0000
Subject: Re: [Openipmi-developer] [PATCH 21/30] panic: Introduce the panic
 pre-reboot notifier list
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
 Paul Mackerras <paulus@samba.org>, Pavel Machek <pavel@ucw.cz>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, stern@rowland.harvard.edu,
 xen-devel@lists.xenproject.org, Matt Turner <mattst88@gmail.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Petr Mladek <pmladek@suse.com>, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, Andrew Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Richard Henderson <rth@twiddle.net>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>, d.hatayama@jp.fujitsu.com,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-hyperv@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Helge Deller <deller@gmx.de>, vgoyal@redhat.com,
 Sven Schnelle <svens@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 john.ogness@linutronix.de, coresight@lists.linaro.org,
 hidehiro.kawai.ez@hitachi.com, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Tony Luck <tony.luck@intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 James Morse <james.morse@arm.com>, kernel-dev@igalia.com,
 fabiomirmar@gmail.com, halves@canonical.com, alejandro.j.jimenez@oracle.com,
 feng.tang@intel.com, Will Deacon <will@kernel.org>, bhe@redhat.com,
 Jonathan Corbet <corbet@lwn.net>, Dexuan Cui <decui@microsoft.com>,
 bcm-kernel-feedback-list@broadcom.com, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Steven Rostedt <rostedt@goodmis.org>, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "open list:PARISC ARCHITECTURE" <linux-parisc@vger.kernel.org>,
 "open list:ALPHA PORT" <linux-alpha@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, linux-remoteproc@vger.kernel.org,
 mikelley@microsoft.com, "H. Peter Anvin" <hpa@zytor.com>,
 "open list:SPARC + UltraSPAR..." <sparclinux@vger.kernel.org>,
 linux-leds@vger.kernel.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Richard Weinberger <richard@nod.at>,
 "maintainer:X86 ARCHITECTURE..." <x86@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, dyoung@redhat.com, paulmck@kernel.org,
 Heiko Carstens <hca@linux.ibm.com>, linux-tegra@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Johannes Berg <johannes@sipsolutions.net>, linux-edac@vger.kernel.org,
 jgross@suse.com, netdev <netdev@vger.kernel.org>, kernel@gpiccoli.net,
 kexec@lists.infradead.org, linux-mips@vger.kernel.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Apr 27, 2022 at 3:55 PM Guilherme G. Piccoli
<gpiccoli@igalia.com> wrote:
>
> This patch renames the panic_notifier_list to panic_pre_reboot_list;
> the idea is that a subsequent patch will refactor the panic path
> in order to better split the notifiers, running some of them very
> early, some of them not so early [but still before kmsg_dump()] and
> finally, the rest should execute late, after kdump. The latter ones
> are now in the panic pre-reboot list - the name comes from the idea
> that these notifiers execute before panic() attempts rebooting the
> machine (if that option is set).
>
> We also took the opportunity to clean-up useless header inclusions,
> improve some notifier block declarations (e.g. in ibmasm/heartbeat.c)
> and more important, change some priorities - we hereby set 2 notifiers
> to run late in the list [iss_panic_event() and the IPMI panic_event()]
> due to the risks they offer (may not return, for example).
> Proper documentation is going to be provided in a subsequent patch,
> that effectively refactors the panic path.

[...]

>  arch/xtensa/platforms/iss/setup.c     |  4 ++--For xtensa:

For xtensa:
Acked-by: Max Filippov <jcmvbkbc@gmail.com>

-- 
Thanks.
-- Max


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
