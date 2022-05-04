Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BF451AF36
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 May 2022 22:33:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nmLgV-0002Ma-8k; Wed, 04 May 2022 20:33:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tsbogend@alpha.franken.de>) id 1nmLgT-0002MT-5E
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 20:33:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+BAVkV4JgD6DVKyubqandN1nTOEg9mOlAk0+1mgTBDU=; b=YJYVhrloWqmFG89x+8K9xsdMUt
 MGDKam6k4kKo+c1bqwutA0O9dn0uELgumimdqh4uEbOMW0ByRdfKxvWmhbxUbw59u1xnhtyYVv2Pn
 6PWOhS/1ULZcMgzZq31CgtyuWRjEASPbI5ZDzyXGQY0mjebCqZS6J2XUg8x5Oo9sYi/M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+BAVkV4JgD6DVKyubqandN1nTOEg9mOlAk0+1mgTBDU=; b=UYq3Piya3e9j5meb6hVIZD7eRh
 wPSUNuhy+uVv3XkaW4nGE9OSUoDrH1WEVrMt2jji09ic0SqbX5UemDtMcr2ybKOqJ4jKrPPs8Vm4Q
 NgVSBWQAy2zCalmfhMIx9WdZlG2nu64tMzNhH08LWmS/ox5BzgdfuBWW24UDsI0rZNGg=;
Received: from elvis.franken.de ([193.175.24.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nmLgQ-001RGI-C7
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 20:33:15 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1nmLg4-0003MI-01; Wed, 04 May 2022 22:32:52 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
 id B9C09C01D0; Wed,  4 May 2022 22:32:24 +0200 (CEST)
Date: Wed, 4 May 2022 22:32:24 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Message-ID: <20220504203224.GA23475@alpha.franken.de>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-8-gpiccoli@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427224924.592546-8-gpiccoli@igalia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 27, 2022 at 07:49:01PM -0300,
 Guilherme G. Piccoli
 wrote: > Many other place in the kernel prefer the latter, so let's keep
 > it consistent in MIPS code as well. Also, removes a useless he [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [193.175.24.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1nmLgQ-001RGI-C7
Subject: Re: [Openipmi-developer] [PATCH 07/30] mips: ip22: Reword PANICED
 to PANICKED and remove useless header
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
 linux-xtensa@linux-xtensa.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, pmladek@suse.com,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, coresight@lists.linaro.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 gregkh@linuxfoundation.org, bp@alien8.de, luto@kernel.org,
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

On Wed, Apr 27, 2022 at 07:49:01PM -0300, Guilherme G. Piccoli wrote:
> Many other place in the kernel prefer the latter, so let's keep
> it consistent in MIPS code as well. Also, removes a useless header.
> 
> Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
> ---
>  arch/mips/sgi-ip22/ip22-reset.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
