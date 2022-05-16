Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB66528705
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 May 2022 16:29:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqbjH-0003ng-MW; Mon, 16 May 2022 14:29:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nqbjE-0003nH-3h
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 14:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dr1+fxlRa10p1m+vrzAuj1y5TNI2rJf4d/f63MyjB+M=; b=QrZke5FKbsIOQN3aMGzcgj5aUQ
 bNaL66iAoNbaTAHNB1+uaAP4FKaAwuwx9v1u2RlXi/+1uGxzi1V+aXKFbvqj1Udyui9fK9MMQKLVc
 HVrCu89KNHllm1t/j8WH0vRSzTNOJk5Ywb7EqHYoQUsPhRPnSN5rQMENi1BP/dNTlZqk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dr1+fxlRa10p1m+vrzAuj1y5TNI2rJf4d/f63MyjB+M=; b=LXffwvlLIdKS+zn6Fz/GmvwIGE
 G22Y7z6d9LfxVR4IH7guwJcXnJ3crwjH5f0nhg+stUp9K6lqdxG17BH6lKPq5onfFV65uP1+uX3Pp
 lBl9OwOZB85Hpt7eM7Lw3xifUVOp2pzh+fJYb6aE8g0DgXficvcOn4kIPzrh2wjaxudc=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nqbjA-00HE0I-4o
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 14:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dr1+fxlRa10p1m+vrzAuj1y5TNI2rJf4d/f63MyjB+M=; b=fYzY4ecO4EXD3ATClVXmZ0bJur
 Dv8wK0czHKvUOBFU8VuldwMBw90SyqpgmdhMVGQ8nXO736KAANyIsoQXQP33B+3yyoD0JCNk+aqdE
 wV4BChThAKeGVlTD0SJGL4Vxo4e8WEaw/u07Aef0GJ4zliM2Txb1MiVoO17nGrOaES7KtCdKD9gb0
 sGHl/FYmvmjU5t6Sh9/lpO3xyoHOnkZh2Wlu5eWU81axQTiGRY/vWICGCkOGZAWHyJcpjaIpuAOez
 xXU+abi85zQz75A1GTgWOD+LFSEreERO76kWgkEOfnkbC3cJ3TOsglz2ZOZKp2XuFNlT0F2Yx1p5e
 +2fZkv1A==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nqbiH-006jqF-NN; Mon, 16 May 2022 16:28:45 +0200
Message-ID: <c6a55df0-11f5-21ae-8a61-b37141d2436b@igalia.com>
Date: Mon, 16 May 2022 11:28:10 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-21-gpiccoli@igalia.com> <YoJbeuTNBXOIypSH@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoJbeuTNBXOIypSH@alley>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 16/05/2022 11:11,
 Petr Mladek wrote: > [...] > > All notifiers
 moved in this patch seems to fit well the "info" > notifier list. The patch
 looks good from this POV. > > I still have to review the r [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nqbjA-00HE0I-4o
Subject: Re: [Openipmi-developer] [PATCH 20/30] panic: Add the panic
 informational notifier list
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, Joel Fernandes <joel@joelfernandes.org>,
 linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 Thierry Reding <thierry.reding@gmail.com>, Paul Mackerras <paulus@samba.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, mikelley@microsoft.com,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, Jonathan Hunter <jonathanh@nvidia.com>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 Catalin Marinas <catalin.marinas@arm.com>, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, Mike Leach <mike.leach@linaro.org>,
 linux-xtensa@linux-xtensa.org, Neeraj Upadhyay <quic_neeraju@quicinc.com>,
 dave.hansen@linux.intel.com, Mikko Perttunen <mperttunen@nvidia.com>,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>, Leo Yan <leo.yan@linaro.org>,
 linux-um@lists.infradead.org, Josh Triplett <josh@joshtriplett.org>,
 rostedt@goodmis.org, rcu@vger.kernel.org, bp@alien8.de,
 Nicholas Piggin <npiggin@gmail.com>, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 Hari Bathini <hbathini@linux.ibm.com>, linux-edac@vger.kernel.org,
 jgross@suse.com, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 16/05/2022 11:11, Petr Mladek wrote:
> [...]
> 
> All notifiers moved in this patch seems to fit well the "info"
> notifier list. The patch looks good from this POV.
> 
> I still have to review the rest of the patches to see if it
> is complete.
> 
> Best Regards,
> Petr

Thanks a bunch for the review =)


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
