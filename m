Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8FD517335
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 May 2022 17:49:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nlYIC-0006Es-FT; Mon, 02 May 2022 15:48:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nlYI9-0006El-C4
 for openipmi-developer@lists.sourceforge.net; Mon, 02 May 2022 15:48:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lSY7Wy5DSWONSGouYm7Vnq+8PpTXyI6/GSbK7cQgCdQ=; b=cWab/ccKp2BLrFOF4JoGF6eE6W
 vGBbCsB34cu0yORgmEu7SyoMnagsOa46E9fMoq6SPBVhEnxGfn2DeKbVS3F5GAdB+96eaSGZCx+fu
 +9iExRK2Xo6fEBq+qDOQzuoKa6Pr1VRAQzJdhWXcblDHOv5z/+Gc5KPEZ5a/+ork22YA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lSY7Wy5DSWONSGouYm7Vnq+8PpTXyI6/GSbK7cQgCdQ=; b=ONcNBtfj1KqgFOXocdvspSYU7n
 U7HMA4h0ETjOm0OBYlfjUBfRfjp7nJ9E2DEwnFDK+wNwYH0rka5MqMLcmylvvwJmvgnQ8M2heiVkH
 HEjJ0a9L7AGHyeKiwUE7yjODz3rvbpRUNjqAgYM6JyM8JxMEL1Hc9bwVPP2JiEY/oGnc=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nlYI5-00016m-Id
 for openipmi-developer@lists.sourceforge.net; Mon, 02 May 2022 15:48:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lSY7Wy5DSWONSGouYm7Vnq+8PpTXyI6/GSbK7cQgCdQ=; b=RlBNIlGd1Uln2EauUT9Bs8LHDK
 lsVxakNgNxOntg3zLwYjCz6zOIS7+wkzSqZEsUYLo84tU2IRVM3hBykPTK2LYoUlT7/mcdyUpbUFn
 8zsviqZPpC67uRPZkrddN0YT9DyHem+ksVhTVubBHX9U/sp2ORRnik8vQd9AygK72JtMh2IYdh8l4
 tTpjZfKpvJI67kl00fIHJVuD+e4FxpA6/fe+9WzqT6PUlM32LuzphP5qVuRzYjTVTCNB0OrF3F4Xd
 tFHwZ3zAtgZeXLXoEMwxv3kOugrwYBERBngMA0b8PvfrRDptBdxsqHAO3vzW13Xb6GPVwUXCxoyeQ
 X1mlzNhw==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nlYHE-0006n9-M1; Mon, 02 May 2022 17:47:57 +0200
Message-ID: <baf65246-a012-93ad-1ba0-6c6d67e501b5@igalia.com>
Date: Mon, 2 May 2022 12:47:22 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Florian Fainelli <f.fainelli@gmail.com>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-7-gpiccoli@igalia.com>
 <a02821ab-db4f-5bff-2a98-7d74032a0652@gmail.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <a02821ab-db4f-5bff-2a98-7d74032a0652@gmail.com>
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 02/05/2022 12:38,
 Florian Fainelli wrote: > [...] > Acked-by:
 Florian Fainelli <f.fainelli@gmail.com> > > Likewise, I am not sure if the
 Fixes tag is necessary here. Perfect Florian, thanks! I'll add your Acked-by
 tag and remove the fixes for V2 =) Cheers, 
 Content analysis details:   (-1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nlYI5-00016m-Id
Subject: Re: [Openipmi-developer] [PATCH 06/30] soc: bcm: brcmstb: Document
 panic notifier action and remove useless header
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
 Markus Mayer <mmayer@broadcom.com>, gregkh@linuxfoundation.org,
 peterz@infradead.org, alejandro.j.jimenez@oracle.com,
 linux-remoteproc@vger.kernel.org, feng.tang@intel.com,
 linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 Justin Chen <justinpopo6@gmail.com>, sparclinux@vger.kernel.org,
 will@kernel.org, tglx@linutronix.de, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, Doug Berger <opendmb@gmail.com>,
 mikelley@microsoft.com, john.ogness@linutronix.de, corbet@lwn.net,
 paulmck@kernel.org, fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, Lee Jones <lee.jones@linaro.org>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 Brian Norris <computersforpeace@gmail.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 02/05/2022 12:38, Florian Fainelli wrote:
> [...] 
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> Likewise, I am not sure if the Fixes tag is necessary here.

Perfect Florian, thanks!  I'll add your Acked-by tag and remove the
fixes for V2 =)
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
