Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8C0521C21
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 May 2022 16:28:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1noQqq-0002Z8-TW; Tue, 10 May 2022 14:28:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pmladek@suse.com>) id 1noQqp-0002Z2-Rt
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 14:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5Vk/8pdLWJKvC1pkcnRQ/HwoU2ABECojPYTjSUx9JWI=; b=bFt9kaCsq/ZEYqdi98Pm6PgS3a
 5KjopNudRCX9D1lPpavxSVu5esBN4nkcYDHTlBNbazPYIn7Q7j66ItEmmrroAg8yNpVo8LtO7QWMP
 CpRi2naqWEghY4UouLbAKN3ZaACOlrOYqxNfb55xhpzqXLDkcHebukYb2jxA3OOwhWjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5Vk/8pdLWJKvC1pkcnRQ/HwoU2ABECojPYTjSUx9JWI=; b=F8USCn/cgOBXJQsQf+5qIU9kcY
 T1uUQ1jDgaQ2myqC5XddCk01Ifnz9F+YJAL/SIhmVNTlsmFXUHQ7gsulN7H7eaYqKCxgJLK6hFyul
 /L1r802TFpNFE5mjNiK0rtf0O6mhn4QlOTcLQsPX90zc1bT9192nzyYE3a9r65FbKnMg=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1noQqm-007qHn-PP
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 14:28:34 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id 3A80421AAF;
 Tue, 10 May 2022 14:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1652192903; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5Vk/8pdLWJKvC1pkcnRQ/HwoU2ABECojPYTjSUx9JWI=;
 b=qCuBe8399OKc/XhS2YM19THr9x0w+LK3v0+yrYrVMx1O5y8bO2nhr7ld/xwzdNWpoeMnQv
 KDbf9vzeiGs4Zk4jc5/KyT1Cq3WiPlflRqYiR6m11RKyyC/hq4LcZ09p+y2XB4Mv583rFK
 /mj4yXQtU5XfZ45MAwfj3oDOrq6/m9Q=
Received: from suse.cz (unknown [10.100.208.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 344FF2C141;
 Tue, 10 May 2022 14:28:22 +0000 (UTC)
Date: Tue, 10 May 2022 16:28:21 +0200
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Message-ID: <Ynp2hRodh04K3pzK@alley>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-12-gpiccoli@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427224924.592546-12-gpiccoli@igalia.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 2022-04-27 19:49:05, Guilherme G. Piccoli wrote: >
 Currently the panic notifiers from user mode linux don't follow > the
 convention
 for most of the other notifiers present in the > kernel (inde [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
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
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
X-Headers-End: 1noQqm-007qHn-PP
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
From: Petr Mladek via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Petr Mladek <pmladek@suse.com>
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org, fabiomirmar@gmail.com,
 Johannes Berg <johannes@sipsolutions.net>, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, coresight@lists.linaro.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed 2022-04-27 19:49:05, Guilherme G. Piccoli wrote:
> Currently the panic notifiers from user mode linux don't follow
> the convention for most of the other notifiers present in the
> kernel (indentation, priority setting, numeric return).
> More important, the priorities could be improved, since it's a
> special case (userspace), hence we could run the notifiers earlier;
> user mode linux shouldn't care much with other panic notifiers but
> the ordering among the mconsole and arch notifier is important,
> given that the arch one effectively triggers a core dump.

It is not clear to me why user mode linux should not care about
the other notifiers. It might be because I do not know much
about the user mode linux.

Is the because they always create core dump or are never running
in a hypervisor or ...?

AFAIK, the notifiers do many different things. For example, there
is a notifier that disables RCU watchdog, print some extra
information. Why none of them make sense here?

> This patch fixes that by running the mconsole notifier as the first
> panic notifier, followed by the architecture one (that coredumps).
> Also, we remove a useless header inclusion.


Best Regards,
Petr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
