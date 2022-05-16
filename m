Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4154A5289B7
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 May 2022 18:09:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqdHV-0001KU-Od; Mon, 16 May 2022 16:09:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nqdHT-0001KI-Sa
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:09:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GMtpV7L0kGUwGya4swBOPC8ZOVfItfrxYDvgMpAmkJQ=; b=eJb4N8kpf0EdcFxQdENQROyGiV
 DXObLyirl9dXEsnppVg41jKoGhpCX4EcP9DRqDkJ4ll18nmZ71+xwJvtTzUxUvEH0Xw0VwwC1JPvr
 K18fwh6MEhwrR33AkWi5mUEfrImj9drtx1eYwZHNs4gMbDR8SefOt8XJInJjMLhExgPM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GMtpV7L0kGUwGya4swBOPC8ZOVfItfrxYDvgMpAmkJQ=; b=kaAfIySaBUssGz55wcnxdcmRYJ
 SXkc5vqFg0JavgCt1A7qeBQcZQEBznDQOu7xDc9BsFmWPO2Rn839vwpU+D7sBWyV3lYyXa3pz/Hzp
 nwfTQV7vmucxePeeSR1JGWQLvPQbdLU6pI5t2HRboXn9bPkwU2nhCdNqjmW5LsQbgChw=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nqdHR-0003lb-JE
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:09:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GMtpV7L0kGUwGya4swBOPC8ZOVfItfrxYDvgMpAmkJQ=; b=mu0bEGyUCfuWuU1+3MGwpfSVuq
 s6/6eTwkcMLsn+hqh74arIfl7IvjJUFkkA8WCdLFr55WWGsb4tEiMy/+3c9yyNaTe26kJ467c7Aa+
 OVcjrOHxswFanqY90Yd7eenIDB3EwcpTVl3dOD010KynXuUWSiabOa/xgPRFmboMRGQYor+jwG1Cv
 mj7+eVkhBj2Q43ts9jeuWbjXw4tm3Jz5FqLPOTC5pNe5ykFg2VnMrebedEuX2X8Dc6Z0wdLCGwMFU
 8xiaC4NGK1X9iOa8nP8hSMfwLdqMEw0xpnZedCTljeij+zSzzN7p5ST6lBhkCoAPIOrm2lBlmeS/R
 fNRTCdfQ==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nqdH5-006sEZ-4a; Mon, 16 May 2022 18:08:47 +0200
Message-ID: <cfc89eba-1079-6c80-4806-1fb8af1404f1@igalia.com>
Date: Mon, 16 May 2022 13:08:15 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-23-gpiccoli@igalia.com> <YoJjpBrz34QO+rn9@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoJjpBrz34QO+rn9@alley>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 16/05/2022 11:45, Petr Mladek wrote: > [...] > > The patch
 looks good to me. I would just suggest two changes. > > 1. I would rename
 the list to "panic_loop_list" instead of > "panic_post_reboot_li [...] 
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
X-Headers-End: 1nqdHR-0003lb-JE
Subject: Re: [Openipmi-developer] [PATCH 22/30] panic: Introduce the panic
 post-reboot notifier list
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
 sparclinux@vger.kernel.org, Alexander Gordeev <agordeev@linux.ibm.com>,
 will@kernel.org, tglx@linutronix.de, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org, fabiomirmar@gmail.com,
 x86@kernel.org, mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, dyoung@redhat.com,
 vgoyal@redhat.com, Sven Schnelle <svens@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 vkuznets@redhat.com, linux-edac@vger.kernel.org, jgross@suse.com,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 16/05/2022 11:45, Petr Mladek wrote:
> [...]
> 
> The patch looks good to me. I would just suggest two changes.
> 
> 1. I would rename the list to "panic_loop_list" instead of
>    "panic_post_reboot_list".
> 
>    It will be more clear that it includes things that are
>    needed before panic() enters the infinite loop.
> 
> 
> 2. I would move all the notifiers that enable blinking here.
> 
>    The blinking should be done only during the infinite
>    loop when there is nothing else to do. If we enable
>    earlier then it might disturb/break more important
>    functionality (dumping information, reboot).
> 

Perfect, I agree with you. I'll change both points in V2 =)


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
