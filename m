Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2DD51B08E
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 May 2022 23:27:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nmMXF-0002YP-57; Wed, 04 May 2022 21:27:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nmMXD-0002YI-Gh
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 21:27:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dpN78FnXP8xKsKthCe3ePYGrznnidWC78ijJKGIis+s=; b=jsuJtEukRgDVaONIoyT+peSfTa
 dI92IoYR43mPb98uSve3xGx8dy7C5o3M5sQMrryMdfrE+M5PKWp0htsErXKwhMAVkkAY8OVlPv33L
 8SxWfba6+HDZGDu33X7CEb5afM9ct+tNJaHyGXZbJcNd+lze+UX6Vpr16MZ9XWT3TDLk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dpN78FnXP8xKsKthCe3ePYGrznnidWC78ijJKGIis+s=; b=jSuT4KlqdzJvFPOkU5ifLjYfjE
 +2cVc71sbgi5zKq0xOQx5aRe81kxLSa1HTPt9eEVu1zmOLxrhmz/9X0fTwLhDXXS/fLIcQr+HoZcD
 ER0FqF2bcbBEae16D0dVWl1vptYNVymhBMUpwVz7w/OvBZ7YdHTCukPCDYTM5+2y+IVg=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nmMX6-00041K-Bh
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 21:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dpN78FnXP8xKsKthCe3ePYGrznnidWC78ijJKGIis+s=; b=VzNshjcWDWgTdIjmwACWbnjJ/H
 mQcB13lNG3fglzHQC/FUqdo2dvwKWsRAKNIc/TJuBa97Z8kYuf2lpVRvpBu62ga3ovDrsi08aDNiE
 OlqogXHjD4qsmKbgS2LbXN2AOGnhdCvdtCVo6IDt0imworVavUuV/zNlIT6mNaTQhnLm07TNtoK4m
 Ihl3ULKYuFP6cuYPQF485CZFlEA6oPcsLGDcH0IfHz/dstflDSmqrZB+ksN5MQ7uiQlVVpBT+K7Ib
 0RM9kXieFgdNepPjq9LySneGSuViPcHimXjyBUf5+knfLf159kvuFYr1c8xkwmLdvzZ/p8/HjZAHo
 dOADxIVQ==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nmMWW-0004FF-4B; Wed, 04 May 2022 23:27:04 +0200
Message-ID: <976c2d62-09e7-9f8d-d978-12749a2f70e6@igalia.com>
Date: Wed, 4 May 2022 18:26:28 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-8-gpiccoli@igalia.com>
 <20220504203224.GA23475@alpha.franken.de>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <20220504203224.GA23475@alpha.franken.de>
X-Spam-Score: -2.7 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 04/05/2022 17:32, Thomas Bogendoerfer wrote: > [...] >
 > applied to mips-next. > > Thomas. > Thanks a bunch Thomas =) 
 Content analysis details:   (-2.7 points, 6.0 required)
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
 -2.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nmMX6-00041K-Bh
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
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, gregkh@linuxfoundation.org, bp@alien8.de, luto@kernel.org,
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

On 04/05/2022 17:32, Thomas Bogendoerfer wrote:
> [...]
> 
> applied to mips-next.
> 
> Thomas.
> 

Thanks a bunch Thomas =)


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
