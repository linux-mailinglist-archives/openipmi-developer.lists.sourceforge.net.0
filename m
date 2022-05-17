Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C9E529FE2
	for <lists+openipmi-developer@lfdr.de>; Tue, 17 May 2022 12:58:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nquuN-0002uG-4O; Tue, 17 May 2022 10:58:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pmladek@suse.com>) id 1nquuL-0002uA-Mv
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 10:58:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UpU3PwW0+vEopHT6mwlEtKZnt5vjcj6K5z6p2RvwFDI=; b=aIvVHTiykSK1KFzUU1rfSurXzi
 Rj2SwlCK/QLqTv49FF2dEXNsbAclpYYsfG2Kzbsslbanm5XK/iznXunCGU+QIPBiQE9GEg3XY5vit
 aNOme8Z78EidabSqGPx0OIY1od3bcb13eYvftX6aOppvdpTKjY0nvNZvqCox3SwZfQsQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UpU3PwW0+vEopHT6mwlEtKZnt5vjcj6K5z6p2RvwFDI=; b=NBy0HBK1mBPcRs9WjOXCfgyF9h
 r6+mcwEBY+jK/Es+3SwS0/Frt0vOB/XlIBl9Va4tV7Mt/Fn45fx0DVTHklM3SqQZMy2J4QJzytRAx
 ONxrdM9vFTLvRtP01ssje8rVEmmP1S0ql3Ai4KCzIG17dtmoOM52lS6rFYBgEBoGe8BQ=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nquuJ-003grA-R0
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 10:58:28 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id 97ABB21CB1;
 Tue, 17 May 2022 10:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1652785097; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UpU3PwW0+vEopHT6mwlEtKZnt5vjcj6K5z6p2RvwFDI=;
 b=A62HHwy96rt3Peh/2oQoJb/W5OQ8Z85j1RGtcSopCMAn7XlytDk/24zuEW9Tpga7/Yq/ue
 yQKQnkJYG61eGpGqLTfCCGX/srVGllxHF23XScgduJU8Byym34HyS4Bk1MWh3Z8Rwo0Y9Q
 s5hDkQjh35sYKTX8Zcjp7xwrzg3RpvU=
Received: from suse.cz (unknown [10.100.201.202])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 5CD572C141;
 Tue, 17 May 2022 10:58:15 +0000 (UTC)
Date: Tue, 17 May 2022 12:58:15 +0200
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Message-ID: <YoN/x2fpdDU4+nSB@alley>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-6-gpiccoli@igalia.com>
 <YnpXGOXicwdy1E6n@alley>
 <0a20dd06-f459-638e-cb4d-8255ab1a1f23@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a20dd06-f459-638e-cb4d-8255ab1a1f23@igalia.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 2022-05-10 10:00:58, Guilherme G. Piccoli wrote: >
 On 10/05/2022 09:14, Petr Mladek wrote: > > [...] > >> With that said, it's
 dangerous to use regular spinlocks in such path, > >> as introduce [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nquuJ-003grA-R0
Subject: Re: [Openipmi-developer] [PATCH 05/30] misc/pvpanic: Convert
 regular spinlock into trylock on panic path
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
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, zhenwei pi <pizhenwei@bytedance.com>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 Mihai Carabas <mihai.carabas@oracle.com>, coresight@lists.linaro.org,
 Shile Zhang <shile.zhang@linux.alibaba.com>, linux-um@lists.infradead.org,
 rostedt@goodmis.org, rcu@vger.kernel.org,
 Wang ShaoBo <bobo.shaobowang@huawei.com>, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue 2022-05-10 10:00:58, Guilherme G. Piccoli wrote:
> On 10/05/2022 09:14, Petr Mladek wrote:
> > [...]
> >> With that said, it's dangerous to use regular spinlocks in such path,
> >> as introduced by commit b3c0f8774668 ("misc/pvpanic: probe multiple instances").
> >> This patch fixes that by replacing regular spinlocks with the trylock
> >> safer approach.
> > 
> > It seems that the lock is used just to manipulating a list. A super
> > safe solution would be to use the rcu API: rcu_add_rcu() and
> > list_del_rcu() under rcu_read_lock(). The spin lock will not be
> > needed and the list will always be valid.
> > 
> > The advantage would be that it will always call members that
> > were successfully added earlier. That said, I am not familiar
> > with pvpanic and am not sure if it is worth it.
> > 
> >> It also fixes an old comment (about a long gone framebuffer code) and
> >> the notifier priority - we should execute hypervisor notifiers early,
> >> deferring this way the panic action to the hypervisor, as expected by
> >> the users that are setting up pvpanic.
> > 
> > This should be done in a separate patch. It changes the behavior.
> > Also there might be a discussion whether it really should be
> > the maximal priority.
> > 
> > Best Regards,
> > Petr
> 
> Thanks for the review Petr. Patch was already merged - my goal was to be
> concise, i.e., a patch per driver / module, so the patch kinda fixes
> whatever I think is wrong with the driver with regards panic handling.
> 
> Do you think it worth to remove this patch from Greg's branch just to
> split it in 2? Personally I think it's not worth, but opinions are welcome.

No problem. It is not worth the effort.


> About the RCU part, this one really could be a new patch, a good
> improvement patch - it makes sense to me, we can think about that after
> the fixes I guess.

Yup.

Best Regards,
Petr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
